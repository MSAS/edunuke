
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/04/2012 18:51:46
-- Generated from EDMX file: C:\Code\EduNuke_Source\EduNuke\EduNuke.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EduData];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_UserEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_CollegeDepartment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Departments] DROP CONSTRAINT [FK_CollegeDepartment];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentSubjects]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subjects1] DROP CONSTRAINT [FK_DepartmentSubjects];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseSemesters]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Semesters] DROP CONSTRAINT [FK_CourseSemesters];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeReportingOfficer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_EmployeeReportingOfficer];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseBatch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Batches] DROP CONSTRAINT [FK_CourseBatch];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentCourse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Courses] DROP CONSTRAINT [FK_DepartmentCourse];
GO
IF OBJECT_ID(N'[dbo].[FK_SemestersSubject]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subjects1] DROP CONSTRAINT [FK_SemestersSubject];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_DepartmentEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_BatchSection]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sections] DROP CONSTRAINT [FK_BatchSection];
GO
IF OBJECT_ID(N'[dbo].[FK_SectionStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Students] DROP CONSTRAINT [FK_SectionStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_EventAttendance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Attendances] DROP CONSTRAINT [FK_EventAttendance];
GO
IF OBJECT_ID(N'[dbo].[FK_UserAttendance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Attendances] DROP CONSTRAINT [FK_UserAttendance];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectSubjectInstance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubjectInstances] DROP CONSTRAINT [FK_SubjectSubjectInstance];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectBook]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InventorySet_Book] DROP CONSTRAINT [FK_SubjectBook];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeSubjectInstance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubjectInstances] DROP CONSTRAINT [FK_EmployeeSubjectInstance];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectInstanceEvent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Events] DROP CONSTRAINT [FK_SubjectInstanceEvent];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationEvent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Events] DROP CONSTRAINT [FK_LocationEvent];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectInstanceStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Students] DROP CONSTRAINT [FK_SubjectInstanceStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Results] DROP CONSTRAINT [FK_StudentResult];
GO
IF OBJECT_ID(N'[dbo].[FK_ExamResult]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Results] DROP CONSTRAINT [FK_ExamResult];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectExam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Exams] DROP CONSTRAINT [FK_SubjectExam];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectAssignment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assignments] DROP CONSTRAINT [FK_SubjectAssignment];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentsAssignment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assignments] DROP CONSTRAINT [FK_DocumentsAssignment];
GO
IF OBJECT_ID(N'[dbo].[FK_AssignmentAssignmentSolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AssignmentSolutions] DROP CONSTRAINT [FK_AssignmentAssignmentSolution];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentsAssignmentSolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AssignmentSolutions] DROP CONSTRAINT [FK_DocumentsAssignmentSolution];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentAssignmentSolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AssignmentSolutions] DROP CONSTRAINT [FK_StudentAssignmentSolution];
GO
IF OBJECT_ID(N'[dbo].[FK_UserDocuments]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Documents] DROP CONSTRAINT [FK_UserDocuments];
GO
IF OBJECT_ID(N'[dbo].[FK_UserStudent1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Students] DROP CONSTRAINT [FK_UserStudent1];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseTypeCourse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Courses] DROP CONSTRAINT [FK_CourseTypeCourse];
GO
IF OBJECT_ID(N'[dbo].[FK_BatchSemesters]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Semesters] DROP CONSTRAINT [FK_BatchSemesters];
GO
IF OBJECT_ID(N'[dbo].[FK_UserExperience]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Experiences] DROP CONSTRAINT [FK_UserExperience];
GO
IF OBJECT_ID(N'[dbo].[FK_UserQualification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Qualifications] DROP CONSTRAINT [FK_UserQualification];
GO
IF OBJECT_ID(N'[dbo].[FK_DesignationDesignation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Designations] DROP CONSTRAINT [FK_DesignationDesignation];
GO
IF OBJECT_ID(N'[dbo].[FK_DesignationEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_DesignationEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_InstituteGroupCollege]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Colleges] DROP CONSTRAINT [FK_InstituteGroupCollege];
GO
IF OBJECT_ID(N'[dbo].[FK_ExperienceEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_ExperienceEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteSpot]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Spots] DROP CONSTRAINT [FK_RouteSpot];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteVehicle_Route]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteVehicle] DROP CONSTRAINT [FK_RouteVehicle_Route];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteVehicle_Vehicle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteVehicle] DROP CONSTRAINT [FK_RouteVehicle_Vehicle];
GO
IF OBJECT_ID(N'[dbo].[FK_SpotUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_SpotUser];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentsSubject]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subjects1] DROP CONSTRAINT [FK_DocumentsSubject];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentsExam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Exams] DROP CONSTRAINT [FK_DocumentsExam];
GO
IF OBJECT_ID(N'[dbo].[FK_EventExam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Exams] DROP CONSTRAINT [FK_EventExam];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemIssueDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IssueDetailsSet] DROP CONSTRAINT [FK_ItemIssueDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_UserIssueDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IssueDetailsSet] DROP CONSTRAINT [FK_UserIssueDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_CollegeStore]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stores] DROP CONSTRAINT [FK_CollegeStore];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemItemRequisition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemRequisitions] DROP CONSTRAINT [FK_ItemItemRequisition];
GO
IF OBJECT_ID(N'[dbo].[FK_UserItemRequisition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemRequisitions] DROP CONSTRAINT [FK_UserItemRequisition];
GO
IF OBJECT_ID(N'[dbo].[FK_StoreItemRequisition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemRequisitions] DROP CONSTRAINT [FK_StoreItemRequisition];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemStock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stocks] DROP CONSTRAINT [FK_ItemStock];
GO
IF OBJECT_ID(N'[dbo].[FK_StoreStock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stocks] DROP CONSTRAINT [FK_StoreStock];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemItemSale]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemSales] DROP CONSTRAINT [FK_ItemItemSale];
GO
IF OBJECT_ID(N'[dbo].[FK_StoreItemSale]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemSales] DROP CONSTRAINT [FK_StoreItemSale];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [FK_CategoryCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InventorySet] DROP CONSTRAINT [FK_CategoryItem];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentsDocStore]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocStores] DROP CONSTRAINT [FK_DocumentsDocStore];
GO
IF OBJECT_ID(N'[dbo].[FK_TransactionTypeTransaction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Transactions] DROP CONSTRAINT [FK_TransactionTypeTransaction];
GO
IF OBJECT_ID(N'[dbo].[FK_UserAccount]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Accounts] DROP CONSTRAINT [FK_UserAccount];
GO
IF OBJECT_ID(N'[dbo].[FK_TransactionDebitsCredits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DebitsCredits] DROP CONSTRAINT [FK_TransactionDebitsCredits];
GO
IF OBJECT_ID(N'[dbo].[FK_AccountDebitsCredits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DebitsCredits] DROP CONSTRAINT [FK_AccountDebitsCredits];
GO
IF OBJECT_ID(N'[dbo].[FK_UserTransaction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Transactions] DROP CONSTRAINT [FK_UserTransaction];
GO
IF OBJECT_ID(N'[dbo].[FK_InstituteGroupTransaction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Transactions] DROP CONSTRAINT [FK_InstituteGroupTransaction];
GO
IF OBJECT_ID(N'[dbo].[FK_Book_inherits_Item]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InventorySet_Book] DROP CONSTRAINT [FK_Book_inherits_Item];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[Students]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Students];
GO
IF OBJECT_ID(N'[dbo].[Batches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Batches];
GO
IF OBJECT_ID(N'[dbo].[Colleges]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Colleges];
GO
IF OBJECT_ID(N'[dbo].[Courses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Courses];
GO
IF OBJECT_ID(N'[dbo].[Departments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departments];
GO
IF OBJECT_ID(N'[dbo].[Subjects1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subjects1];
GO
IF OBJECT_ID(N'[dbo].[Sections]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sections];
GO
IF OBJECT_ID(N'[dbo].[Semesters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Semesters];
GO
IF OBJECT_ID(N'[dbo].[Attendances]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Attendances];
GO
IF OBJECT_ID(N'[dbo].[Events]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Events];
GO
IF OBJECT_ID(N'[dbo].[SubjectInstances]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubjectInstances];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[Exams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Exams];
GO
IF OBJECT_ID(N'[dbo].[Results]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Results];
GO
IF OBJECT_ID(N'[dbo].[GlobalAudits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GlobalAudits];
GO
IF OBJECT_ID(N'[dbo].[Documents]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Documents];
GO
IF OBJECT_ID(N'[dbo].[Assignments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assignments];
GO
IF OBJECT_ID(N'[dbo].[AssignmentSolutions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AssignmentSolutions];
GO
IF OBJECT_ID(N'[dbo].[CourseTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CourseTypes];
GO
IF OBJECT_ID(N'[dbo].[Experiences]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Experiences];
GO
IF OBJECT_ID(N'[dbo].[Qualifications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Qualifications];
GO
IF OBJECT_ID(N'[dbo].[Designations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Designations];
GO
IF OBJECT_ID(N'[dbo].[InstituteGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InstituteGroups];
GO
IF OBJECT_ID(N'[dbo].[Spots]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Spots];
GO
IF OBJECT_ID(N'[dbo].[Routes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Routes];
GO
IF OBJECT_ID(N'[dbo].[Vehicles1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vehicles1];
GO
IF OBJECT_ID(N'[dbo].[InventorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InventorySet];
GO
IF OBJECT_ID(N'[dbo].[IssueDetailsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IssueDetailsSet];
GO
IF OBJECT_ID(N'[dbo].[Stores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Stores];
GO
IF OBJECT_ID(N'[dbo].[ItemRequisitions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ItemRequisitions];
GO
IF OBJECT_ID(N'[dbo].[Stocks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Stocks];
GO
IF OBJECT_ID(N'[dbo].[ItemSales]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ItemSales];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[DocStores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocStores];
GO
IF OBJECT_ID(N'[dbo].[Transactions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Transactions];
GO
IF OBJECT_ID(N'[dbo].[TransactionTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TransactionTypes];
GO
IF OBJECT_ID(N'[dbo].[Accounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts];
GO
IF OBJECT_ID(N'[dbo].[DebitsCredits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DebitsCredits];
GO
IF OBJECT_ID(N'[dbo].[InventorySet_Book]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InventorySet_Book];
GO
IF OBJECT_ID(N'[dbo].[RouteVehicle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RouteVehicle];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UIId] nvarchar(max)  NULL,
    [Name_First] nvarchar(max)  NOT NULL,
    [Name_Middle] nvarchar(max)  NOT NULL,
    [Name_Last] nvarchar(max)  NOT NULL,
    [Contact_Fax2] nvarchar(max)  NULL,
    [Contact_Fax] nvarchar(max)  NULL,
    [Contact_Landline2] nvarchar(max)  NULL,
    [Contact_Landline] nvarchar(max)  NULL,
    [Contact_EmailId] nvarchar(max)  NULL,
    [Contact_Website] nvarchar(max)  NULL,
    [Contact_Mobile] nvarchar(max)  NOT NULL,
    [PostalAddress_Street] nvarchar(max)  NULL,
    [PostalAddress_City] nvarchar(max)  NULL,
    [PostalAddress_Region] nvarchar(max)  NULL,
    [PostalAddress_Country] nvarchar(max)  NULL,
    [PostalAddress_PostalCode] nvarchar(max)  NULL,
    [PostalAddress_Landmark] nvarchar(max)  NULL,
    [PostalAddress_Unit] nvarchar(max)  NOT NULL,
    [PermanentAddress_Street] nvarchar(max)  NULL,
    [PermanentAddress_City] nvarchar(max)  NULL,
    [PermanentAddress_Region] nvarchar(max)  NULL,
    [PermanentAddress_Country] nvarchar(max)  NULL,
    [PermanentAddress_PostalCode] nvarchar(max)  NULL,
    [PermanentAddress_Landmark] nvarchar(max)  NULL,
    [PermanentAddress_Unit] nvarchar(max)  NOT NULL,
    [FatherName] nvarchar(max)  NULL,
    [MotherName] nvarchar(max)  NULL,
    [DOB] datetime  NOT NULL,
    [Gender] nvarchar(max)  NULL,
    [Ineterests] nvarchar(max)  NULL,
    [Remarks] nvarchar(max)  NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Spot_Id] int  NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AppointmentLetterNo] nvarchar(max)  NULL,
    [AreaOfSpecialization] nvarchar(max)  NULL,
    [Category] nvarchar(max)  NULL,
    [FinancialDetails_BankName] nvarchar(max)  NULL,
    [FinancialDetails_BankAccNo] nvarchar(max)  NULL,
    [FinancialDetails_PANNo] nvarchar(max)  NULL,
    [FinancialDetails_PFNo] nvarchar(max)  NULL,
    [EmployeeNo] int  NULL,
    [Status] nvarchar(max)  NOT NULL,
    [User_Id] int  NOT NULL,
    [ReportingOfficer_Id] int  NULL,
    [Department_Id] int  NOT NULL,
    [Designation_Id] int  NOT NULL
);
GO

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ClassRollNo] nvarchar(max)  NULL,
    [UniversityRollNo] nvarchar(max)  NULL,
    [EnrollmentDate] datetime  NULL,
    [RegistrationDate] datetime  NULL,
    [Status] nvarchar(max)  NOT NULL,
    [User_Id] int  NOT NULL,
    [Section_Id] int  NOT NULL,
    [SubjectInstance_Id] int  NOT NULL,
    [Parent_Id] int  NULL
);
GO

-- Creating table 'Batches'
CREATE TABLE [dbo].[Batches] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [Status] real  NOT NULL,
    [LastRollNo] int  NOT NULL,
    [Course_Id] int  NOT NULL
);
GO

-- Creating table 'Colleges'
CREATE TABLE [dbo].[Colleges] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ShortName] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [University] nvarchar(max)  NULL,
    [Address_Street] nvarchar(max)  NULL,
    [Address_City] nvarchar(max)  NULL,
    [Address_Region] nvarchar(max)  NULL,
    [Address_Country] nvarchar(max)  NULL,
    [Address_PostalCode] nvarchar(max)  NULL,
    [Address_Landmark] nvarchar(max)  NULL,
    [Address_Unit] nvarchar(max)  NOT NULL,
    [Contact_Fax2] nvarchar(max)  NULL,
    [Contact_Fax] nvarchar(max)  NULL,
    [Contact_Landline2] nvarchar(max)  NULL,
    [Contact_Landline] nvarchar(max)  NULL,
    [Contact_EmailId] nvarchar(max)  NULL,
    [Contact_Website] nvarchar(max)  NULL,
    [Contact_Mobile] nvarchar(max)  NOT NULL,
    [UIId] nvarchar(max)  NOT NULL,
    [InstituteGroup_Id] int  NOT NULL
);
GO

-- Creating table 'Courses'
CREATE TABLE [dbo].[Courses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Duration] int  NOT NULL,
    [Code] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [Department_Id] int  NOT NULL,
    [CourseType_Id] int  NOT NULL
);
GO

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ShortName] nvarchar(max)  NULL,
    [MaxStrength] int  NULL,
    [Description] nvarchar(max)  NULL,
    [College_Id] int  NOT NULL
);
GO

-- Creating table 'Subjects1'
CREATE TABLE [dbo].[Subjects1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Code] nvarchar(max)  NULL,
    [MaxSessionalMarks] int  NOT NULL,
    [MaxInternalMarks] int  NOT NULL,
    [MaxLabMarks] int  NOT NULL,
    [MaxAssignmentsMarks] int  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Department_Id] int  NOT NULL,
    [Semester_Id] int  NOT NULL,
    [Syllabus_Id] int  NULL
);
GO

-- Creating table 'Sections'
CREATE TABLE [dbo].[Sections] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [MaxStrength] int  NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [Batch_Id] int  NOT NULL
);
GO

-- Creating table 'Semesters'
CREATE TABLE [dbo].[Semesters] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Course_Id] int  NOT NULL,
    [Batch_Id] int  NOT NULL
);
GO

-- Creating table 'Attendances'
CREATE TABLE [dbo].[Attendances] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Attended] bit  NOT NULL,
    [Remarks] nvarchar(max)  NOT NULL,
    [Event_Id] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Events'
CREATE TABLE [dbo].[Events] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EventType] nvarchar(max)  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [Duration] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Remarks] nvarchar(max)  NOT NULL,
    [Topic] nvarchar(max)  NOT NULL,
    [Reminder] int  NULL,
    [SubjectInstance_Id] int  NULL,
    [Location_Id] int  NOT NULL
);
GO

-- Creating table 'SubjectInstances'
CREATE TABLE [dbo].[SubjectInstances] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Subject_Id] int  NOT NULL,
    [Faculty_Id] int  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Capacity] int  NOT NULL,
    [HasProjector] bit  NOT NULL
);
GO

-- Creating table 'Exams'
CREATE TABLE [dbo].[Exams] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ExamType] nvarchar(max)  NOT NULL,
    [MaxMarks] int  NOT NULL,
    [PassingMarks] int  NULL,
    [Subject_Id] int  NOT NULL,
    [QuestionPaper_Id] int  NULL,
    [Event_Id] int  NOT NULL
);
GO

-- Creating table 'Results'
CREATE TABLE [dbo].[Results] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Score] float  NOT NULL,
    [Status] bit  NOT NULL,
    [Student_Id] int  NOT NULL,
    [Exam_Id] int  NOT NULL
);
GO

-- Creating table 'GlobalAudits'
CREATE TABLE [dbo].[GlobalAudits] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TableName] nvarchar(max)  NOT NULL,
    [ColumnName] nvarchar(max)  NOT NULL,
    [OldValue] nvarchar(max)  NOT NULL,
    [NewValue] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [Operation] nvarchar(max)  NOT NULL,
    [ApplicationId] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Documents'
CREATE TABLE [dbo].[Documents] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MediaType] nvarchar(max)  NOT NULL,
    [FileName] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [UploadedDate] datetime  NULL,
    [Name] nvarchar(max)  NOT NULL,
    [LocationType] nvarchar(max)  NOT NULL,
    [UploadedBy_Id] int  NOT NULL
);
GO

-- Creating table 'Assignments'
CREATE TABLE [dbo].[Assignments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Topic] nvarchar(max)  NOT NULL,
    [StartDate] datetime  NULL,
    [LastDate] datetime  NULL,
    [Subject_Id] int  NOT NULL,
    [Questionnaire_Id] int  NOT NULL
);
GO

-- Creating table 'AssignmentSolutions'
CREATE TABLE [dbo].[AssignmentSolutions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Assignment_Id] int  NOT NULL,
    [Document_Id] int  NOT NULL,
    [Student_Id] int  NOT NULL
);
GO

-- Creating table 'CourseTypes'
CREATE TABLE [dbo].[CourseTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Experiences'
CREATE TABLE [dbo].[Experiences] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Employer] nvarchar(max)  NOT NULL,
    [JoiningDate] datetime  NOT NULL,
    [LastDate] datetime  NULL,
    [LastSalary] nvarchar(max)  NULL,
    [JoiningSalary] nvarchar(max)  NULL,
    [Designation] nvarchar(max)  NULL,
    [IsCurrent] bit  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Qualifications'
CREATE TABLE [dbo].[Qualifications] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [School] nvarchar(max)  NOT NULL,
    [YearOfPassing] nvarchar(max)  NOT NULL,
    [CourseType] nvarchar(max)  NOT NULL,
    [Score] nvarchar(max)  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Designations'
CREATE TABLE [dbo].[Designations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Responsibilities] nvarchar(max)  NOT NULL,
    [Role] nvarchar(max)  NULL,
    [Inherits_Id] int  NULL
);
GO

-- Creating table 'InstituteGroups'
CREATE TABLE [dbo].[InstituteGroups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LastEmployeeNo] int  NOT NULL,
    [LastTransactionNo] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Spots'
CREATE TABLE [dbo].[Spots] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StopName] nvarchar(max)  NOT NULL,
    [Area] nvarchar(max)  NULL,
    [ArrivalTime] datetime  NULL,
    [Description] nvarchar(max)  NULL,
    [Position_Latitude] float  NULL,
    [Position_Longitude] float  NOT NULL,
    [Route_Id] int  NOT NULL
);
GO

-- Creating table 'Routes'
CREATE TABLE [dbo].[Routes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StartTime] datetime  NULL,
    [RouteLength] int  NULL,
    [Description] nvarchar(max)  NULL
);
GO

-- Creating table 'Vehicles1'
CREATE TABLE [dbo].[Vehicles1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NULL,
    [Capacity] nvarchar(max)  NULL,
    [VehicleNo] nvarchar(max)  NULL,
    [EngineNo] nvarchar(max)  NULL,
    [ChasisNo] nvarchar(max)  NULL,
    [Make] nvarchar(max)  NULL,
    [Model] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL
);
GO

-- Creating table 'InventorySet'
CREATE TABLE [dbo].[InventorySet] (
    [Id] int  NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Code] nvarchar(max)  NULL,
    [Price] int  NULL,
    [BarCode] nvarchar(max)  NULL,
    [Category_Id] int  NOT NULL
);
GO

-- Creating table 'IssueDetailsSet'
CREATE TABLE [dbo].[IssueDetailsSet] (
    [Id] int  NOT NULL,
    [DateofIssue] datetime  NOT NULL,
    [DateOfReturn] datetime  NULL,
    [Remarks] nvarchar(max)  NULL,
    [Item_Id] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Stores'
CREATE TABLE [dbo].[Stores] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Code] nvarchar(max)  NULL,
    [IssuePeriod] int  NULL,
    [LastRequisitionNo] int  NOT NULL,
    [LastSaleNo] int  NOT NULL,
    [College_Id] int  NOT NULL
);
GO

-- Creating table 'ItemRequisitions'
CREATE TABLE [dbo].[ItemRequisitions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReceivedQuantity] int  NOT NULL,
    [DateOfRequisition] datetime  NOT NULL,
    [Reason] nvarchar(max)  NULL,
    [Status] nvarchar(max)  NOT NULL,
    [RequestedQuantity] int  NOT NULL,
    [ReceivedDate] datetime  NULL,
    [Remarks] nvarchar(max)  NULL,
    [RequistionNo] nvarchar(max)  NOT NULL,
    [Item_Id] int  NOT NULL,
    [RaisedBy_Id] int  NOT NULL,
    [Store_Id] int  NOT NULL
);
GO

-- Creating table 'Stocks'
CREATE TABLE [dbo].[Stocks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Quantity] int  NOT NULL,
    [Remarks] nvarchar(max)  NOT NULL,
    [Unit] nvarchar(max)  NOT NULL,
    [Item_Id] int  NOT NULL,
    [Store_Id] int  NOT NULL
);
GO

-- Creating table 'ItemSales'
CREATE TABLE [dbo].[ItemSales] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Quantity] int  NOT NULL,
    [SaleDate] datetime  NOT NULL,
    [SaleNo] nvarchar(max)  NOT NULL,
    [Item_Id] int  NOT NULL,
    [Store_Id] int  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Parent_Id] int  NULL
);
GO

-- Creating table 'DocStores'
CREATE TABLE [dbo].[DocStores] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [MimeType] nvarchar(max)  NOT NULL,
    [Data] varbinary(max)  NOT NULL,
    [Document_Id] int  NOT NULL
);
GO

-- Creating table 'Transactions'
CREATE TABLE [dbo].[Transactions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [TransactionDate] datetime  NOT NULL,
    [Remarks] nvarchar(max)  NULL,
    [TransactionNo] nvarchar(max)  NOT NULL,
    [Amount] float  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [DueDate] datetime  NULL,
    [TransactionType_Id] int  NOT NULL,
    [AssociatedUser_Id] int  NOT NULL,
    [InstituteGroup_Id] int  NOT NULL
);
GO

-- Creating table 'TransactionTypes'
CREATE TABLE [dbo].[TransactionTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [SuggestedAmount] int  NULL
);
GO

-- Creating table 'Accounts'
CREATE TABLE [dbo].[Accounts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [AccountType] nvarchar(max)  NOT NULL,
    [AccountNo] nvarchar(max)  NOT NULL,
    [User_Id] int  NULL
);
GO

-- Creating table 'DebitsCredits'
CREATE TABLE [dbo].[DebitsCredits] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Amount] float  NOT NULL,
    [Type] bit  NOT NULL,
    [Transaction_Id] int  NOT NULL,
    [Account_Id] int  NOT NULL
);
GO

-- Creating table 'InventorySet_Book'
CREATE TABLE [dbo].[InventorySet_Book] (
    [ISBN] nvarchar(max)  NOT NULL,
    [Author] int  NULL,
    [Publisher] nvarchar(max)  NULL,
    [Edition] nvarchar(max)  NULL,
    [Year] nvarchar(max)  NULL,
    [Title] nvarchar(max)  NULL,
    [Id] int  NOT NULL,
    [Subject_Id] int  NOT NULL
);
GO

-- Creating table 'RouteVehicle'
CREATE TABLE [dbo].[RouteVehicle] (
    [Routes_Id] int  NOT NULL,
    [Vehicles_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Batches'
ALTER TABLE [dbo].[Batches]
ADD CONSTRAINT [PK_Batches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Colleges'
ALTER TABLE [dbo].[Colleges]
ADD CONSTRAINT [PK_Colleges]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [PK_Courses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Subjects1'
ALTER TABLE [dbo].[Subjects1]
ADD CONSTRAINT [PK_Subjects1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sections'
ALTER TABLE [dbo].[Sections]
ADD CONSTRAINT [PK_Sections]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Semesters'
ALTER TABLE [dbo].[Semesters]
ADD CONSTRAINT [PK_Semesters]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Attendances'
ALTER TABLE [dbo].[Attendances]
ADD CONSTRAINT [PK_Attendances]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Events'
ALTER TABLE [dbo].[Events]
ADD CONSTRAINT [PK_Events]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SubjectInstances'
ALTER TABLE [dbo].[SubjectInstances]
ADD CONSTRAINT [PK_SubjectInstances]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Exams'
ALTER TABLE [dbo].[Exams]
ADD CONSTRAINT [PK_Exams]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [PK_Results]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GlobalAudits'
ALTER TABLE [dbo].[GlobalAudits]
ADD CONSTRAINT [PK_GlobalAudits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Documents'
ALTER TABLE [dbo].[Documents]
ADD CONSTRAINT [PK_Documents]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Assignments'
ALTER TABLE [dbo].[Assignments]
ADD CONSTRAINT [PK_Assignments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AssignmentSolutions'
ALTER TABLE [dbo].[AssignmentSolutions]
ADD CONSTRAINT [PK_AssignmentSolutions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CourseTypes'
ALTER TABLE [dbo].[CourseTypes]
ADD CONSTRAINT [PK_CourseTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Experiences'
ALTER TABLE [dbo].[Experiences]
ADD CONSTRAINT [PK_Experiences]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Qualifications'
ALTER TABLE [dbo].[Qualifications]
ADD CONSTRAINT [PK_Qualifications]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Designations'
ALTER TABLE [dbo].[Designations]
ADD CONSTRAINT [PK_Designations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InstituteGroups'
ALTER TABLE [dbo].[InstituteGroups]
ADD CONSTRAINT [PK_InstituteGroups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Spots'
ALTER TABLE [dbo].[Spots]
ADD CONSTRAINT [PK_Spots]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Routes'
ALTER TABLE [dbo].[Routes]
ADD CONSTRAINT [PK_Routes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Vehicles1'
ALTER TABLE [dbo].[Vehicles1]
ADD CONSTRAINT [PK_Vehicles1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InventorySet'
ALTER TABLE [dbo].[InventorySet]
ADD CONSTRAINT [PK_InventorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'IssueDetailsSet'
ALTER TABLE [dbo].[IssueDetailsSet]
ADD CONSTRAINT [PK_IssueDetailsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Stores'
ALTER TABLE [dbo].[Stores]
ADD CONSTRAINT [PK_Stores]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ItemRequisitions'
ALTER TABLE [dbo].[ItemRequisitions]
ADD CONSTRAINT [PK_ItemRequisitions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Stocks'
ALTER TABLE [dbo].[Stocks]
ADD CONSTRAINT [PK_Stocks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ItemSales'
ALTER TABLE [dbo].[ItemSales]
ADD CONSTRAINT [PK_ItemSales]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DocStores'
ALTER TABLE [dbo].[DocStores]
ADD CONSTRAINT [PK_DocStores]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Transactions'
ALTER TABLE [dbo].[Transactions]
ADD CONSTRAINT [PK_Transactions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TransactionTypes'
ALTER TABLE [dbo].[TransactionTypes]
ADD CONSTRAINT [PK_TransactionTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accounts'
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT [PK_Accounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DebitsCredits'
ALTER TABLE [dbo].[DebitsCredits]
ADD CONSTRAINT [PK_DebitsCredits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InventorySet_Book'
ALTER TABLE [dbo].[InventorySet_Book]
ADD CONSTRAINT [PK_InventorySet_Book]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Routes_Id], [Vehicles_Id] in table 'RouteVehicle'
ALTER TABLE [dbo].[RouteVehicle]
ADD CONSTRAINT [PK_RouteVehicle]
    PRIMARY KEY NONCLUSTERED ([Routes_Id], [Vehicles_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [User_Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_UserStudent]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserStudent'
CREATE INDEX [IX_FK_UserStudent]
ON [dbo].[Students]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_UserEmployee]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserEmployee'
CREATE INDEX [IX_FK_UserEmployee]
ON [dbo].[Employees]
    ([User_Id]);
GO

-- Creating foreign key on [College_Id] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [FK_CollegeDepartment]
    FOREIGN KEY ([College_Id])
    REFERENCES [dbo].[Colleges]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CollegeDepartment'
CREATE INDEX [IX_FK_CollegeDepartment]
ON [dbo].[Departments]
    ([College_Id]);
GO

-- Creating foreign key on [Department_Id] in table 'Subjects1'
ALTER TABLE [dbo].[Subjects1]
ADD CONSTRAINT [FK_DepartmentSubjects]
    FOREIGN KEY ([Department_Id])
    REFERENCES [dbo].[Departments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentSubjects'
CREATE INDEX [IX_FK_DepartmentSubjects]
ON [dbo].[Subjects1]
    ([Department_Id]);
GO

-- Creating foreign key on [Course_Id] in table 'Semesters'
ALTER TABLE [dbo].[Semesters]
ADD CONSTRAINT [FK_CourseSemesters]
    FOREIGN KEY ([Course_Id])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseSemesters'
CREATE INDEX [IX_FK_CourseSemesters]
ON [dbo].[Semesters]
    ([Course_Id]);
GO

-- Creating foreign key on [ReportingOfficer_Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_EmployeeReportingOfficer]
    FOREIGN KEY ([ReportingOfficer_Id])
    REFERENCES [dbo].[Employees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeReportingOfficer'
CREATE INDEX [IX_FK_EmployeeReportingOfficer]
ON [dbo].[Employees]
    ([ReportingOfficer_Id]);
GO

-- Creating foreign key on [Course_Id] in table 'Batches'
ALTER TABLE [dbo].[Batches]
ADD CONSTRAINT [FK_CourseBatch]
    FOREIGN KEY ([Course_Id])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseBatch'
CREATE INDEX [IX_FK_CourseBatch]
ON [dbo].[Batches]
    ([Course_Id]);
GO

-- Creating foreign key on [Department_Id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [FK_DepartmentCourse]
    FOREIGN KEY ([Department_Id])
    REFERENCES [dbo].[Departments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentCourse'
CREATE INDEX [IX_FK_DepartmentCourse]
ON [dbo].[Courses]
    ([Department_Id]);
GO

-- Creating foreign key on [Semester_Id] in table 'Subjects1'
ALTER TABLE [dbo].[Subjects1]
ADD CONSTRAINT [FK_SemestersSubject]
    FOREIGN KEY ([Semester_Id])
    REFERENCES [dbo].[Semesters]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SemestersSubject'
CREATE INDEX [IX_FK_SemestersSubject]
ON [dbo].[Subjects1]
    ([Semester_Id]);
GO

-- Creating foreign key on [Department_Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_DepartmentEmployee]
    FOREIGN KEY ([Department_Id])
    REFERENCES [dbo].[Departments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentEmployee'
CREATE INDEX [IX_FK_DepartmentEmployee]
ON [dbo].[Employees]
    ([Department_Id]);
GO

-- Creating foreign key on [Batch_Id] in table 'Sections'
ALTER TABLE [dbo].[Sections]
ADD CONSTRAINT [FK_BatchSection]
    FOREIGN KEY ([Batch_Id])
    REFERENCES [dbo].[Batches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BatchSection'
CREATE INDEX [IX_FK_BatchSection]
ON [dbo].[Sections]
    ([Batch_Id]);
GO

-- Creating foreign key on [Section_Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_SectionStudent]
    FOREIGN KEY ([Section_Id])
    REFERENCES [dbo].[Sections]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SectionStudent'
CREATE INDEX [IX_FK_SectionStudent]
ON [dbo].[Students]
    ([Section_Id]);
GO

-- Creating foreign key on [Event_Id] in table 'Attendances'
ALTER TABLE [dbo].[Attendances]
ADD CONSTRAINT [FK_EventAttendance]
    FOREIGN KEY ([Event_Id])
    REFERENCES [dbo].[Events]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EventAttendance'
CREATE INDEX [IX_FK_EventAttendance]
ON [dbo].[Attendances]
    ([Event_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Attendances'
ALTER TABLE [dbo].[Attendances]
ADD CONSTRAINT [FK_UserAttendance]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserAttendance'
CREATE INDEX [IX_FK_UserAttendance]
ON [dbo].[Attendances]
    ([User_Id]);
GO

-- Creating foreign key on [Subject_Id] in table 'SubjectInstances'
ALTER TABLE [dbo].[SubjectInstances]
ADD CONSTRAINT [FK_SubjectSubjectInstance]
    FOREIGN KEY ([Subject_Id])
    REFERENCES [dbo].[Subjects1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectSubjectInstance'
CREATE INDEX [IX_FK_SubjectSubjectInstance]
ON [dbo].[SubjectInstances]
    ([Subject_Id]);
GO

-- Creating foreign key on [Subject_Id] in table 'InventorySet_Book'
ALTER TABLE [dbo].[InventorySet_Book]
ADD CONSTRAINT [FK_SubjectBook]
    FOREIGN KEY ([Subject_Id])
    REFERENCES [dbo].[Subjects1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectBook'
CREATE INDEX [IX_FK_SubjectBook]
ON [dbo].[InventorySet_Book]
    ([Subject_Id]);
GO

-- Creating foreign key on [Faculty_Id] in table 'SubjectInstances'
ALTER TABLE [dbo].[SubjectInstances]
ADD CONSTRAINT [FK_EmployeeSubjectInstance]
    FOREIGN KEY ([Faculty_Id])
    REFERENCES [dbo].[Employees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeSubjectInstance'
CREATE INDEX [IX_FK_EmployeeSubjectInstance]
ON [dbo].[SubjectInstances]
    ([Faculty_Id]);
GO

-- Creating foreign key on [SubjectInstance_Id] in table 'Events'
ALTER TABLE [dbo].[Events]
ADD CONSTRAINT [FK_SubjectInstanceEvent]
    FOREIGN KEY ([SubjectInstance_Id])
    REFERENCES [dbo].[SubjectInstances]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectInstanceEvent'
CREATE INDEX [IX_FK_SubjectInstanceEvent]
ON [dbo].[Events]
    ([SubjectInstance_Id]);
GO

-- Creating foreign key on [Location_Id] in table 'Events'
ALTER TABLE [dbo].[Events]
ADD CONSTRAINT [FK_LocationEvent]
    FOREIGN KEY ([Location_Id])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationEvent'
CREATE INDEX [IX_FK_LocationEvent]
ON [dbo].[Events]
    ([Location_Id]);
GO

-- Creating foreign key on [SubjectInstance_Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_SubjectInstanceStudent]
    FOREIGN KEY ([SubjectInstance_Id])
    REFERENCES [dbo].[SubjectInstances]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectInstanceStudent'
CREATE INDEX [IX_FK_SubjectInstanceStudent]
ON [dbo].[Students]
    ([SubjectInstance_Id]);
GO

-- Creating foreign key on [Student_Id] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [FK_StudentResult]
    FOREIGN KEY ([Student_Id])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentResult'
CREATE INDEX [IX_FK_StudentResult]
ON [dbo].[Results]
    ([Student_Id]);
GO

-- Creating foreign key on [Exam_Id] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [FK_ExamResult]
    FOREIGN KEY ([Exam_Id])
    REFERENCES [dbo].[Exams]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ExamResult'
CREATE INDEX [IX_FK_ExamResult]
ON [dbo].[Results]
    ([Exam_Id]);
GO

-- Creating foreign key on [Subject_Id] in table 'Exams'
ALTER TABLE [dbo].[Exams]
ADD CONSTRAINT [FK_SubjectExam]
    FOREIGN KEY ([Subject_Id])
    REFERENCES [dbo].[Subjects1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectExam'
CREATE INDEX [IX_FK_SubjectExam]
ON [dbo].[Exams]
    ([Subject_Id]);
GO

-- Creating foreign key on [Subject_Id] in table 'Assignments'
ALTER TABLE [dbo].[Assignments]
ADD CONSTRAINT [FK_SubjectAssignment]
    FOREIGN KEY ([Subject_Id])
    REFERENCES [dbo].[Subjects1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectAssignment'
CREATE INDEX [IX_FK_SubjectAssignment]
ON [dbo].[Assignments]
    ([Subject_Id]);
GO

-- Creating foreign key on [Questionnaire_Id] in table 'Assignments'
ALTER TABLE [dbo].[Assignments]
ADD CONSTRAINT [FK_DocumentsAssignment]
    FOREIGN KEY ([Questionnaire_Id])
    REFERENCES [dbo].[Documents]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentsAssignment'
CREATE INDEX [IX_FK_DocumentsAssignment]
ON [dbo].[Assignments]
    ([Questionnaire_Id]);
GO

-- Creating foreign key on [Assignment_Id] in table 'AssignmentSolutions'
ALTER TABLE [dbo].[AssignmentSolutions]
ADD CONSTRAINT [FK_AssignmentAssignmentSolution]
    FOREIGN KEY ([Assignment_Id])
    REFERENCES [dbo].[Assignments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AssignmentAssignmentSolution'
CREATE INDEX [IX_FK_AssignmentAssignmentSolution]
ON [dbo].[AssignmentSolutions]
    ([Assignment_Id]);
GO

-- Creating foreign key on [Document_Id] in table 'AssignmentSolutions'
ALTER TABLE [dbo].[AssignmentSolutions]
ADD CONSTRAINT [FK_DocumentsAssignmentSolution]
    FOREIGN KEY ([Document_Id])
    REFERENCES [dbo].[Documents]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentsAssignmentSolution'
CREATE INDEX [IX_FK_DocumentsAssignmentSolution]
ON [dbo].[AssignmentSolutions]
    ([Document_Id]);
GO

-- Creating foreign key on [Student_Id] in table 'AssignmentSolutions'
ALTER TABLE [dbo].[AssignmentSolutions]
ADD CONSTRAINT [FK_StudentAssignmentSolution]
    FOREIGN KEY ([Student_Id])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentAssignmentSolution'
CREATE INDEX [IX_FK_StudentAssignmentSolution]
ON [dbo].[AssignmentSolutions]
    ([Student_Id]);
GO

-- Creating foreign key on [UploadedBy_Id] in table 'Documents'
ALTER TABLE [dbo].[Documents]
ADD CONSTRAINT [FK_UserDocuments]
    FOREIGN KEY ([UploadedBy_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserDocuments'
CREATE INDEX [IX_FK_UserDocuments]
ON [dbo].[Documents]
    ([UploadedBy_Id]);
GO

-- Creating foreign key on [Parent_Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_UserStudent1]
    FOREIGN KEY ([Parent_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserStudent1'
CREATE INDEX [IX_FK_UserStudent1]
ON [dbo].[Students]
    ([Parent_Id]);
GO

-- Creating foreign key on [CourseType_Id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [FK_CourseTypeCourse]
    FOREIGN KEY ([CourseType_Id])
    REFERENCES [dbo].[CourseTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseTypeCourse'
CREATE INDEX [IX_FK_CourseTypeCourse]
ON [dbo].[Courses]
    ([CourseType_Id]);
GO

-- Creating foreign key on [Batch_Id] in table 'Semesters'
ALTER TABLE [dbo].[Semesters]
ADD CONSTRAINT [FK_BatchSemesters]
    FOREIGN KEY ([Batch_Id])
    REFERENCES [dbo].[Batches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BatchSemesters'
CREATE INDEX [IX_FK_BatchSemesters]
ON [dbo].[Semesters]
    ([Batch_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Experiences'
ALTER TABLE [dbo].[Experiences]
ADD CONSTRAINT [FK_UserExperience]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserExperience'
CREATE INDEX [IX_FK_UserExperience]
ON [dbo].[Experiences]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Qualifications'
ALTER TABLE [dbo].[Qualifications]
ADD CONSTRAINT [FK_UserQualification]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserQualification'
CREATE INDEX [IX_FK_UserQualification]
ON [dbo].[Qualifications]
    ([User_Id]);
GO

-- Creating foreign key on [Inherits_Id] in table 'Designations'
ALTER TABLE [dbo].[Designations]
ADD CONSTRAINT [FK_DesignationDesignation]
    FOREIGN KEY ([Inherits_Id])
    REFERENCES [dbo].[Designations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DesignationDesignation'
CREATE INDEX [IX_FK_DesignationDesignation]
ON [dbo].[Designations]
    ([Inherits_Id]);
GO

-- Creating foreign key on [Designation_Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_DesignationEmployee]
    FOREIGN KEY ([Designation_Id])
    REFERENCES [dbo].[Designations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DesignationEmployee'
CREATE INDEX [IX_FK_DesignationEmployee]
ON [dbo].[Employees]
    ([Designation_Id]);
GO

-- Creating foreign key on [InstituteGroup_Id] in table 'Colleges'
ALTER TABLE [dbo].[Colleges]
ADD CONSTRAINT [FK_InstituteGroupCollege]
    FOREIGN KEY ([InstituteGroup_Id])
    REFERENCES [dbo].[InstituteGroups]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InstituteGroupCollege'
CREATE INDEX [IX_FK_InstituteGroupCollege]
ON [dbo].[Colleges]
    ([InstituteGroup_Id]);
GO

-- Creating foreign key on [Route_Id] in table 'Spots'
ALTER TABLE [dbo].[Spots]
ADD CONSTRAINT [FK_RouteSpot]
    FOREIGN KEY ([Route_Id])
    REFERENCES [dbo].[Routes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RouteSpot'
CREATE INDEX [IX_FK_RouteSpot]
ON [dbo].[Spots]
    ([Route_Id]);
GO

-- Creating foreign key on [Routes_Id] in table 'RouteVehicle'
ALTER TABLE [dbo].[RouteVehicle]
ADD CONSTRAINT [FK_RouteVehicle_Route]
    FOREIGN KEY ([Routes_Id])
    REFERENCES [dbo].[Routes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Vehicles_Id] in table 'RouteVehicle'
ALTER TABLE [dbo].[RouteVehicle]
ADD CONSTRAINT [FK_RouteVehicle_Vehicle]
    FOREIGN KEY ([Vehicles_Id])
    REFERENCES [dbo].[Vehicles1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RouteVehicle_Vehicle'
CREATE INDEX [IX_FK_RouteVehicle_Vehicle]
ON [dbo].[RouteVehicle]
    ([Vehicles_Id]);
GO

-- Creating foreign key on [Spot_Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_SpotUser]
    FOREIGN KEY ([Spot_Id])
    REFERENCES [dbo].[Spots]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SpotUser'
CREATE INDEX [IX_FK_SpotUser]
ON [dbo].[Users]
    ([Spot_Id]);
GO

-- Creating foreign key on [Syllabus_Id] in table 'Subjects1'
ALTER TABLE [dbo].[Subjects1]
ADD CONSTRAINT [FK_DocumentsSubject]
    FOREIGN KEY ([Syllabus_Id])
    REFERENCES [dbo].[Documents]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentsSubject'
CREATE INDEX [IX_FK_DocumentsSubject]
ON [dbo].[Subjects1]
    ([Syllabus_Id]);
GO

-- Creating foreign key on [QuestionPaper_Id] in table 'Exams'
ALTER TABLE [dbo].[Exams]
ADD CONSTRAINT [FK_DocumentsExam]
    FOREIGN KEY ([QuestionPaper_Id])
    REFERENCES [dbo].[Documents]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentsExam'
CREATE INDEX [IX_FK_DocumentsExam]
ON [dbo].[Exams]
    ([QuestionPaper_Id]);
GO

-- Creating foreign key on [Event_Id] in table 'Exams'
ALTER TABLE [dbo].[Exams]
ADD CONSTRAINT [FK_EventExam]
    FOREIGN KEY ([Event_Id])
    REFERENCES [dbo].[Events]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EventExam'
CREATE INDEX [IX_FK_EventExam]
ON [dbo].[Exams]
    ([Event_Id]);
GO

-- Creating foreign key on [Item_Id] in table 'IssueDetailsSet'
ALTER TABLE [dbo].[IssueDetailsSet]
ADD CONSTRAINT [FK_ItemIssueDetails]
    FOREIGN KEY ([Item_Id])
    REFERENCES [dbo].[InventorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemIssueDetails'
CREATE INDEX [IX_FK_ItemIssueDetails]
ON [dbo].[IssueDetailsSet]
    ([Item_Id]);
GO

-- Creating foreign key on [User_Id] in table 'IssueDetailsSet'
ALTER TABLE [dbo].[IssueDetailsSet]
ADD CONSTRAINT [FK_UserIssueDetails]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserIssueDetails'
CREATE INDEX [IX_FK_UserIssueDetails]
ON [dbo].[IssueDetailsSet]
    ([User_Id]);
GO

-- Creating foreign key on [College_Id] in table 'Stores'
ALTER TABLE [dbo].[Stores]
ADD CONSTRAINT [FK_CollegeStore]
    FOREIGN KEY ([College_Id])
    REFERENCES [dbo].[Colleges]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CollegeStore'
CREATE INDEX [IX_FK_CollegeStore]
ON [dbo].[Stores]
    ([College_Id]);
GO

-- Creating foreign key on [Item_Id] in table 'ItemRequisitions'
ALTER TABLE [dbo].[ItemRequisitions]
ADD CONSTRAINT [FK_ItemItemRequisition]
    FOREIGN KEY ([Item_Id])
    REFERENCES [dbo].[InventorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemItemRequisition'
CREATE INDEX [IX_FK_ItemItemRequisition]
ON [dbo].[ItemRequisitions]
    ([Item_Id]);
GO

-- Creating foreign key on [RaisedBy_Id] in table 'ItemRequisitions'
ALTER TABLE [dbo].[ItemRequisitions]
ADD CONSTRAINT [FK_UserItemRequisition]
    FOREIGN KEY ([RaisedBy_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserItemRequisition'
CREATE INDEX [IX_FK_UserItemRequisition]
ON [dbo].[ItemRequisitions]
    ([RaisedBy_Id]);
GO

-- Creating foreign key on [Store_Id] in table 'ItemRequisitions'
ALTER TABLE [dbo].[ItemRequisitions]
ADD CONSTRAINT [FK_StoreItemRequisition]
    FOREIGN KEY ([Store_Id])
    REFERENCES [dbo].[Stores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StoreItemRequisition'
CREATE INDEX [IX_FK_StoreItemRequisition]
ON [dbo].[ItemRequisitions]
    ([Store_Id]);
GO

-- Creating foreign key on [Item_Id] in table 'Stocks'
ALTER TABLE [dbo].[Stocks]
ADD CONSTRAINT [FK_ItemStock]
    FOREIGN KEY ([Item_Id])
    REFERENCES [dbo].[InventorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemStock'
CREATE INDEX [IX_FK_ItemStock]
ON [dbo].[Stocks]
    ([Item_Id]);
GO

-- Creating foreign key on [Store_Id] in table 'Stocks'
ALTER TABLE [dbo].[Stocks]
ADD CONSTRAINT [FK_StoreStock]
    FOREIGN KEY ([Store_Id])
    REFERENCES [dbo].[Stores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StoreStock'
CREATE INDEX [IX_FK_StoreStock]
ON [dbo].[Stocks]
    ([Store_Id]);
GO

-- Creating foreign key on [Item_Id] in table 'ItemSales'
ALTER TABLE [dbo].[ItemSales]
ADD CONSTRAINT [FK_ItemItemSale]
    FOREIGN KEY ([Item_Id])
    REFERENCES [dbo].[InventorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemItemSale'
CREATE INDEX [IX_FK_ItemItemSale]
ON [dbo].[ItemSales]
    ([Item_Id]);
GO

-- Creating foreign key on [Store_Id] in table 'ItemSales'
ALTER TABLE [dbo].[ItemSales]
ADD CONSTRAINT [FK_StoreItemSale]
    FOREIGN KEY ([Store_Id])
    REFERENCES [dbo].[Stores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StoreItemSale'
CREATE INDEX [IX_FK_StoreItemSale]
ON [dbo].[ItemSales]
    ([Store_Id]);
GO

-- Creating foreign key on [Parent_Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [FK_CategoryCategory]
    FOREIGN KEY ([Parent_Id])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryCategory'
CREATE INDEX [IX_FK_CategoryCategory]
ON [dbo].[Categories]
    ([Parent_Id]);
GO

-- Creating foreign key on [Category_Id] in table 'InventorySet'
ALTER TABLE [dbo].[InventorySet]
ADD CONSTRAINT [FK_CategoryItem]
    FOREIGN KEY ([Category_Id])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryItem'
CREATE INDEX [IX_FK_CategoryItem]
ON [dbo].[InventorySet]
    ([Category_Id]);
GO

-- Creating foreign key on [Document_Id] in table 'DocStores'
ALTER TABLE [dbo].[DocStores]
ADD CONSTRAINT [FK_DocumentsDocStore]
    FOREIGN KEY ([Document_Id])
    REFERENCES [dbo].[Documents]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentsDocStore'
CREATE INDEX [IX_FK_DocumentsDocStore]
ON [dbo].[DocStores]
    ([Document_Id]);
GO

-- Creating foreign key on [TransactionType_Id] in table 'Transactions'
ALTER TABLE [dbo].[Transactions]
ADD CONSTRAINT [FK_TransactionTypeTransaction]
    FOREIGN KEY ([TransactionType_Id])
    REFERENCES [dbo].[TransactionTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TransactionTypeTransaction'
CREATE INDEX [IX_FK_TransactionTypeTransaction]
ON [dbo].[Transactions]
    ([TransactionType_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Accounts'
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT [FK_UserAccount]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserAccount'
CREATE INDEX [IX_FK_UserAccount]
ON [dbo].[Accounts]
    ([User_Id]);
GO

-- Creating foreign key on [Transaction_Id] in table 'DebitsCredits'
ALTER TABLE [dbo].[DebitsCredits]
ADD CONSTRAINT [FK_TransactionDebitsCredits]
    FOREIGN KEY ([Transaction_Id])
    REFERENCES [dbo].[Transactions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TransactionDebitsCredits'
CREATE INDEX [IX_FK_TransactionDebitsCredits]
ON [dbo].[DebitsCredits]
    ([Transaction_Id]);
GO

-- Creating foreign key on [Account_Id] in table 'DebitsCredits'
ALTER TABLE [dbo].[DebitsCredits]
ADD CONSTRAINT [FK_AccountDebitsCredits]
    FOREIGN KEY ([Account_Id])
    REFERENCES [dbo].[Accounts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountDebitsCredits'
CREATE INDEX [IX_FK_AccountDebitsCredits]
ON [dbo].[DebitsCredits]
    ([Account_Id]);
GO

-- Creating foreign key on [AssociatedUser_Id] in table 'Transactions'
ALTER TABLE [dbo].[Transactions]
ADD CONSTRAINT [FK_UserTransaction]
    FOREIGN KEY ([AssociatedUser_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserTransaction'
CREATE INDEX [IX_FK_UserTransaction]
ON [dbo].[Transactions]
    ([AssociatedUser_Id]);
GO

-- Creating foreign key on [InstituteGroup_Id] in table 'Transactions'
ALTER TABLE [dbo].[Transactions]
ADD CONSTRAINT [FK_InstituteGroupTransaction]
    FOREIGN KEY ([InstituteGroup_Id])
    REFERENCES [dbo].[InstituteGroups]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InstituteGroupTransaction'
CREATE INDEX [IX_FK_InstituteGroupTransaction]
ON [dbo].[Transactions]
    ([InstituteGroup_Id]);
GO

-- Creating foreign key on [Id] in table 'InventorySet_Book'
ALTER TABLE [dbo].[InventorySet_Book]
ADD CONSTRAINT [FK_Book_inherits_Item]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[InventorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------