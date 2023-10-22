CREATE TABLE ImageResolutions
(
	Id BIGINT IDENTITY(1,1) NOT NULL,
	[Guid] UNIQUEIDENTIFIER NOT NULL DEFAULT(NEWID()),
	[Name] NVARCHAR(25) NOT NULL,

	CreatedBy BIGINT NOT NULL,
	CreatedOn DATETIME2(0) NOT NULL,
	ModifiedBy BIGINT NULL,
	ModifiedOn DATETIME2(0) NULL,

	CONSTRAINT PK_ImageResolution PRIMARY KEY CLUSTERED (Id ASC)
)