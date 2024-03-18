CREATE PROCEDURE [dbo].[AddSection]
	@SectionName VARCHAR(50)
AS
	INSERT INTO [Sections]([SectionName]) VALUES (@SectionName)
RETURN 0
