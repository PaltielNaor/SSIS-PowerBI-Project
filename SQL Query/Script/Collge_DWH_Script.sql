USE [College_DWH]
GO
/****** Object:  Table [dbo].[DWH_FactPayments]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_FactPayments](
	[StudentId] [int] NULL,
	[Courseld] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentNo] [int] NULL,
	[PaymentAmount] [float] NULL,
	[STORNO] [nvarchar](5) NULL,
	[dt_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[UnPay]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[UnPay]
AS
select year([PaymentDate]) as 'PY',[Courseld], [StudentId], SUM([PaymentAmount]) as TotalUnPay
from DWH_FactPayments
where [STORNO] = 'X'
group by  year([PaymentDate]),[Courseld], [StudentId]
GO
/****** Object:  View [dbo].[Top10UnpaiedStudents]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[Top10UnpaiedStudents]
as
select top 10 [StudentId],[Courseld] ,sum([PaymentAmount]) as 'PA', year([PaymentDate]) as 'PYear'
from DWH_FactPayments
where UPPER([STORNO]) in ('X','x')
group by [StudentId],[Courseld],year([PaymentDate])
order by 'PYear','PA' desc
GO
/****** Object:  Table [dbo].[DWH_FactGrades]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_FactGrades](
	[GradeID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[StudentID] [int] NULL,
	[Grade] [float] NULL,
	[CourseID] [int] NULL,
	[AssigmentID] [int] NULL,
	[dt_date] [datetime] NULL,
 CONSTRAINT [PK_DWH_FactGrades] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AvgGradesPerStudentAndCourse]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[AvgGradesPerStudentAndCourse]
AS
select StudentID,CourseID,avg([Grade]) as 'Averge'
from DWH_FactGrades
group by StudentID,CourseID
GO
/****** Object:  Table [dbo].[admin_etl_log]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_etl_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[etl_name] [nvarchar](255) NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NULL,
	[rows_update] [int] NULL,
	[status] [nvarchar](50) NULL,
	[Detail] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[DateKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDate] [char](10) NULL,
	[DayOfMonth] [varchar](2) NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeek] [char](1) NULL,
	[DayOfWeekInMonth] [varchar](2) NULL,
	[DayOfWeekInYear] [varchar](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [varchar](1) NULL,
	[WeekOfQuarter] [varchar](2) NULL,
	[WeekOfYear] [varchar](2) NULL,
	[Month] [varchar](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [varchar](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[MMYYYY] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
	[IsHoliday] [bit] NULL,
	[IsWeekday] [bit] NULL,
	[HolidayName] [varchar](50) NULL,
	[FiscalDayOfYear] [varchar](3) NULL,
	[FiscalWeekOfYear] [varchar](3) NULL,
	[FiscalMonth] [varchar](2) NULL,
	[FiscalQuarter] [char](1) NULL,
	[FiscalQuarterName] [varchar](9) NULL,
	[FiscalYear] [char](4) NULL,
	[FiscalYearName] [char](7) NULL,
	[FiscalMonthYear] [char](10) NULL,
	[FiscalMMYYYY] [char](6) NULL,
	[FiscalFirstDayOfMonth] [date] NULL,
	[FiscalLastDayOfMonth] [date] NULL,
	[FiscalFirstDayOfQuarter] [date] NULL,
	[FiscalLastDayOfQuarter] [date] NULL,
	[FiscalFirstDayOfYear] [date] NULL,
	[FiscalLastDayOfYear] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_DimClasses]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_DimClasses](
	[ClassName] [nvarchar](50) NULL,
	[ClassTypeId] [int] NULL,
	[dw_date] [datetime] NULL,
	[ClassID] [int] NOT NULL,
	[ClasstypeName] [nvarchar](25) NULL,
 CONSTRAINT [PK_DWH_DimClasses] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_DimCourses]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_DimCourses](
	[CourseID] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[FinalProjectDate] [datetime] NULL,
	[CodeCourse] [int] NULL,
	[CoursePrice] [float] NULL,
	[ClassID] [int] NULL,
	[MinStudentsNum] [int] NULL,
	[MaxStudentsNum] [int] NULL,
	[LecturersIDs] [nvarchar](4000) NULL,
	[Location] [nvarchar](50) NULL,
	[DayPart] [nvarchar](6) NULL,
	[NoOfStudents] [int] NULL,
	[CourseFormat] [nvarchar](50) NULL,
	[TitleName] [nvarchar](255) NULL,
	[Hours] [int] NULL,
	[PassingGrade] [int] NULL,
	[CategorylD] [int] NULL,
	[CategoryName] [nvarchar](20) NULL,
	[dt_date] [datetime] NULL,
 CONSTRAINT [PK_DWH_DimCourses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_DimLecturers]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_DimLecturers](
	[LecturerID] [int] NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[CityID] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[BirthDay] [datetime] NULL,
	[Gender] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[WorkHour] [int] NULL,
	[CourseTypes] [nvarchar](4000) NULL,
	[dw_date] [datetime] NULL,
 CONSTRAINT [PK_DWH_DimLecturers] PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_DimRegions]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_DimRegions](
	[CityID] [int] NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[District] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[dw_date] [datetime] NULL,
 CONSTRAINT [PK_DWH_DimRegions] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_DimStudents]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_DimStudents](
	[StudentId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[BirthDay] [datetime] NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Sms] [nvarchar](20) NULL,
	[StudentIdentityId] [nvarchar](15) NULL,
	[CityID] [int] NULL,
	[Gender] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Education] [nvarchar](50) NULL,
	[TechnologicBackground] [nvarchar](4000) NULL,
	[WorkPlace] [nvarchar](50) NULL,
	[ProfessionalStatus] [nvarchar](50) NULL,
	[dw_date] [datetime] NULL,
 CONSTRAINT [PK_DWH_DimStudents] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_FactAssignments]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_FactAssignments](
	[AssignmentID] [int] NOT NULL,
	[PriorityID] [int] NULL,
	[Date] [datetime] NULL,
	[CourseID] [int] NULL,
	[LecturerID] [int] NULL,
	[AssignmentTypeID] [int] NULL,
	[KAssignmentTypeName] [nvarchar](50) NULL,
	[dt_date] [datetime] NULL,
 CONSTRAINT [PK_DWH_FactAssignments] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_FactAttendances]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_FactAttendances](
	[Presence] [nvarchar](255) NULL,
	[AttendanceID] [int] NOT NULL,
	[StudentID] [int] NULL,
	[MeetingID] [int] NULL,
	[AbsenceID] [int] NULL,
	[Title] [nvarchar](4000) NULL,
	[Day] [nvarchar](50) NULL,
	[TimeStart] [datetime] NULL,
	[LecturerID] [int] NULL,
	[Location] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Type] [nvarchar](50) NULL,
	[CourseID] [int] NULL,
	[Reason] [nvarchar](15) NULL,
	[dt_date] [datetime] NULL,
 CONSTRAINT [PK_DWH_FactAttendances] PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DWH_FactRegistrations]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_FactRegistrations](
	[RegistrationID] [int] NOT NULL,
	[RegistrationStatus] [nvarchar](50) NULL,
	[CourseID] [int] NULL,
	[StudenID] [int] NULL,
	[RegistrationDate] [datetime] NULL,
	[KDropoutReasonFld] [nvarchar](50) NULL,
	[CoursePrice] [float] NULL,
	[StudentID] [int] NULL,
	[RefusalReasonsID] [int] NULL,
	[dt_date] [datetime] NULL,
	[RefusalReasonsName] [nvarchar](50) NULL,
 CONSTRAINT [PK_DWH_FactRegistrations] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OLE DB Destination]    Script Date: 25/12/2023 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination](
	[Flat File Source Error Output Column] [varchar](max) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
