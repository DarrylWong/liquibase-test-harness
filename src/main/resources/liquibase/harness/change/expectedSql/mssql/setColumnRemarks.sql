IF EXISTS(  SELECT extended_properties.value FROM SYS.EXTENDED_PROPERTIES WHERE major_id = OBJECT_ID('dbo.authors') AND name = N'MS_DESCRIPTION' AND minor_id = ( SELECT column_id FROM SYS.COLUMNS WHERE name = 'id' AND object_id = OBJECT_ID('dbo.authors')) ) BEGIN  EXEC sys.sp_updateextendedproperty @name = N'MS_Description' , @value = N'A Test Column Remark' , @level0type = N'SCHEMA' , @level0name = N'dbo' , @level1type = N'TABLE' , @level1name = N'authors' , @level2type = N'COLUMN' , @level2name = N'id' END  ELSE  BEGIN  EXEC sys.sp_addextendedproperty @name = N'MS_Description' , @value = N'A Test Column Remark' , @level0type = N'SCHEMA' , @level0name = N'dbo' , @level1type = N'TABLE' , @level1name = N'authors' , @level2type = N'COLUMN' , @level2name = N'id' END