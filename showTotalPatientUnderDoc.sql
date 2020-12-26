create or replace procedure showTotalPatientUnderDoc(doctorid in Doctor.DocId%TYPE)
    is

A number;
B Doctor.Name%TYPE;

begin

    select count(distinct M.PatientId),D.Name into A,B from            doctor D, medical_record M where D.DocId=M.DocId AND D.DocId=doctorid;

DBMS_OUTPUT.PUT_LINE(B || ' ' || A);

end showTotalPatientUnderDoc;
/
