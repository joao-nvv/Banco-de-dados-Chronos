DROP PROCEDURE IF EXISTS Procedure_update;
DELIMITER $$
CREATE PROCEDURE Procedure_update(inout id_sala INT(8),inout nome_sala varchar(30),inout id_responsavel int(8),
inout nome_resp varchar(30),inout id_recado int(8),inout texto varchar(30),inout data_inicio datetime(6),
inout data_fim datetime(6),inout turno_recado varchar(10),inout id_evento int(8),inout evento varchar(30),
inout data datetime(6),inout turno varchar(10),inout sala_id_sala int(8),inout responsavel_id_responsavel int(8),
inout un_matriz varchar(30),inout modalidade varchar(30),inout recado_id_recado int(8)) 
BEGIN 
	
    SET SQL_SAFE_UPDATES=0;
    UPDATE sala 
	SET nome_sala = nome_sala
    where id_sala = id_sala;
	
    SET SQL_SAFE_UPDATES=0;
    UPDATE responsavel  
	SET nome_resp= nome_resp
    where id_responsavel = id_responsavel ;
    
	SET SQL_SAFE_UPDATES=0;
    UPDATE recado 
    SET texto=texto,data_inicio=data_inicio,data_fim=data_fim,turno_recado=turno_recado
    where  id_recado = id_recado;
    
	SET SQL_SAFE_UPDATES=0;
	UPDATE evento  
	SET evento = evento,data = data,turno=turno,un_matriz=un_matriz,
	modalidade = '' 
    where id_evento = id_evento AND  sala_id_sala = sala_id_sala AND responsavel_id_responsavel=responsavel_id_responsavel
    AND recado_id_recado = recado_id_recado;
END $$
DELIMITER ;

