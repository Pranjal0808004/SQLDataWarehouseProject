/*Creates a new database named DataWarehouse.
Creates three schemas: bronze, silver, and gold to organize the data warehouse into different layers.
Medallion Architecture
The Medallion Architecture is a layered approach to organizing data as it moves through the data warehouse.
Bronze: Stores raw data exactly as received from the source systems.
Silver: Stores cleaned, validated, and transformed data.
Gold: Stores business-ready, aggregated data optimized for reporting and analytics.
For sales data, this architecture ensures the original data is preserved, & improves data quality through transformations.
*/


USE master;
GO

-- WARNING: Running this script will permanently delete the 'DataWarehouse' database and all of its data if it already exists. --
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END
GO
  
CREATE DataWarehouse;
GO

USE DATABASE DataWarehouse;
GO

Create SCHEMA bronze;
GO

Create SCHEMA silver;
GO

Create SCHEMA gold;
GO
