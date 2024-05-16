
/*Dim Classes Incremental Query */
/* KClassesTbl */
"SELECT [id],[KNameFld],[updateduserid],[updateddate],[containertable],[containerid],[parentid]
      ,[KColorFld],[KActiveFld],[KOrderFld]FROM [dbo].[KClassesTbl]
	  Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"

/* KClassTypesTbl  */
"SELECT [id],[KTypeFld],[KIconFld],[KColorFld],[KActiveFld],[updateduserid],[updateddate],[containertable]
	,[containerid],[parentid]FROM [dbo].[KClassTypesTbl]
	Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/*Dim Courses Incremental Query */
/* KCoursesTbl */
"SELECT [id],[KStartDateFld],[KEndDateFld],[KFinalProjectDateFld],[KTitleFld],[KClassNoFld],[KGroupFld]
	,[KActiveFld],[KpriceFld],[KClassFld],[KMinStudentsNumFld],[KMaxStudentsNumFld]
	,[KCommentsFld],[KArchiveFld],[KHebYearFld],[KIncludeInRegRptFld] ,[KRegistrationOpenFld],[updateduserid]
	,[updateddate],[containertable],[containerid],[parentid],[KLecturersTbl],[KCourseMangerFld],[KLocationFld]
	,[KDayPartFld],[KStudentCommentsFld],[KAdvanceFld],[KCourseType2Fld],[KAdjustedFld],[KHoursFld]
	,[KOrganizationFld],[KContactFld],[KContact1Fld],[KCourseManagerFld],[KNoOfStudentsFld]
	,[KBusinessOpportunityFld],[KCourseFormatFld],[KReasonOldFld],[KCourseTypeFld],[KBusinessOpportunityStatusFld]
	,[KBusinessPriceFld],[KPriceQuoteFld],[KAccountFld],[KLeadOriginFld],[KReasonFld],[KOriginalPriceFld] 
	FROM [dbo].[KCoursesTbl] 
	Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/* KCourseTypesTbl */
"SELECT [id],[KTitleFld],[KCodeFld],[KActiveFld],[KTimeFld],[KCode2Fld],[KHoursFld],[KWeekHoursFld],[KWeeksFld]
      ,[KPassingGradeFld],[KAdvanceFld],[KpriceFld],[KCourseMangerFld],[KDescriptionTbl],[KTopicsTbl]
      ,[KCommentsFld],[updateduserid],[updateddate],[containertable],[containerid],[parentid],[KProfInsuranceFld]
      ,[KMandatoryPresenceFld],[KMandatoryOrElectiveFld],[KBodySoulOrTouchFld],[KAcademicYearFld]
      ,[KRegistrationFeeEarlyRegFld],[KCoursePriceEarlyRegFld],[KCategory2Fld],[KChildOfFld],[KCategoryFld]
      ,[KIsModuleFld],[KTopicsFld],[KDescriptionFld],[KExtraKitPriceFld],[KBusinessPriceFld],[KShortTitleFld]
  FROM [dbo].[KCourseTypesTbl]
  Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/* CategoriesTbl */
"SELECT [id],[KNameFld],[KActiveFld],[updateduserid],[updateddate],[containertable],[containerid],[parentid]
  FROM [dbo].[CategoriesTbl]
  Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/*Dim Lecturers Incremental Query */
/* KLecturersTbl */
"SELECT [id],[KIDFld],[KLastNameFld],[KFirstNameFld],[KEmailFld],[KPhoneFld],[KPhone2Fld],[KRemarksFld]
	,[KpictureFld],[KBirthDateFld],[KGenderFld],[updateduserid],[updateddate],[containertable],[containerid]
	,[parentid],[KStatusFld],[KActiveFld],[KZipCodeFld],[KStreetFld],[KCityFld],[KAddressFld],[KWorkHourFld]
	,[KUserFld],[KRegPercForSalaryFld],[KColorFld],[KWeeklyEmailReminderFld],[KDailyEmailReminderFld]
	,[KDailySMSReminderFld],[KEmployeeOrIndependentFld],[KCategoriesFld],[KCourseTypesFld]
	FROM [dbo].[KLecturersTbl]
	Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/*Dim Region Incremental Query */
