DECLARE @num1 float = 2
DECLARE @num2 float = 3
DECLARE @num3 float = 4

PRINT (@num1 + @num2 + @num3) / 3



DECLARE @current_time time = GETDATE()

IF @current_time > CONVERT(time, '06:00:00') AND @current_time < CONVERT(time, '18:00:00')
	BEGIN
		PRINT 'Добрый день'
	END
ELSE
	BEGIN
		PRINT 'Добрый вечер'
	END



DECLARE @num int = 999999
DECLARE @temp int
DECLARE @sum1 int = 0
DECLARE @sum2 int = 0

WHILE @num > 0
	BEGIN

		SET @temp = @num % 10
		IF @num > 999
			BEGIN
				SET @sum1 += @temp
			END
		ELSE
			BEGIN
				SET @sum2 += @temp
			END

		SET @num = @num / 10

	END

IF @sum1 = @sum2
	BEGIN
		PRINT 'Ticket is lucky'
	END
ELSE 
	BEGIN
		PRINT 'Ticket is NOT lucky'
	END