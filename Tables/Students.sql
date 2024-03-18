CREATE TABLE [dbo].[Students]
(
	[Id] INT NOT NULL  IDENTITY,
	[FirstName] VARCHAR(50) NOT NULL,
	[LastName] VARCHAR(50) NOT NULL,
	[BirthDate] datetime2(7) NOT NULL,
	[YearResult] INT NOT NULL,
	[SectionId] INT NOT NULL,
	[IsActive] BIT DEFAULT 1 NOT NULL, 
    CONSTRAINT [PK_Students] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Students_Sections] FOREIGN KEY ([SectionId]) REFERENCES [Sections]([Id]), 
    CONSTRAINT [CK_Students_YearResult] CHECK (YearResult BETWEEN 0 and 20),
	CONSTRAINT [CK_Students_BirthDate] CHECK (BirthDate > '1930-01-01'),
)
