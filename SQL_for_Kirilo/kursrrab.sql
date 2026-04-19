-- Дані для заповнення таблиць курсової роботи
-- Порядок вставки враховує зовнішні ключі: довідники -> owner -> land_plot -> tax_assessment

-- Довідникові таблиці
-- Області
INSERT INTO region (region_name) VALUES ('Київська область');
INSERT INTO region (region_name) VALUES ('Львівська область');
INSERT INTO region (region_name) VALUES ('Харківська область');
INSERT INTO region (region_name) VALUES ('Одеська область');
INSERT INTO region (region_name) VALUES ('Дніпропетровська область');
INSERT INTO region (region_name) VALUES ('Вінницька область');
INSERT INTO region (region_name) VALUES ('Полтавська область');
INSERT INTO region (region_name) VALUES ('Чернігівська область');
INSERT INTO region (region_name) VALUES ('Волинська область');
INSERT INTO region (region_name) VALUES ('Закарпатська область');
INSERT INTO region (region_name) VALUES ('Івано-Франківська область');
INSERT INTO region (region_name) VALUES ('Тернопільська область');
INSERT INTO region (region_name) VALUES ('Рівненська область');
INSERT INTO region (region_name) VALUES ('Житомирська область');
INSERT INTO region (region_name) VALUES ('Миколаївська область');

-- Поштові індекси
INSERT INTO postal_code (code) VALUES ('01001');
INSERT INTO postal_code (code) VALUES ('79000');
INSERT INTO postal_code (code) VALUES ('61000');
INSERT INTO postal_code (code) VALUES ('18000');
INSERT INTO postal_code (code) VALUES ('65000');
INSERT INTO postal_code (code) VALUES ('49000');
INSERT INTO postal_code (code) VALUES ('21000');
INSERT INTO postal_code (code) VALUES ('36000');
INSERT INTO postal_code (code) VALUES ('14000');
INSERT INTO postal_code (code) VALUES ('43000');
INSERT INTO postal_code (code) VALUES ('88000');
INSERT INTO postal_code (code) VALUES ('76000');
INSERT INTO postal_code (code) VALUES ('46000');
INSERT INTO postal_code (code) VALUES ('33000');
INSERT INTO postal_code (code) VALUES ('54000');

-- Населені пункти
INSERT INTO settlement (settlement_name) VALUES ('Київ');
INSERT INTO settlement (settlement_name) VALUES ('Львів');
INSERT INTO settlement (settlement_name) VALUES ('Харків');
INSERT INTO settlement (settlement_name) VALUES ('Черкаси');
INSERT INTO settlement (settlement_name) VALUES ('Одеса');
INSERT INTO settlement (settlement_name) VALUES ('Дніпро');
INSERT INTO settlement (settlement_name) VALUES ('Вінниця');
INSERT INTO settlement (settlement_name) VALUES ('Полтава');
INSERT INTO settlement (settlement_name) VALUES ('Чернігів');
INSERT INTO settlement (settlement_name) VALUES ('Луцьк');
INSERT INTO settlement (settlement_name) VALUES ('Ужгород');
INSERT INTO settlement (settlement_name) VALUES ('Івано-Франківськ');
INSERT INTO settlement (settlement_name) VALUES ('Тернопіль');
INSERT INTO settlement (settlement_name) VALUES ('Рівне');
INSERT INTO settlement (settlement_name) VALUES ('Житомир');

-- Вулиці
INSERT INTO street (street_name) VALUES ('Хрещатик');
INSERT INTO street (street_name) VALUES ('Січових Стрільців');
INSERT INTO street (street_name) VALUES ('Свободи');
INSERT INTO street (street_name) VALUES ('Наукова');
INSERT INTO street (street_name) VALUES ('Садова');
INSERT INTO street (street_name) VALUES ('Шевченка');
INSERT INTO street (street_name) VALUES ('Центральна');
INSERT INTO street (street_name) VALUES ('Миру');
INSERT INTO street (street_name) VALUES ('Гагаріна');
INSERT INTO street (street_name) VALUES ('Соборна');
INSERT INTO street (street_name) VALUES ('Незалежності');
INSERT INTO street (street_name) VALUES ('Лесі Українки');
INSERT INTO street (street_name) VALUES ('Грушевського');
INSERT INTO street (street_name) VALUES ('Кобзарська');
INSERT INTO street (street_name) VALUES ('Паркова');

