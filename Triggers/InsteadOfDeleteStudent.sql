CREATE TRIGGER [InsteadOfDeleteStudent]
	ON [dbo].[Students]
	INSTEAD OF DELETE
	AS
	BEGIN
		UPDATE [Students]
		set [IsActive] = 0
		WHERE [Id] = (select [Id] from [deleted])
	END
