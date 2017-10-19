DECLARE
	lv_name VARCHAR2(30) := '&Name';
BEGIN
	IF (lv_name = 'Dayo') THEN
		lv_name := 'Me';
	END IF;
	DBMS_OUTPUT.PUT_LINE('Hello ' || lv_name || '!');
END;
/

DECLARE
	lv_name VARCHAR2(30) := '&Name';
BEGIN
	CASE lv_name
	WHEN 'Dayo' THEN lv_name := 'Me';
	END CASE;
	DBMS_OUTPUT.PUT_LINE('Hello ' || lv_name || '!');
END;
/

DECLARE
	lv_name VARCHAR2(30) := '&Name';
	lv_count NUMBER(20) := '&Count';
BEGIN
	CASE lv_name
		WHEN 'Dayo' THEN lv_name := 'Me';
	END CASE;
	WHILE lv_count > 0 LOOP
		DBMS_OUTPUT.PUT_LINE('Hello ' || lv_name || '!');
		lv_count := lv_count - 1;
	END LOOP;
END;
/

DECLARE
	lv_name VARCHAR2(30) := '&Name';
	lv_count NUMBER(20) := '&Count';
BEGIN
	CASE lv_name
		WHEN 'Dayo' THEN lv_name := 'Me';
	END CASE;
	WHILE lv_count > 0 LOOP
		DBMS_OUTPUT.PUT_LINE('Hello ' || lv_name || '!');
		lv_count := lv_count - 1;
	END LOOP;
END;
/

DECLARE
	lv_name VARCHAR2(30) := '&Name';
	lv_count NUMBER(20) := '&Count';
BEGIN
	CASE lv_name
		WHEN 'Dayo' THEN lv_name := 'Me';
	END CASE;
	LOOP
		DBMS_OUTPUT.PUT_LINE('Hello ' || lv_name || '!');
		EXIT WHEN lv_count = 0;
		lv_count := lv_count - 1;
	END LOOP;
END;
/