-- Типи земель та податкові ставки
INSERT INTO land_type (tax_rate) VALUES (1200.00);
INSERT INTO land_type (tax_rate) VALUES (900.00);
INSERT INTO land_type (tax_rate) VALUES (650.00);
INSERT INTO land_type (tax_rate) VALUES (1500.00);
INSERT INTO land_type (tax_rate) VALUES (1100.00);
INSERT INTO land_type (tax_rate) VALUES (1000.00);
INSERT INTO land_type (tax_rate) VALUES (800.00);
INSERT INTO land_type (tax_rate) VALUES (700.00);
INSERT INTO land_type (tax_rate) VALUES (500.00);
INSERT INTO land_type (tax_rate) VALUES (450.00);
INSERT INTO land_type (tax_rate) VALUES (1300.00);
INSERT INTO land_type (tax_rate) VALUES (1700.00);
INSERT INTO land_type (tax_rate) VALUES (2000.00);
INSERT INTO land_type (tax_rate) VALUES (600.00);
INSERT INTO land_type (tax_rate) VALUES (1400.00);

-- Працівники податкової служби
INSERT INTO employee (full_name, position) VALUES ('Іваненко Олена Петрівна', 'Інспектор');
INSERT INTO employee (full_name, position) VALUES ('Шевченко Андрій Сергійович', 'Головний спеціаліст');
INSERT INTO employee (full_name, position) VALUES ('Коваленко Марія Ігорівна', 'Експерт');
INSERT INTO employee (full_name, position) VALUES ('Бондар Дмитро Олександрович', 'Інспектор');
INSERT INTO employee (full_name, position) VALUES ('Ткаченко Юлія Миколаївна', 'Інспектор');
INSERT INTO employee (full_name, position) VALUES ('Гриценко Павло Олегович', 'Експерт');
INSERT INTO employee (full_name, position) VALUES ('Мороз Наталія Вікторівна', 'Головний спеціаліст');
INSERT INTO employee (full_name, position) VALUES ('Демченко Артем Ігорович', 'Інспектор');
INSERT INTO employee (full_name, position) VALUES ('Литвин Оксана Сергіївна', 'Експерт');
INSERT INTO employee (full_name, position) VALUES ('Сидоренко Роман Петрович', 'Інспектор');
INSERT INTO employee (full_name, position) VALUES ('Яремчук Ірина Василівна', 'Головний спеціаліст');
INSERT INTO employee (full_name, position) VALUES ('Климчук Володимир Андрійович', 'Інспектор');
INSERT INTO employee (full_name, position) VALUES ('Остапенко Катерина Іванівна', 'Експерт');
INSERT INTO employee (full_name, position) VALUES ('Дорошенко Микита Олексійович', 'Інспектор');
INSERT INTO employee (full_name, position) VALUES ('Захаренко Алла Романівна', 'Головний спеціаліст');

-- Основні таблиці
-- Власники земельних ділянок
INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Петренко', 'Віктор', 'Миколайович', 'КМ123456', '+380501112233', '3012345678');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Савченко', 'Ірина', 'Володимирівна', 'СВ654321', '+380671234567', '3123456789');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Мельник', 'Олег', 'Іванович', 'МН987654', '+380931234111', '3234567890');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Романюк', 'Наталія', 'Петрівна', 'РН456789', '+380991112244', '3345678901');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Кравчук', 'Сергій', 'Анатолійович', 'КС135790', '+380681234890', '3456789012');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Тимошенко', 'Олена', 'Ігорівна', 'ТИ246801', '+380661112233', '3567890123');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Білик', 'Андрій', 'Михайлович', 'БМ112233', '+380501223344', '3678901234');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Кириченко', 'Людмила', 'Степанівна', 'КЛ445566', '+380671334455', '3789012345');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Данилюк', 'Василь', 'Романович', 'ДВ778899', '+380931445566', '3890123456');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Мазур', 'Тетяна', 'Олександрівна', 'МТ990011', '+380991556677', '3901234567');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Паламарчук', 'Ігор', 'Юрійович', 'ПІ223344', '+380681667788', '4012345678');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Черненко', 'Оксана', 'Богданівна', 'ЧО556677', '+380631778899', '4123456789');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Руденко', 'Максим', 'Віталійович', 'РМ889900', '+380501889900', '4234567890');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Семенюк', 'Ніна', 'Григорівна', 'СН334455', '+380671990011', '4345678901');

INSERT INTO owner (last_name, first_name, middle_name, passport_number, phone, tax_code)
VALUES ('Лозовий', 'Петро', 'Данилович', 'ЛП667788', '+380931001122', '4456789012');

