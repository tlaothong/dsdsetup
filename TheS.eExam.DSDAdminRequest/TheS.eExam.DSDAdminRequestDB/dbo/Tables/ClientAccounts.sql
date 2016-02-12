-- Creating table 'ClientAccounts'
CREATE TABLE [dbo].[ClientAccounts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ClientEmail] nvarchar(max)  NOT NULL,
    [IsActivated] bit  NOT NULL,
    [AdminRequestId] int  NOT NULL
);
GO
-- Creating foreign key on [AdminRequestId] in table 'ClientAccounts'
ALTER TABLE [dbo].[ClientAccounts]
ADD CONSTRAINT [FK_AdminRequestClientAccount]
    FOREIGN KEY ([AdminRequestId])
    REFERENCES [dbo].[AdminRequests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [Id] in table 'ClientAccounts'
ALTER TABLE [dbo].[ClientAccounts]
ADD CONSTRAINT [PK_ClientAccounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_AdminRequestClientAccount'
CREATE INDEX [IX_FK_AdminRequestClientAccount]
ON [dbo].[ClientAccounts]
    ([AdminRequestId]);