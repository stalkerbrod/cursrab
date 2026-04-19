-- ОЧИЩЕННЯ БАЗИ ДАНИХ
-- Використовуємо CASCADE CONSTRAINTS для безпечного видалення зв'язків.
-- (При першому запуску помилки ORA-00942 є очікуваними та безпечними)
drop table tax_assessment cascade constraints;
drop table land_plot cascade constraints;
drop table employee cascade constraints;
drop table owner cascade constraints;
drop table land_type cascade constraints;
drop table street cascade constraints;
drop table settlement cascade constraints;
drop table postal_code cascade constraints;
drop table region cascade constraints;

-- ОЧИЩЕННЯ СЛУЖБОВИХ ОБ'ЄКТІВ АВТОГЕНЕРАЦІЇ PK
-- (Ігноруємо помилки, якщо об'єкт ще не існує)
begin
   execute immediate 'drop trigger trg_region_bi';
exception
   when others then
      if sqlcode != -4080 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop trigger trg_postal_code_bi';
exception
   when others then
      if sqlcode != -4080 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop trigger trg_settlement_bi';
exception
   when others then
      if sqlcode != -4080 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop trigger trg_street_bi';
exception
   when others then
      if sqlcode != -4080 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop trigger trg_land_type_bi';
exception
   when others then
      if sqlcode != -4080 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop trigger trg_employee_bi';
exception
   when others then
      if sqlcode != -4080 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop trigger trg_owner_bi';
exception
   when others then
      if sqlcode != -4080 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop trigger trg_tax_assessment_bi';
exception
   when others then
      if sqlcode != -4080 then
         raise;
      end if;
end;
/

begin
   execute immediate 'drop sequence seq_region';
exception
   when others then
      if sqlcode != -2289 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop sequence seq_postal_code';
exception
   when others then
      if sqlcode != -2289 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop sequence seq_settlement';
exception
   when others then
      if sqlcode != -2289 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop sequence seq_street';
exception
   when others then
      if sqlcode != -2289 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop sequence seq_land_type';
exception
   when others then
      if sqlcode != -2289 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop sequence seq_employee';
exception
   when others then
      if sqlcode != -2289 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop sequence seq_owner';
exception
   when others then
      if sqlcode != -2289 then
         raise;
      end if;
end;
/
begin
   execute immediate 'drop sequence seq_tax_assessment';
exception
   when others then
      if sqlcode != -2289 then
         raise;
      end if;
end;
/

-- СТВОРЕННЯ ДОВІДКОВИХ ТАБЛИЦЬ

-- Довідник областей

create table region (
   id_region   number primary key,
   region_name varchar2(100) not null
);

-- Довідник поштових індексів
create table postal_code (
   id_postal_code number primary key,
   code           varchar2(20) not null
);

-- Довідник населених пунктів
create table settlement (
   id_settlement   number primary key,
   settlement_name varchar2(100) not null
);

-- Довідник вулиць
create table street (
   id_street   number primary key,
   street_name varchar2(100) not null
);

-- Довідник типів земель та базових ставок
create table land_type (
   id_type  number primary key,
   tax_rate number(10,2) not null
);

-- Довідник працівників, що формують нарахування
create table employee (
   id_employee number primary key,
   full_name   varchar2(150) not null,
   position    varchar2(100)
);

-- СТВОРЕННЯ ОСНОВНИХ ТАБЛИЦЬ 

-- Власники земельних ділянок
create table owner (
   id_owner        number primary key,
   last_name       varchar2(50) not null,
   first_name      varchar2(50) not null,
   middle_name     varchar2(50),
   passport_number varchar2(20) unique,
   phone           varchar2(20),
   tax_code        varchar2(20) unique
);

-- Земельні ділянки з адресними та класифікаційними посиланнями
create table land_plot (
   plot_number        varchar2(50) primary key,
   id_owner           number not null,
   id_type            number not null,
   length             number(10,2),
   width              number(10,2),
   id_region          number,
   id_postal_code     number,
   id_settlement      number,
   id_street          number,
   street_plot_number varchar2(20)
);

-- Нарахування податку по земельних ділянках
create table tax_assessment (
   id_assessment  number primary key,
   plot_number    varchar2(50) not null,
   id_employee    number,
   date_formed    date not null,
   date_delivered date,
   date_paid      date,
   tax_amount     number(10,2) not null,
   status         varchar2(50) default 'Не сплачено',
   penalty        number(10,2) default 0
);

-- АВТОЗАПОВНЕННЯ PK: УСІ ОБ'ЄКТИ В ОДНОМУ МІСЦІ
-- Принцип роботи: якщо PK не вказано або передано NULL, тригер підставляє значення з sequence.

-- БЛОК 1: ПОСЛІДОВНОСТІ ДЛЯ PK
create sequence seq_region start with 1 increment by 1 nocache;
create sequence seq_postal_code start with 1 increment by 1 nocache;
create sequence seq_settlement start with 1 increment by 1 nocache;
create sequence seq_street start with 1 increment by 1 nocache;
create sequence seq_land_type start with 1 increment by 1 nocache;
create sequence seq_employee start with 1 increment by 1 nocache;
create sequence seq_owner start with 1 increment by 1 nocache;
create sequence seq_tax_assessment start with 1 increment by 1 nocache;

-- БЛОК 2: ТРИГЕРИ ДЛЯ АВТОПРИСВОЄННЯ PK
create or replace trigger trg_region_bi
before insert on region
for each row
begin
   if :new.id_region is null then
      select seq_region.nextval into :new.id_region from dual;
   end if;
end;
/

create or replace trigger trg_postal_code_bi
before insert on postal_code
for each row
begin
   if :new.id_postal_code is null then
      select seq_postal_code.nextval into :new.id_postal_code from dual;
   end if;
end;
/

create or replace trigger trg_settlement_bi
before insert on settlement
for each row
begin
   if :new.id_settlement is null then
      select seq_settlement.nextval into :new.id_settlement from dual;
   end if;
end;
/

create or replace trigger trg_street_bi
before insert on street
for each row
begin
   if :new.id_street is null then
      select seq_street.nextval into :new.id_street from dual;
   end if;
end;
/

create or replace trigger trg_land_type_bi
before insert on land_type
for each row
begin
   if :new.id_type is null then
      select seq_land_type.nextval into :new.id_type from dual;
   end if;
end;
/

create or replace trigger trg_employee_bi
before insert on employee
for each row
begin
   if :new.id_employee is null then
      select seq_employee.nextval into :new.id_employee from dual;
   end if;
end;
/

create or replace trigger trg_owner_bi
before insert on owner
for each row
begin
   if :new.id_owner is null then
      select seq_owner.nextval into :new.id_owner from dual;
   end if;
end;
/

create or replace trigger trg_tax_assessment_bi
before insert on tax_assessment
for each row
begin
   if :new.id_assessment is null then
      select seq_tax_assessment.nextval into :new.id_assessment from dual;
   end if;
end;
/

-- ВСТАНОВЛЕННЯ ЗВ'ЯЗКІВ (ЗОВНІШНІ КЛЮЧІ)

-- Зв'язки таблиці land_plot з довідниками та власниками
alter table land_plot
   add constraint fk_plot_region foreign key ( id_region )
      references region ( id_region );
alter table land_plot
   add constraint fk_plot_postal foreign key ( id_postal_code )
      references postal_code ( id_postal_code );
alter table land_plot
   add constraint fk_plot_settlement foreign key ( id_settlement )
      references settlement ( id_settlement );
alter table land_plot
   add constraint fk_plot_street foreign key ( id_street )
      references street ( id_street );
alter table land_plot
   add constraint fk_plot_type foreign key ( id_type )
      references land_type ( id_type );
alter table land_plot
   add constraint fk_plot_owner foreign key ( id_owner )
      references owner ( id_owner );

-- Зв'язки таблиці tax_assessment з ділянками та працівниками
alter table tax_assessment
   add constraint fk_tax_plot foreign key ( plot_number )
      references land_plot ( plot_number );
alter table tax_assessment
   add constraint fk_tax_employee foreign key ( id_employee )
      references employee ( id_employee );

-- ДОДАВАННЯ ІНДЕКСІВ ДЛЯ ПОКРАЩЕННЯ ПРОДУКТИВНОСТІ

-- Індекси для зовнішніх ключів у таблиці Land_Plot
create index idx_land_plot_owner on
   land_plot (
      id_owner
   );
create index idx_land_plot_type on
   land_plot (
      id_type
   );
create index idx_land_plot_region on
   land_plot (
      id_region
   );
create index idx_land_plot_postal on
   land_plot (
      id_postal_code
   );
create index idx_land_plot_settlement on
   land_plot (
      id_settlement
   );
create index idx_land_plot_street on
   land_plot (
      id_street
   );

-- Індекси для зовнішніх ключів у таблиці Tax_Assessment
create index idx_tax_assessment_plot on
   tax_assessment (
      plot_number
   );
create index idx_tax_assessment_employee on
   tax_assessment (
      id_employee
   );

-- Індекси для часто запитуваних стовпців у таблиці Tax_Assessment
create index idx_tax_assessment_date_formed on
   tax_assessment (
      date_formed
   );
create index idx_tax_assessment_date_delivered on
   tax_assessment (
      date_delivered
   );
create index idx_tax_assessment_date_paid on
   tax_assessment (
      date_paid
   );
create index idx_tax_assessment_status on
   tax_assessment (
      status
   );

-- ДОДАВАННЯ КОМЕНТАРІВ ДО СТОВПЦІВ

comment on column region.region_name is
   'Назва області';
comment on column postal_code.code is
   'Поштовий індекс';
comment on column settlement.settlement_name is
   'Назва населеного пункту';
comment on column street.street_name is
   'Назва вулиці';
comment on column land_type.tax_rate is
   'грн/Га';
comment on column owner.last_name is
   'Прізвище';
comment on column owner.first_name is
   'Імʼя';
comment on column owner.middle_name is
   'По-батькові';
comment on column owner.passport_number is
   'Номер паспорту';
comment on column owner.phone is
   'Телефон';
comment on column owner.tax_code is
   'ІПН';
comment on column land_plot.plot_number is
   'Кадастровий номер';
comment on column land_plot.street_plot_number is
   'Номер ділянки в рамках вулиці';
comment on column tax_assessment.date_formed is
   'Дата формування';
comment on column tax_assessment.date_delivered is
   'Дата вручення';
comment on column tax_assessment.date_paid is
   'Дата сплати';
comment on column tax_assessment.status is
   'сплачено / не сплачено';
comment on column tax_assessment.penalty is
   'Пеня або Штраф за прострочення';