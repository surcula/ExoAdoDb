CREATE PROCEDURE [dbo].[UpDateStudent]
	@Id INT,
	@SectionId int ,
	@YearResult int
AS
	UPDATE [Students]
		set [SectionId] = @SectionId, 
			[YearResult] = @YearResult
		Where [Id] = @Id