/*CitiesTbl */
"SELECT [id],[KNameFld],[KCountriesFld],[updateduserid],[updateddate],[parentid],[KActiveFld],[KDescriptionFld]
    ,[KDistrictFld],[containertable],[containerid]
	FROM [dbo].[CitiesTbl]
	Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/*Dim Students Incremental Query */
/* KStudentsTbl */
"SELECT [id],[KFirstNameFld],[KLastNameFld],[KIDFld],[KBirthDateFld],[KAddressFld],[KCityFld],[KZipCodeFld]
,[KPhone2Fld],[KPhoneFld],[KPhotoFld],[KEmailFld],[KSmsFld],[KConfirmEmailFld],[KLeadOriginFld]
,[KLeadOrigin2Fld],[KBroughtByFld],[KStatusFld],[KEmail2Fld],[KStreetFld],[KCreateDateFld]
,[KCommentsFld],[KAccountStatusFld],[KSendInvoiceFld],[KSendInvoiceByPostFld],[KCustomerFld]
,[KACOldFld],[KRecommenderFld],[KGenderFld],[KOld_idFld],[KOld_id2Fld],[KHashkeyFld],[KHeardFromOldFld]
,[KBankAccountNameFld],[updateduserid],[updateddate],[containertable],[containerid],[parentid]
,[LName1],[FName],[LName2],[FullName],[KFaxFld],[KIsAssistantFld],[KENNameFld],[KIsOrganizationFld]
,[KOrganizationFld],[KContactFld],[KEducationsFld],[KEducationCommentsFld],[KTechnologicBackgroundFld]
,[KCurrentJobFld],[KWorkPlaceFld],[KProfessionalStatusFld],[KComments1Fld],[KPaidFld],[KOldProfStatusFld],[KJobFld]
FROM [dbo].[KStudentsTbl]
Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/*Fact Assignments Incremental Query */
/* KAssignmentsTbl */
"SELECT [id],[KPriorityFld],[KDateFld],[KTitleFld],[KGradePercentageFld],[KCommentsFld],[KActiveFld]
      ,[KLecturerFld],[containertable],[containerid],[updateduserid],[updateddate],[parentid]
  FROM [dbo].[KAssignmentsTbl]
  Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"

/* KAssignmentTypesTbl */
"SELECT [id],[KNameFld],[KUserCodefld_Old],[KActiveFld],[KIType_Old_fld],[KWeightFld_OldFld],[updateduserid]
    ,[updateddate],[containertable],[containerid],[parentid]
	FROM [dbo].[KAssignmentTypesTbl]
	Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/*Fact Attendances Incremental Query */
/* KAttendancesTbl */
"SELECT [id],[KStudentIdFld],[KPresenceFld],[KCommentsFld],[containertable],[containerid],[updateduserid]
    ,[updateddate],[parentid],[KHWFld],[KLecturerCommentsFld],[KCourseFld],[KCourseTypeFld],[K_Absence]
	FROM [dbo].[KAttendancesTbl]
	Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"

/* KMeetingsTbl */
"SELECT [id],[KTitleFld],[KDayFld],[KTimeStartFld],[KStartHourFld],[KEndHourFld],[KTypeFld],[KCodeFld]
    ,[KActiveFld],[KLecturerFld],[KStudentsFld],[KCourseFld],[KMeetingLocationFld],[KCommentsFld]
    ,[updateduserid],[updateddate],[containertable],[containerid],[parentid],[KDescriptionFld]
    ,[KMeetingTimeFld],[KPriorityFld],[KLecturer2Fld],[KCoursePatternMeetingIdFld],[KClassroomArrangementFld]
    ,[KLecturer3Fld],[KActualMeetingLocationFld],[KModuleFld]
	FROM [dbo].[KMeetingsTbl]
	Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"

