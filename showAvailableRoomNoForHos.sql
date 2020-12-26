set serveroutput on;

create or replace procedure showAvailableRoomNoForHos(hid in hospital.HosId%TYPE)
    is


A Room.RoomNo%TYPE;
B Hospital.hosName%TYPE;


begin

    select R.RoomNo,H.hosName into A,B from Hospital H,
    Room R, medical_record M where R.RoomId<>M.RoomId and 	R.HosId=H.HosId and H.HosId=hid;

DBMS_OUTPUT.PUT_LINE('Available :' || A || ' ' || B);

end;
/
