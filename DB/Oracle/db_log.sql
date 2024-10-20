
DROP TABLE upg_details_tbl; 
/
--mi_db_upg_details  upg_details_tbl
--dbdt_key updt_key
CREATE TABLE upg_details_tbl (upg_det_key NUMBER);
/

CREATE TABLE mi_db_upg_trc_steps (
step_key NUMBER, 
dbdt_key NUMBER, 
step_proc_nm varchar2(100),
step_nm varchar2(4000), 
step_start_dt timestamp, 
step_msg_type_cd varchar2(10), 
step_msg_cd varchar2(4000)
);

CREATE OR REPLACE PACKAGE db_log AS 
BEGIN 	
	PROCEDURE create_event_xml (in_upg_det_key upg_details_tbl.upg_det_key%type); 
END; 
/

CREATE OR REPLACE PACKAGE BODY db_log AS 
BEGIN 	
	PROCEDURE create_event_xml (in_upg_det_key upg_details_tbl.upg_det_key%type) AS 
	BEGIN 
		NULL;
	END;	
END; 
/


