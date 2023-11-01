CREATE TABLE Images
(
	Id BIGINT IDENTITY(1,1) NOT NULL,
	[Guid] UNIQUEIDENTIFIER NOT NULL DEFAULT(NEWID()),
	[Url] NVARCHAR(250) NOT NULL,
	Resolution BIGINT NOT NULL,
	[Group] BIGINT NOT NULL,

	CreatedBy BIGINT NOT NULL,
	CreatedOn DATETIME2(0) NOT NULL,
	ModifiedBy BIGINT NULL,
	ModifiedOn DATETIME2(0) NULL,
	
	CONSTRAINT PK_Images PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT UQ_Images_Guid UNIQUE ([Guid] ASC),
	CONSTRAINT FK_Images_Resolution FOREIGN KEY(Resolution) REFERENCES ImageResolutions (Id),
	CONSTRAINT FK_Images_Group FOREIGN KEY([Group]) REFERENCES ImageGroups (Id),
	CONSTRAINT FK_Images_CreatedBy FOREIGN KEY(CreatedBy) REFERENCES Users (Id),
	CONSTRAINT FK_Images_ModifiedBy FOREIGN KEY(ModifiedBy) REFERENCES Users (Id)
)