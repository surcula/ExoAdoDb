CREATE PROCEDURE [dbo].[AddStudent]
	@FirstName VARCHAR(50),
	@LastName VARCHAR(50),
	@BirthDate datetime2(7),
	@SectionId INT,
	@YearResult INT
AS
	INSERT INTO [Students](
		[FirstName],
		[LastName],
		[BirthDate],
		[YearResult],
		[SectionId]) 
	VALUES(
		@FirstName,
		@LastName,
		@BirthDate,
		@SectionId,
		@YearResult
	)
