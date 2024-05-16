USE [College_DWH]
GO

/****** Object:  Table [dbo].[admin_etl_log]    Script Date: 29/11/2023 10:53:51 ******/

CREATE TABLE [dbo].[admin_etl_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[etl_name] [nvarchar](255) NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NULL,
	[rows_update] [int] NULL,
	[status] [nvarchar](50) NULL,
	[Detail] [nvarchar](500) NULL
) ON [PRIMARY]
GO

/********** convetr the result of today log to a html table 
			1.Converts the result from the query to an XML configuration.
			2.Instead of the column names tag, I change to the TD tag (to get a column in the HTML table).
			3.And each result line is delimited by a TR tag that signifies a row in an HTML table.
***/

select 
  (select l.[id]						as 'td' for xml path(''), type),
  (select l.[etl_name]					as 'td' for xml path(''), type),
  (select l.[start_time]				as 'td' for xml path(''), type),
  (select l.[rows_update]				as 'td' for xml path(''), type),
  (select l.[end_time]					as 'td' for xml path(''), type),
  (select l.[status]					as 'td' for xml path(''), type),
  (select l.[detail]					as 'td' for xml path(''), type)
from [dbo].[admin_etl_log] l
where CONVERT(DATE, l.start_time) = CONVERT(DATE, GETDATE())
for xml path('tr')