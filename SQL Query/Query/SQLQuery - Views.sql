
/*******************************************************************/
create view UnPay
AS
select [Courseld], [StudentId],UPPER([STORNO]), SUM([PaymentAmount]) as TotalUnPay
from DWH_FactPayments
where [STORNO] = 'X'
group by  [Courseld], [StudentId],[STORNO]


/************************************************************************/

create view AvgAbsence
as
select [AbsenceID],[MeetingID],[StudentID],[AttendanceID], AVG(
from [dbo].[DWH_FactAttendances]