/* KAbsenceReasonsTbl */
"SELECT [id],[KReasonFld],[KActiveFld],[updateduserid],[updateddate],[containertable],[containerid],[parentid]
  FROM [dbo].[KAbsenceReasonsTbl]
  Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/* Fact Grades Incremental Query */
/* KGradesTbl */
"SELECT [id],[KDateFld],[KStudentIdFld],[KCourseFld],[KGradeFld],[KAssignmentTypeFld],[KGradePercentageFld]
,[KCommentsFld],[updateduserid],[updateddate],[containertable],[containerid],[parentid],[KAssignmentFld]
FROM [dbo].[KGradesTbl]
Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/* Fact Grades Incremental Query */
/* KRegistrationsTbl */
"SELECT [id],[KStudentFld],[KRegistrationStatus_OldFld],[KRegistrationStatusFld],[KRegisteredToFld]
      ,[KCourseFld],[KCoursepriceFld],[KPayStatusFld],[KPaytermsFld],[KNoOfPaysFld],[KDiscountFld]
      ,[KPayCommentsFld],[KCommentsFld],[KDiscountReasonFlld],[KWhatWasSentFld],[KSentDateFld],[KUpdatedby2Fld]
      ,[KArchiveFld],[KZoneFld],[updateduserid],[updateddate],[containertable],[containerid],[parentid]
      ,[KDropoutReasonFld],[KLecturerCommentsFld],[KDiscountInNisFld],[KOld_idFld],[KOld_id2Fld]
      ,[KTotalAmountFld],[KSendEmailFld],[KSendSMSFld],[KBooksFld],[KStartPayDateFld],[KPaymentStatusFld]
      ,[KAdvancePaymentFld],[KReceivedDiplomaFld],[KTurnedProjectFld],[KSignedAgreementFld],[KSignedanAgreementFld]
      ,[KRegistrationDateFld],[KYearFld],[KGradeFld],[KFacultyNameFld],[KExemptionReasonFld],[old_id]
      ,[grouping],[group_],[KPercentageDiscountReasonFld],[KDiscountReasonFld],[KFacultiesFld],[KAdvanceRegistrationFld]
      ,[KEntitledToDiplomaFld],[KCourseOldDetailsFld],[KSchoolBranchFld],[KDayFld],[KApprovedArrivalFld]
      ,[KOldRegistrationDateFld],[KDayPeriodFld],[KProductTypeFld],[KOldProdNameFld],[KAmtPaidFld]
      ,[KSerialNoFld],[KTotalAmountOldFld],[KCourseStartDateFld],[KIsActiveFld],[KHandlerOldFld]
      ,[KServiceMonthsFld],[KRegisteredToOldFld],[KIsAssistantFld],[KCreateDateFld],[KFirstNameFld],[KLastNameFld]
      ,[KENNameFld],[KPhoneFld],[KEmailFld],[KRoleFld],[KPaymentSourceFld],[KOrganizationFld],[KPaymentSourseFld]
      ,[KCategory2Fld],[KIsGroupRegFld],[KCategoryFld],[KModulesFld],[KIDFld],[KBusinessOpportunityFld]
      ,[KCourseFormatFld],[KNoOfStudentsFld],[KLecturersFld],[KLocationFld],[KReasonFld],[KContactFld]
      ,[KContact1Fld],[KCourseType2Fld],[KRecommenderFld],[KJobFld],[KExamsAverageFld],[KProjectGradeFld]
      ,[KGuideOpinionFld],[KCourseTypeFld],[KTextualCourseNameFld],[KTextualCourseTypeNameFld],[KPriceQuoteFld]
      ,[KAccountFld],[KTextualOrganizationFld],[KRegistrationSecondaryStatusFld],[KLeadOriginFld]
	FROM [dbo].[KRegistrationsTbl]
	Where cast([updateddate] as datetime) > " + "'" + (DT_WSTR, 30) (DT_DBDATE)  @[User::Last_Update_Date] +"'"


/************* END ****************/