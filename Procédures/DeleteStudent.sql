CREATE PROCEDURE [dbo].[DeleteStudent]
	@Id int
AS
	DELETE [Students] where [Id] = @Id

