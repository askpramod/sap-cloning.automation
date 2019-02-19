DELIMITER $$
CREATE  PROCEDURE usp_InsertTransportRequestE070L(IN pTRKORR VARCHAR(20), IN pLASTNUM VARCHAR(10))
BEGIN
     START TRANSACTION;
	IF EXISTS(SELECT 1 FROM E070L WHERE LASTNUM = pLASTNUM)
	THEN
	    UPDATE E070L SET TRKORR = pTRKORR WHERE LASTNUM = pLASTNUM; 
	ELSE
	    INSERT INTO E070L (TRKORR, LASTNUM) VALUES (pTRKORR, pLASTNUM);
	END IF;
     COMMIT;
END $$
DELIMITER ;DELIMITER $$
CREATE  PROCEDURE usp_InsertTransportRequestLastNum(IN pTRKORR VARCHAR(20), IN pLASTNUM VARCHAR(10))
BEGIN
     START TRANSACTION;
	IF EXISTS(SELECT 1 FROM TransportRequestLastNum WHERE LASTNUM = pLASTNUM)
	THEN
	    UPDATE TransportRequestLastNum SET TRKORR = pTRKORR WHERE LASTNUM = pLASTNUM; 
	ELSE
	    INSERT INTO TransportRequestLastNum (TRKORR, LASTNUM) VALUES (pTRKORR, pLASTNUM);
	END IF;
     COMMIT;
END $$
DELIMITER ;