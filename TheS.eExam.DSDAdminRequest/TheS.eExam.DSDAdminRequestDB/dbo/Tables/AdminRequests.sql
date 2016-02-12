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
-- Creating foreign key on [ProvinceId] in table 'AdminRequests'
ALTER TABLE [dbo].[AdminRequests]
ADD CONSTRAINT [FK_ProvinceAdminRequest]
    FOREIGN KEY ([ProvinceId])
    REFERENCES [dbo].[Provinces]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [Id] in table 'AdminRequests'
ALTER TABLE [dbo].[AdminRequests]
ADD CONSTRAINT [PK_AdminRequests]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_BranchAdminRequest'
CREATE INDEX [IX_FK_BranchAdminRequest]
ON [dbo].[AdminRequests]
    ([BranchId]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ProvinceAdminRequest'
CREATE INDEX [IX_FK_ProvinceAdminRequest]
ON [dbo].[AdminRequests]
    ([ProvinceId]);