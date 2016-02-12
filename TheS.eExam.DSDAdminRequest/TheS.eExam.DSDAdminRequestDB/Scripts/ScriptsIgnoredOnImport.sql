
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/12/2016 14:06:54
-- Generated from EDMX file: C:\Users\BugLord\Desktop\DSD\TheS.eExam.DSDAdminRequest\TheS.eExam.DSDAdminRequest.DSA\EF\DSDAdminRequest.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [DSDAdminRequestDB];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/12/2016 14:15:40
-- Generated from EDMX file: C:\Users\BugLord\Desktop\DSD\TheS.eExam.DSDAdminRequest\TheS.eExam.DSDAdminRequest.DSA\EF\DSDAdminRequest.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [DSDAdminRequestDB];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BranchAdminRequest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdminRequests] DROP CONSTRAINT [FK_BranchAdminRequest];
GO

IF OBJECT_ID(N'[dbo].[FK_AdminRequestClientAccount]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientAccounts] DROP CONSTRAINT [FK_AdminRequestClientAccount];
GO

IF OBJECT_ID(N'[dbo].[FK_AdminRequestProvince]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Provinces] DROP CONSTRAINT [FK_AdminRequestProvince];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Branches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Branches];
GO

IF OBJECT_ID(N'[dbo].[AdminRequests]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdminRequests];
GO

IF OBJECT_ID(N'[dbo].[ClientAccounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientAccounts];
GO

IF OBJECT_ID(N'[dbo].[Provinces]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Provinces];
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/12/2016 14:16:45
-- Generated from EDMX file: C:\Users\BugLord\Desktop\DSD\TheS.eExam.DSDAdminRequest\TheS.eExam.DSDAdminRequest.DSA\EF\DSDAdminRequest.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [DSDAdminRequestDB];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BranchAdminRequest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdminRequests] DROP CONSTRAINT [FK_BranchAdminRequest];
GO

IF OBJECT_ID(N'[dbo].[FK_AdminRequestClientAccount]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientAccounts] DROP CONSTRAINT [FK_AdminRequestClientAccount];
GO

IF OBJECT_ID(N'[dbo].[FK_ProvinceAdminRequest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdminRequests] DROP CONSTRAINT [FK_ProvinceAdminRequest];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Branches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Branches];
GO

IF OBJECT_ID(N'[dbo].[AdminRequests]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdminRequests];
GO

IF OBJECT_ID(N'[dbo].[ClientAccounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientAccounts];
GO

IF OBJECT_ID(N'[dbo].[Provinces]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Provinces];
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/12/2016 14:42:16
-- Generated from EDMX file: C:\Users\BugLord\Desktop\DSD\TheS.eExam.DSDAdminRequest\TheS.eExam.DSDAdminRequest.DSA\EF\DSDAdminRequest.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [DSDAdminRequestDB];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BranchAdminRequest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdminRequests] DROP CONSTRAINT [FK_BranchAdminRequest];
GO

IF OBJECT_ID(N'[dbo].[FK_AdminRequestClientAccount]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientAccounts] DROP CONSTRAINT [FK_AdminRequestClientAccount];
GO

IF OBJECT_ID(N'[dbo].[FK_ProvinceAdminRequest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdminRequests] DROP CONSTRAINT [FK_ProvinceAdminRequest];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Branches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Branches];
GO

IF OBJECT_ID(N'[dbo].[AdminRequests]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdminRequests];
GO

IF OBJECT_ID(N'[dbo].[ClientAccounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientAccounts];
GO

IF OBJECT_ID(N'[dbo].[Provinces]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Provinces];
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO
