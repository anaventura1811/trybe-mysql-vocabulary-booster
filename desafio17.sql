-- 17. Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders,
-- insira automaticamente a data atual na coluna OrderDate
USE w3schools;
DELIMITER $$
CREATE TRIGGER dataDeInsercao
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END $$
DELIMITER ;

-- Source:
-- https://doc.splicemachine.com/sqlref_builtinfcns_currentdate.html
