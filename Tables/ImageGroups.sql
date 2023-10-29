CREATE TABLE ImageGroups
(
	Id BIGINT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[Guid] UNIQUEIDENTIFIER NOT NULL DEFAULT(NEWID()),

	CreatedBy BIGINT NOT NULL,
	CreatedOn DATETIME2(0) NOT NULL,
	ModifiedBy BIGINT NULL,
	ModifiedOn DATETIME2(0) NULL,

	CONSTRAINT PK_ImageGroups PRIMARY KEY CLUSTERED (Id ASC)
)