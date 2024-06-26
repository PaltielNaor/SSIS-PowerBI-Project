USE [MRR_STG]
GO
/****** Object:  Table [dbo].[MRR_Assignments]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Assignments](
	[id] [int] NULL,
	[KPriorityFld] [int] NULL,
	[KDateFld] [datetime] NULL,
	[KTitleFld] [nvarchar](4000) NULL,
	[containerid] [int] NULL,
	[KLecturerFld] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_Attendances]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Attendances](
	[id] [float] NULL,
	[KStudentIdFld] [float] NULL,
	[KPresenceFld] [nvarchar](255) NULL,
	[KCourseFld] [float] NULL,
	[containerid] [float] NULL,
	[K_Absence] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_CategoriesTbl]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_CategoriesTbl](
	[id] [int] NULL,
	[KNameFld] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_CitiesTbl]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_CitiesTbl](
	[id] [int] NULL,
	[KNameFld] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_Classes]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Classes](
	[id] [int] NULL,
	[KNameFld] [nvarchar](50) NULL,
	[KActiveFld] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_ClasseType]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_ClasseType](
	[id] [int] NULL,
	[KTypeFld] [nvarchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_Courses]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Courses](
	[id] [int] NULL,
	[KStartDateFld] [datetime] NULL,
	[KEndDateFld] [datetime] NULL,
	[KFinalProjectDateFld] [datetime] NULL,
	[KTitleFld] [int] NULL,
	[KpriceFld] [float] NULL,
	[KClassFld] [int] NULL,
	[KMinStudentsNumFld] [int] NULL,
	[KMaxStudentsNumFld] [int] NULL,
	[KLecturersTbl] [nvarchar](4000) NULL,
	[KLocationFld] [nvarchar](50) NULL,
	[KDayPartFld] [nvarchar](6) NULL,
	[KNoOfStudentsFld] [int] NULL,
	[KCourseFormatFld] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_Grades]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Grades](
	[id] [int] NULL,
	[KDateFld] [datetime] NULL,
	[KStudentIdFld] [int] NULL,
	[KGradeFld] [float] NULL,
	[KCourseFld] [int] NULL,
	[KAssignmentFld] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_KAbsenceReasonsTbl]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_KAbsenceReasonsTbl](
	[id] [int] NULL,
	[KReasonFld] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_KAssignmentTypesTbl]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_KAssignmentTypesTbl](
	[id] [int] NULL,
	[KNameFld] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_KCourseTypesTbl]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_KCourseTypesTbl](
	[id] [int] NULL,
	[KTitleFld] [nvarchar](255) NULL,
	[KHoursFld] [int] NULL,
	[KPassingGradeFld] [int] NULL,
	[KCategoryFld] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_KMeetingsTbl]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_KMeetingsTbl](
	[id] [int] NULL,
	[KTitleFld] [nvarchar](4000) NULL,
	[KDayFld] [nvarchar](50) NULL,
	[KTimeStartFld] [datetime] NULL,
	[KLecturerFld] [int] NULL,
	[KMeetingLocationFld] [nvarchar](50) NULL,
	[containerid] [int] NULL,
	[KDescriptionFld] [nvarchar](4000) NULL,
	[KTypeFld] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_KRefusalReasonsTbl]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_KRefusalReasonsTbl](
	[id] [int] NULL,
	[KRefusalReasonFld] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_Lecturers]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Lecturers](
	[id] [int] NULL,
	[KLastNameFld] [nvarchar](50) NULL,
	[KFirstNameFld] [nvarchar](50) NULL,
	[KCityFld] [int] NULL,
	[KEmailFld] [nvarchar](50) NULL,
	[KPhoneFld] [nvarchar](20) NULL,
	[KBirthDateFld] [datetime] NULL,
	[KGenderFld] [nvarchar](50) NULL,
	[KStatusFld] [nvarchar](50) NULL,
	[KWorkHourFld] [int] NULL,
	[KCourseTypesFld] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_PaymentsStorno]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_PaymentsStorno](
	[StudentId] [int] NULL,
	[Courseld] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[STORNO] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_Regions]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Regions](
	[שם יישוב] [nvarchar](255) NULL,
	[תיאור מחוז] [nvarchar](255) NULL,
	[איזור] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_Registrations]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Registrations](
	[id] [int] NULL,
	[KRegistrationStatusFld] [nvarchar](50) NULL,
	[KCourseFld] [int] NULL,
	[containerid] [int] NULL,
	[KRegistrationDateFld] [datetime] NULL,
	[KDropoutReasonFld] [nvarchar](50) NULL,
	[KCoursepriceFld] [float] NULL,
	[KStudentFld] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_StudentPayments]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_StudentPayments](
	[StudentId] [int] NULL,
	[Courseld] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentNo] [int] NULL,
	[PaymentAmount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRR_Students]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRR_Students](
	[id] [int] NULL,
	[KFirstNameFld] [nvarchar](50) NULL,
	[KLastNameFld] [nvarchar](50) NULL,
	[KBirthDateFld] [datetime] NULL,
	[KPhoneFld] [nvarchar](20) NULL,
	[KEmailFld] [nvarchar](50) NULL,
	[KSmsFld] [nvarchar](20) NULL,
	[KIDFld] [nvarchar](15) NULL,
	[KCityFld] [int] NULL,
	[KGenderFld] [nvarchar](50) NULL,
	[KStatusFld] [nvarchar](50) NULL,
	[KCreateDateFld] [datetime] NULL,
	[KEducationsFld] [nvarchar](50) NULL,
	[KTechnologicBackgroundFld] [nvarchar](4000) NULL,
	[KWorkPlaceFld] [nvarchar](50) NULL,
	[KProfessionalStatusFld] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DimClasses]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DimClasses](
	[ClassName] [nvarchar](50) NULL,
	[ClassTypeId] [int] NULL,
	[dw_date] [datetime] NULL,
	[ClassID] [int] NULL,
	[ClasstypeName] [nvarchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DimCourses]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DimCourses](
	[CourseID] [int] NULL,
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
	[dt_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DimLecturers]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DimLecturers](
	[LecturerID] [int] NULL,
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
	[dw_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DimRegions]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DimRegions](
	[CityID] [int] NULL,
	[CityName] [nvarchar](255) NULL,
	[CityName2] [nvarchar](255) NULL,
	[District] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[_Similarity] [real] NULL,
	[_Confidence] [real] NULL,
	[_Similarity_CityName] [real] NULL,
	[dt_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DimStudents]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DimStudents](
	[StudentId] [int] NULL,
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
	[dw_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_FactAssignments]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_FactAssignments](
	[AssignmentID] [int] NULL,
	[PriorityID] [int] NULL,
	[Date] [datetime] NULL,
	[CourseID] [int] NULL,
	[LecturerID] [int] NULL,
	[AssignmentTypeID] [int] NULL,
	[dt_date] [datetime] NULL,
	[KAssignmentTypeName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_FactAttendances]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_FactAttendances](
	[Presence] [nvarchar](255) NULL,
	[AttendanceID] [int] NULL,
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
	[dt_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_FactGrades]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_FactGrades](
	[GradeID] [int] NULL,
	[Date] [datetime] NULL,
	[StudentID] [int] NULL,
	[Grade] [float] NULL,
	[CourseID] [int] NULL,
	[AssigmentID] [int] NULL,
	[dt_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_FactPayments]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_FactPayments](
	[StudentId] [int] NULL,
	[Courseld] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentNo] [int] NULL,
	[PaymentAmount] [float] NULL,
	[STORNO] [nvarchar](5) NULL,
	[dt_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_FactRegistrations]    Script Date: 25/12/2023 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_FactRegistrations](
	[RegistrationID] [int] NULL,
	[RegistrationStatus] [nvarchar](50) NULL,
	[CourseID] [int] NULL,
	[StudenID] [int] NULL,
	[RegistrationDate] [datetime] NULL,
	[KDropoutReasonFld] [nvarchar](50) NULL,
	[CoursePrice] [float] NULL,
	[StudentID] [int] NULL,
	[RefusalReasonsID] [int] NULL,
	[dt_date] [datetime] NULL,
	[RefusalReasonsName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
