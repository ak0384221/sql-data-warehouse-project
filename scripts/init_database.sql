/*
======================================================
Create database and schemas
======================================================
script purpose:
    this script creates a new database names 'DataWareHouse' after checking it it already EXISTS
    if the database exist it drops and recreate another.
    additionally the script sets up three schemas withinthe database:
    'bronze','siver','gold'

=======================================================
warning:
    running this script will drop the entire 'DataWareHouse' database if it exist.
    All the data ofthe databsewill permanently deleted,
    proceed with caution and ensure you have proper backups before running this script 

=============================================================
 */

USE master;
GO
-- drop and recreate the 'datawarehouse' database
IF EXISTS (select 1 from sys.databases where name = 'DataWareHouse')

BEGIN
ALTER DATABASE DataWareHouse SET single_user WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWareHouse;

END;
GO

CREATE DATABASE DataWareHouse
GO

use DataWareHouse;
GO

-- creating schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO;

