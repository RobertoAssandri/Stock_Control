
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 07/25/2014 17:51:59
-- Generated from EDMX file: C:\Users\mauri\Documents\GitHub\Stock_Control\Entities\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [StockControl];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BrandProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductSet] DROP CONSTRAINT [FK_BrandProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_SuplierSuplierPhone]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SupplierPhoneSet] DROP CONSTRAINT [FK_SuplierSuplierPhone];
GO
IF OBJECT_ID(N'[dbo].[FK_SuplierSuplierMail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SupplierMailSet] DROP CONSTRAINT [FK_SuplierSuplierMail];
GO
IF OBJECT_ID(N'[dbo].[FK_OfficeOfficePhone]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfficePhoneSet] DROP CONSTRAINT [FK_OfficeOfficePhone];
GO
IF OBJECT_ID(N'[dbo].[FK_OfficeOfficeMail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfficeMailSet] DROP CONSTRAINT [FK_OfficeOfficeMail];
GO
IF OBJECT_ID(N'[dbo].[FK_FamilyProductsFamilies]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductsFamiliesSet] DROP CONSTRAINT [FK_FamilyProductsFamilies];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductProductsFamilies]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductsFamiliesSet] DROP CONSTRAINT [FK_ProductProductsFamilies];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductProductsOffices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfficeStockSet] DROP CONSTRAINT [FK_ProductProductsOffices];
GO
IF OBJECT_ID(N'[dbo].[FK_OfficeProductsOffices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfficeStockSet] DROP CONSTRAINT [FK_OfficeProductsOffices];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductProductPrice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductPriceSet] DROP CONSTRAINT [FK_ProductProductPrice];
GO
IF OBJECT_ID(N'[dbo].[FK_SuplierProductPrice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductPriceSet] DROP CONSTRAINT [FK_SuplierProductPrice];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductOnlineProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OnlineProductSet] DROP CONSTRAINT [FK_ProductOnlineProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductShipmentShipmentStock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentProductStockSet] DROP CONSTRAINT [FK_ProductShipmentShipmentStock];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductShipmentStock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShipmentProductStockSet] DROP CONSTRAINT [FK_ProductShipmentStock];
GO
IF OBJECT_ID(N'[dbo].[FK_InboundShipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfficeSet] DROP CONSTRAINT [FK_InboundShipment];
GO
IF OBJECT_ID(N'[dbo].[FK_OutboundShipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfficeSet] DROP CONSTRAINT [FK_OutboundShipment];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[BrandSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BrandSet];
GO
IF OBJECT_ID(N'[dbo].[FamilySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FamilySet];
GO
IF OBJECT_ID(N'[dbo].[ProductSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductSet];
GO
IF OBJECT_ID(N'[dbo].[SupplierSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SupplierSet];
GO
IF OBJECT_ID(N'[dbo].[SupplierPhoneSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SupplierPhoneSet];
GO
IF OBJECT_ID(N'[dbo].[SupplierMailSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SupplierMailSet];
GO
IF OBJECT_ID(N'[dbo].[OfficeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OfficeSet];
GO
IF OBJECT_ID(N'[dbo].[OfficePhoneSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OfficePhoneSet];
GO
IF OBJECT_ID(N'[dbo].[OfficeMailSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OfficeMailSet];
GO
IF OBJECT_ID(N'[dbo].[ProductsFamiliesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductsFamiliesSet];
GO
IF OBJECT_ID(N'[dbo].[OfficeStockSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OfficeStockSet];
GO
IF OBJECT_ID(N'[dbo].[ProductPriceSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductPriceSet];
GO
IF OBJECT_ID(N'[dbo].[OnlineProductSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OnlineProductSet];
GO
IF OBJECT_ID(N'[dbo].[ShipmentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShipmentSet];
GO
IF OBJECT_ID(N'[dbo].[ShipmentProductStockSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShipmentProductStockSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'BrandSet'
CREATE TABLE [dbo].[BrandSet] (
    [Name] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'FamilySet'
CREATE TABLE [dbo].[FamilySet] (
    [Name] nvarchar(255)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ProductSet'
CREATE TABLE [dbo].[ProductSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [BrandName] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'SupplierSet'
CREATE TABLE [dbo].[SupplierSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NULL
);
GO

-- Creating table 'SupplierPhoneSet'
CREATE TABLE [dbo].[SupplierPhoneSet] (
    [Number] nvarchar(255)  NOT NULL,
    [SupplierId] int  NOT NULL
);
GO

-- Creating table 'SupplierMailSet'
CREATE TABLE [dbo].[SupplierMailSet] (
    [Email] nvarchar(255)  NOT NULL,
    [SupplierId] int  NOT NULL
);
GO

-- Creating table 'OfficeSet'
CREATE TABLE [dbo].[OfficeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [InboundShipments_Id] int  NOT NULL,
    [OutboundShipments_Id] int  NOT NULL
);
GO

-- Creating table 'OfficePhoneSet'
CREATE TABLE [dbo].[OfficePhoneSet] (
    [Number] int IDENTITY(1,1) NOT NULL,
    [Office_Id] int  NOT NULL
);
GO

-- Creating table 'OfficeMailSet'
CREATE TABLE [dbo].[OfficeMailSet] (
    [Email] nvarchar(255)  NOT NULL,
    [Office_Id] int  NOT NULL
);
GO

-- Creating table 'ProductsFamiliesSet'
CREATE TABLE [dbo].[ProductsFamiliesSet] (
    [FamilyName] nvarchar(255)  NOT NULL,
    [ProductId] int  NOT NULL
);
GO

-- Creating table 'OfficeStockSet'
CREATE TABLE [dbo].[OfficeStockSet] (
    [ProductId] int  NOT NULL,
    [OfficeId] int  NOT NULL,
    [Stock] int  NOT NULL
);
GO

-- Creating table 'ProductPriceSet'
CREATE TABLE [dbo].[ProductPriceSet] (
    [Date] datetime  NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [ProductId] int  NOT NULL,
    [SupplierId] int  NOT NULL
);
GO

-- Creating table 'OnlineProductSet'
CREATE TABLE [dbo].[OnlineProductSet] (
    [URL] nvarchar(max)  NOT NULL,
    [Active] bit  NOT NULL,
    [Id] int  NOT NULL,
    [ProductOnlineProduct_OnlineProduct_Id] int  NOT NULL
);
GO

-- Creating table 'ShipmentSet'
CREATE TABLE [dbo].[ShipmentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [ShippedDate] nvarchar(max)  NOT NULL,
    [DeliveredDate] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ShipmentProductStockSet'
CREATE TABLE [dbo].[ShipmentProductStockSet] (
    [ProductShipmentId] int  NOT NULL,
    [ProductId] int  NOT NULL,
    [Amount] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Name] in table 'BrandSet'
ALTER TABLE [dbo].[BrandSet]
ADD CONSTRAINT [PK_BrandSet]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Name] in table 'FamilySet'
ALTER TABLE [dbo].[FamilySet]
ADD CONSTRAINT [PK_FamilySet]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

-- Creating primary key on [Id] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [PK_ProductSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SupplierSet'
ALTER TABLE [dbo].[SupplierSet]
ADD CONSTRAINT [PK_SupplierSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Number] in table 'SupplierPhoneSet'
ALTER TABLE [dbo].[SupplierPhoneSet]
ADD CONSTRAINT [PK_SupplierPhoneSet]
    PRIMARY KEY CLUSTERED ([Number] ASC);
GO

-- Creating primary key on [Email] in table 'SupplierMailSet'
ALTER TABLE [dbo].[SupplierMailSet]
ADD CONSTRAINT [PK_SupplierMailSet]
    PRIMARY KEY CLUSTERED ([Email] ASC);
GO

-- Creating primary key on [Id] in table 'OfficeSet'
ALTER TABLE [dbo].[OfficeSet]
ADD CONSTRAINT [PK_OfficeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Number] in table 'OfficePhoneSet'
ALTER TABLE [dbo].[OfficePhoneSet]
ADD CONSTRAINT [PK_OfficePhoneSet]
    PRIMARY KEY CLUSTERED ([Number] ASC);
GO

-- Creating primary key on [Email] in table 'OfficeMailSet'
ALTER TABLE [dbo].[OfficeMailSet]
ADD CONSTRAINT [PK_OfficeMailSet]
    PRIMARY KEY CLUSTERED ([Email] ASC);
GO

-- Creating primary key on [ProductId], [FamilyName] in table 'ProductsFamiliesSet'
ALTER TABLE [dbo].[ProductsFamiliesSet]
ADD CONSTRAINT [PK_ProductsFamiliesSet]
    PRIMARY KEY NONCLUSTERED ([ProductId], [FamilyName] ASC);
GO

-- Creating primary key on [ProductId], [OfficeId] in table 'OfficeStockSet'
ALTER TABLE [dbo].[OfficeStockSet]
ADD CONSTRAINT [PK_OfficeStockSet]
    PRIMARY KEY CLUSTERED ([ProductId], [OfficeId] ASC);
GO

-- Creating primary key on [Date], [ProductId], [SupplierId] in table 'ProductPriceSet'
ALTER TABLE [dbo].[ProductPriceSet]
ADD CONSTRAINT [PK_ProductPriceSet]
    PRIMARY KEY CLUSTERED ([Date], [ProductId], [SupplierId] ASC);
GO

-- Creating primary key on [Id] in table 'OnlineProductSet'
ALTER TABLE [dbo].[OnlineProductSet]
ADD CONSTRAINT [PK_OnlineProductSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ShipmentSet'
ALTER TABLE [dbo].[ShipmentSet]
ADD CONSTRAINT [PK_ShipmentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ProductShipmentId], [ProductId] in table 'ShipmentProductStockSet'
ALTER TABLE [dbo].[ShipmentProductStockSet]
ADD CONSTRAINT [PK_ShipmentProductStockSet]
    PRIMARY KEY CLUSTERED ([ProductShipmentId], [ProductId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BrandName] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [FK_BrandProduct]
    FOREIGN KEY ([BrandName])
    REFERENCES [dbo].[BrandSet]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BrandProduct'
CREATE INDEX [IX_FK_BrandProduct]
ON [dbo].[ProductSet]
    ([BrandName]);
GO

-- Creating foreign key on [SupplierId] in table 'SupplierPhoneSet'
ALTER TABLE [dbo].[SupplierPhoneSet]
ADD CONSTRAINT [FK_SuplierSuplierPhone]
    FOREIGN KEY ([SupplierId])
    REFERENCES [dbo].[SupplierSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SuplierSuplierPhone'
CREATE INDEX [IX_FK_SuplierSuplierPhone]
ON [dbo].[SupplierPhoneSet]
    ([SupplierId]);
GO

-- Creating foreign key on [SupplierId] in table 'SupplierMailSet'
ALTER TABLE [dbo].[SupplierMailSet]
ADD CONSTRAINT [FK_SuplierSuplierMail]
    FOREIGN KEY ([SupplierId])
    REFERENCES [dbo].[SupplierSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SuplierSuplierMail'
CREATE INDEX [IX_FK_SuplierSuplierMail]
ON [dbo].[SupplierMailSet]
    ([SupplierId]);
GO

-- Creating foreign key on [Office_Id] in table 'OfficePhoneSet'
ALTER TABLE [dbo].[OfficePhoneSet]
ADD CONSTRAINT [FK_OfficeOfficePhone]
    FOREIGN KEY ([Office_Id])
    REFERENCES [dbo].[OfficeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OfficeOfficePhone'
CREATE INDEX [IX_FK_OfficeOfficePhone]
ON [dbo].[OfficePhoneSet]
    ([Office_Id]);
GO

-- Creating foreign key on [Office_Id] in table 'OfficeMailSet'
ALTER TABLE [dbo].[OfficeMailSet]
ADD CONSTRAINT [FK_OfficeOfficeMail]
    FOREIGN KEY ([Office_Id])
    REFERENCES [dbo].[OfficeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OfficeOfficeMail'
CREATE INDEX [IX_FK_OfficeOfficeMail]
ON [dbo].[OfficeMailSet]
    ([Office_Id]);
GO

-- Creating foreign key on [FamilyName] in table 'ProductsFamiliesSet'
ALTER TABLE [dbo].[ProductsFamiliesSet]
ADD CONSTRAINT [FK_FamilyProductsFamilies]
    FOREIGN KEY ([FamilyName])
    REFERENCES [dbo].[FamilySet]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FamilyProductsFamilies'
CREATE INDEX [IX_FK_FamilyProductsFamilies]
ON [dbo].[ProductsFamiliesSet]
    ([FamilyName]);
GO

-- Creating foreign key on [ProductId] in table 'ProductsFamiliesSet'
ALTER TABLE [dbo].[ProductsFamiliesSet]
ADD CONSTRAINT [FK_ProductProductsFamilies]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProductId] in table 'OfficeStockSet'
ALTER TABLE [dbo].[OfficeStockSet]
ADD CONSTRAINT [FK_ProductProductsOffices]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [OfficeId] in table 'OfficeStockSet'
ALTER TABLE [dbo].[OfficeStockSet]
ADD CONSTRAINT [FK_OfficeProductsOffices]
    FOREIGN KEY ([OfficeId])
    REFERENCES [dbo].[OfficeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OfficeProductsOffices'
CREATE INDEX [IX_FK_OfficeProductsOffices]
ON [dbo].[OfficeStockSet]
    ([OfficeId]);
GO

-- Creating foreign key on [ProductId] in table 'ProductPriceSet'
ALTER TABLE [dbo].[ProductPriceSet]
ADD CONSTRAINT [FK_ProductProductPrice]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductProductPrice'
CREATE INDEX [IX_FK_ProductProductPrice]
ON [dbo].[ProductPriceSet]
    ([ProductId]);
GO

-- Creating foreign key on [SupplierId] in table 'ProductPriceSet'
ALTER TABLE [dbo].[ProductPriceSet]
ADD CONSTRAINT [FK_SuplierProductPrice]
    FOREIGN KEY ([SupplierId])
    REFERENCES [dbo].[SupplierSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SuplierProductPrice'
CREATE INDEX [IX_FK_SuplierProductPrice]
ON [dbo].[ProductPriceSet]
    ([SupplierId]);
GO

-- Creating foreign key on [ProductOnlineProduct_OnlineProduct_Id] in table 'OnlineProductSet'
ALTER TABLE [dbo].[OnlineProductSet]
ADD CONSTRAINT [FK_ProductOnlineProduct]
    FOREIGN KEY ([ProductOnlineProduct_OnlineProduct_Id])
    REFERENCES [dbo].[ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductOnlineProduct'
CREATE INDEX [IX_FK_ProductOnlineProduct]
ON [dbo].[OnlineProductSet]
    ([ProductOnlineProduct_OnlineProduct_Id]);
GO

-- Creating foreign key on [ProductShipmentId] in table 'ShipmentProductStockSet'
ALTER TABLE [dbo].[ShipmentProductStockSet]
ADD CONSTRAINT [FK_ProductShipmentShipmentStock]
    FOREIGN KEY ([ProductShipmentId])
    REFERENCES [dbo].[ShipmentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProductId] in table 'ShipmentProductStockSet'
ALTER TABLE [dbo].[ShipmentProductStockSet]
ADD CONSTRAINT [FK_ProductShipmentStock]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductShipmentStock'
CREATE INDEX [IX_FK_ProductShipmentStock]
ON [dbo].[ShipmentProductStockSet]
    ([ProductId]);
GO

-- Creating foreign key on [InboundShipments_Id] in table 'OfficeSet'
ALTER TABLE [dbo].[OfficeSet]
ADD CONSTRAINT [FK_InboundShipment]
    FOREIGN KEY ([InboundShipments_Id])
    REFERENCES [dbo].[ShipmentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InboundShipment'
CREATE INDEX [IX_FK_InboundShipment]
ON [dbo].[OfficeSet]
    ([InboundShipments_Id]);
GO

-- Creating foreign key on [OutboundShipments_Id] in table 'OfficeSet'
ALTER TABLE [dbo].[OfficeSet]
ADD CONSTRAINT [FK_OutboundShipment]
    FOREIGN KEY ([OutboundShipments_Id])
    REFERENCES [dbo].[ShipmentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OutboundShipment'
CREATE INDEX [IX_FK_OutboundShipment]
ON [dbo].[OfficeSet]
    ([OutboundShipments_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------