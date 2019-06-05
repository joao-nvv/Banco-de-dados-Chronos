DROP PROCEDURE IF EXISTS Procedure_delete;
DELIMITER $$
CREATE PROCEDURE procedure_delete(inout id_sala INT(8),inout id_responsavel int(8),inout id_recado int(8),
inout id_evento int(8),inout sala_id_sala int(8),inout responsavel_id_responsavel int(8),
inout recado_id_recado int(8))
BEGIN
	SET SQL_SAFE_UPDATES=0;
    delete from sala
	where (id_sala = id_sala );

    SET SQL_SAFE_UPDATES=0;
    delete from responsavel  
	where (id_responsavel = id_responsavel);
    
    SET SQL_SAFE_UPDATES=0;
    delete from  recado  
    where(id_recado = id_recado );

	SET SQL_SAFE_UPDATES=0;
	delete from  evento 
	where (id_evento =  id_evento) and (sala_id_sala = sala_id_sala ) 
    and (responsavel_id_responsavel = responsavel_id_responsavel ) and (recado_id_recado = recado_id_recado);
END $$
DELIMITER ;

