
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
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Branches'
CREATE TABLE [dbo].[Branches] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AdminRequests'
CREATE TABLE [dbo].[AdminRequests] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ContactEmail] nvarchar(max)  NOT NULL,
    [TitleName] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [PID] nvarchar(max)  NOT NULL,
    [IsApproved] bit  NOT NULL,
    [BranchId] int  NOT NULL,
    [ProvinceId] int  NOT NULL
);
GO

-- Creating table 'ClientAccounts'
CREATE TABLE [dbo].[ClientAccounts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ClientEmail] nvarchar(max)  NOT NULL,
    [IsActivated] bit  NOT NULL,
    [AdminRequestId] int  NOT NULL
);
GO

-- Creating table 'Provinces'
CREATE TABLE [dbo].[Provinces] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(2)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Branches'
ALTER TABLE [dbo].[Branches]
ADD CONSTRAINT [PK_Branches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdminRequests'
ALTER TABLE [dbo].[AdminRequests]
ADD CONSTRAINT [PK_AdminRequests]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ClientAccounts'
ALTER TABLE [dbo].[ClientAccounts]
ADD CONSTRAINT [PK_ClientAccounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Provinces'
ALTER TABLE [dbo].[Provinces]
ADD CONSTRAINT [PK_Provinces]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BranchId] in table 'AdminRequests'
ALTER TABLE [dbo].[AdminRequests]
ADD CONSTRAINT [FK_BranchAdminRequest]
    FOREIGN KEY ([BranchId])
    REFERENCES [dbo].[Branches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BranchAdminRequest'
CREATE INDEX [IX_FK_BranchAdminRequest]
ON [dbo].[AdminRequests]
    ([BranchId]);
GO

-- Creating foreign key on [ProvinceId] in table 'AdminRequests'
ALTER TABLE [dbo].[AdminRequests]
ADD CONSTRAINT [FK_ProvinceAdminRequest]
    FOREIGN KEY ([ProvinceId])
    REFERENCES [dbo].[Provinces]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProvinceAdminRequest'
CREATE INDEX [IX_FK_ProvinceAdminRequest]
ON [dbo].[AdminRequests]
    ([ProvinceId]);
GO

-- Creating foreign key on [AdminRequestId] in table 'ClientAccounts'
ALTER TABLE [dbo].[ClientAccounts]
ADD CONSTRAINT [FK_AdminRequestClientAccount]
    FOREIGN KEY ([AdminRequestId])
    REFERENCES [dbo].[AdminRequests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdminRequestClientAccount'
CREATE INDEX [IX_FK_AdminRequestClientAccount]
ON [dbo].[ClientAccounts]
    ([AdminRequestId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------