--Створюємо головного адміністратора податкової бази
CREATE USER Land_admin IDENTIFIED BY "Admin1";

-- Надаємо йому абсолютні права (DBA)
GRANT DBA TO Land_admin;