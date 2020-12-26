set serveroutput on;

declare
r1 number;
r2 number;
begin


r1:=findPatientOfAgeForHosFunc(1,10);
DBMS_OUTPUT.PUT_LINE(r1);

r2:=findRoomForPatientFunc(2);
DBMS_OUTPUT.PUT_LINE(r2);

showPatientHosRoomNo(1);
showTotalPatientUnderDoc(1);
showAvailableRoomNoForHos(1);

end;
/

