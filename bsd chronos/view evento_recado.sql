CREATE VIEW v_Evento_Recado AS
    SELECT 
        evento.sala_id_sala AS 'Cod da sala',
        sala.nome_sala AS 'Nome da sala',
        evento.evento AS 'Nome do evento',
        evento.data AS 'Data',
        evento.turno AS 'Turno',
        evento.responsavel_id_responsavel AS 'Codigo do responsavel',
        responsavel.nome_resp AS 'Nome do responsavel',
        evento.recado_id_recado as 'Cod recado',
        recado.texto as 'Texto do recado',
        recado.data_inicio as 'Data incio',
        recado.data_fim as 'Data fim',
        recado.turno_recado as 'Turno do recado'
    FROM
        evento
            INNER JOIN
        sala ON sala.id_sala = evento.sala_id_sala
            INNER JOIN
        responsavel ON evento.responsavel_id_responsavel = evento.id_evento
        	INNER JOIN
		recado ON recado.id_recado = evento.recado_id_recado;

