
select *
from [dbo].[types]

update [dbo].[types]
set icon = '/sites/default/files/2016-07/'+lower(type)+'.gif'
