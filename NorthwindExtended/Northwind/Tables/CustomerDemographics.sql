CREATE TABLE [Northwind].[CustomerDemographics] (
    [CustomerTypeID] NCHAR (10) NOT NULL,
    [CustomerDesc]   NTEXT      NULL,
    CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY CLUSTERED ([CustomerTypeID] ASC)
);