-- Земельні ділянки
INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('3222486200:01:001:0001', 1, 1, 120.50, 80.00, 1, 1, 1, 1, '15');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('4623682200:04:002:0105', 2, 2, 95.00, 60.00, 2, 2, 2, 2, '7');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('6325184500:07:003:0201', 3, 3, 150.00, 100.00, 3, 3, 3, 3, '21');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('7110136600:02:004:0333', 4, 1, 75.25, 50.00, 1, 1, 4, 4, '9');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('8000000000:05:005:0444', 5, 2, 200.00, 110.00, 2, 2, 2, 5, '33');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('5100136600:06:006:0501', 6, 4, 130.00, 70.00, 6, 6, 6, 6, '12');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('1200136600:07:007:0502', 7, 5, 145.00, 85.00, 7, 7, 7, 7, '18');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('2100136600:08:008:0503', 8, 6, 98.00, 64.00, 8, 8, 8, 8, '5');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('3100136600:09:009:0504', 9, 7, 175.00, 95.00, 9, 9, 9, 9, '27');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('4100136600:10:010:0505', 10, 8, 88.00, 54.00, 10, 10, 10, 10, '3');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('6100136600:11:011:0506', 11, 9, 220.00, 120.00, 11, 11, 11, 11, '40');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('7100136600:12:012:0507', 12, 10, 160.00, 92.00, 12, 12, 12, 12, '24');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('8100136600:13:013:0508', 13, 11, 112.00, 68.00, 13, 13, 13, 13, '11');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('9100136600:14:014:0509', 14, 12, 140.00, 80.00, 14, 14, 14, 14, '16');

INSERT INTO land_plot (
	plot_number, id_owner, id_type, length, width,
	id_region, id_postal_code, id_settlement, id_street, street_plot_number
)
VALUES ('1100136600:15:015:0510', 15, 13, 190.00, 105.00, 15, 15, 15, 15, '29');

-- Нарахування податків
INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('3222486200:01:001:0001', 1, DATE '2025-01-15', DATE '2025-01-20', DATE '2025-02-05', 14460.00, 'Сплачено', 0);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('4623682200:04:002:0105', 2, DATE '2025-01-18', DATE '2025-01-24', NULL, 8550.00, 'Не сплачено', 427.50);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('6325184500:07:003:0201', 3, DATE '2025-02-01', DATE '2025-02-06', DATE '2025-02-28', 19500.00, 'Сплачено', 0);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('7110136600:02:004:0333', 4, DATE '2025-02-10', DATE '2025-02-14', NULL, 4515.00, 'Не сплачено', 225.75);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('8000000000:05:005:0444', 2, DATE '2025-03-03', DATE '2025-03-08', DATE '2025-03-20', 28600.00, 'Сплачено', 0);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('5100136600:06:006:0501', 5, DATE '2025-03-10', DATE '2025-03-14', DATE '2025-03-29', 18200.00, 'Сплачено', 0);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('1200136600:07:007:0502', 6, DATE '2025-03-12', DATE '2025-03-16', NULL, 15950.00, 'Не сплачено', 797.50);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('2100136600:08:008:0503', 7, DATE '2025-03-15', DATE '2025-03-19', DATE '2025-04-02', 9800.00, 'Сплачено', 0);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('3100136600:09:009:0504', 8, DATE '2025-03-18', DATE '2025-03-22', NULL, 21000.00, 'Не сплачено', 1050.00);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('4100136600:10:010:0505', 9, DATE '2025-03-20', DATE '2025-03-25', DATE '2025-04-07', 7040.00, 'Сплачено', 0);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('6100136600:11:011:0506', 10, DATE '2025-03-24', DATE '2025-03-29', NULL, 37400.00, 'Не сплачено', 1870.00);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('7100136600:12:012:0507', 11, DATE '2025-03-27', DATE '2025-04-01', DATE '2025-04-14', 27200.00, 'Сплачено', 0);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('8100136600:13:013:0508', 12, DATE '2025-03-30', DATE '2025-04-04', NULL, 12320.00, 'Не сплачено', 616.00);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('9100136600:14:014:0509', 13, DATE '2025-04-02', DATE '2025-04-07', DATE '2025-04-20', 19600.00, 'Сплачено', 0);

INSERT INTO tax_assessment (
	plot_number, id_employee, date_formed, date_delivered, date_paid, tax_amount, status, penalty
)
VALUES ('1100136600:15:015:0510', 14, DATE '2025-04-05', DATE '2025-04-10', NULL, 26600.00, 'Не сплачено', 1330.00);

COMMIT;

