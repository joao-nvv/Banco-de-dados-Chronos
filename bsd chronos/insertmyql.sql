DROP PROCEDURE IF EXISTS Procedure_insert;
DELIMITER $$
CREATE PROCEDURE Procedure_insert(inout id_sala INT(8),inout nome_sala varchar(30),inout id_responsavel int(8),
inout nome_resp varchar(30),inout id_recado int(8),inout texto varchar(30),inout data_inicio datetime(6),
inout data_fim datetime(6),inout turno_recado varchar(10),inout id_evento int(8),inout evento varchar(30),
inout data datetime(6),inout turno varchar(10),inout sala_id_sala int(8),inout responsavel_id_responsavel int(8),
inout un_matriz varchar(30),inout modalidade varchar(30),inout recado_id_recado int(8)) 
BEGIN 
    INSERT INTO sala (id_sala,nome_sala) 
	VALUES (id_sala,nome_sala);
    INSERT INTO responsavel (id_responsavel,nome_resp) 
	VALUES (id_responsavel,nome_resp);
    INSERT INTO recado (id_recado,texto,data_inicio,data_fim,turno_recado) 
    VALUES (id_recado,texto,data_inicio,data_fim,turno_recado);
	INSERT INTO evento (id_evento,evento,data,turno,sala_id_sala,responsavel_id_responsavel,un_matriz,
	modalidade, recado_id_recado) 
	VALUES(id_evento,evento,data,turno,sala_id_sala,responsavel_id_responsavel,un_matriz,
	modalidade, recado_id_recado);
END $$
DELIMITER ;

