--===========================================================
--Horizontal Partition Practice
--===========================================================
ALTER DATABASE PracticeDB
ADD FILEGROUP fileGroup1
GO
ALTER DATABASE PracticeDB
ADD FILEGROUP fileGroup2
GO
ALTER DATABASE PracticeDB
ADD FILEGROUP fileGroup3
GO
ALTER DATABASE PracticeDB
ADD FILEGROUP fileGroup4
Go
--To check created and available file groups in the current database
SELECT name AS AvailableFilegroups
FROM sys.filegroups
WHERE type = 'FG'
--Adding Files to each File Group
ALTER DATABASE PracticeDB
ADD FILE
(
  NAME = [fileGroup1],
  FILENAME = 'F:\CFP\DataBaseProgramming\fileGroup1.ndf',
    SIZE = 5 MB,  
    MAXSIZE = UNLIMITED, 
    FILEGROWTH = 10 MB
) TO FILEGROUP fileGroup1
GO

ALTER DATABASE PracticeDB
ADD FILE
(
  NAME = [fileGroup2],
  FILENAME = 'F:\CFP\DataBaseProgramming\fileGroup2.ndf',
    SIZE = 5 MB,  
    MAXSIZE = UNLIMITED, 
    FILEGROWTH = 10 MB
) TO FILEGROUP fileGroup2
GO

ALTER DATABASE PracticeDB
ADD FILE
(
  NAME = [fileGroup3],
  FILENAME = 'F:\CFP\DataBaseProgramming\fileGroup3.ndf',
    SIZE = 5 MB,  
    MAXSIZE = UNLIMITED, 
    FILEGROWTH = 10 MB
) TO FILEGROUP fileGroup3
GO

ALTER DATABASE PracticeDB
ADD FILE
(
  NAME = [fileGroup4],
  FILENAME = 'F:\CFP\DataBaseProgramming\fileGroup4.ndf',
    SIZE = 5 MB,  
    MAXSIZE = UNLIMITED, 
    FILEGROWTH = 10 MB
) TO FILEGROUP fileGroup4
GO

-- Creates a partition function that will partition a table into four partitions
CREATE PARTITION FUNCTION myRangePF1 (int)
    AS RANGE LEFT FOR VALUES (1, 100, 1000) ;
GO
-- Creates a partition scheme that applies myRangePF1 to the four filegroups created above
CREATE PARTITION SCHEME myRangePS1
    AS PARTITION myRangePF1
    TO (fileGroup1, fileGroup2, fileGroup3, fileGroup4) ;
GO
-- Creates a partitioned table that uses myRangePS1 to partition col1
CREATE TABLE PartitionTable (col1 int PRIMARY KEY, col2 char(10))
    ON myRangePS1 (col1) ;
GO

SELECT *   
FROM sys.tables AS t   
JOIN sys.indexes AS i   
    ON t.[object_id] = i.[object_id]   
    AND i.[type] IN (0,1)   
JOIN sys.partition_schemes ps   
    ON i.data_space_id = ps.data_space_id   
WHERE t.name = 'PartitionTable';   
GO

use LMSDataBase
--Simple Query to Count Number of Developer of each technology
select technology, COUNT(user_name) as Number_of_Dev
from [CpuLogData2019-11-17-new]
group by technology;
--===========================================================
--Horizontal Partitioning cpu log wrt technology
--===========================================================
--create partitioning function
create partition function [CPU_COUNT_PF](int)
as Range left for values (N'2',N'4')
--create partition schemes, which file group it store that partition
--3 groups defined , two for less than equal 2,3, other is for value other than that range that will store at
create partition SCHEME [CPU_COUNT_PS] as partition [CPU_COUNT_PF] to ([Primary],[Primary],[Primary]);
---checking for partition created or not--
Select o.name objectname,i.name indexname,partition_id, partition_number,[rows]
from sys.partitions p
Inner join sys.objects o ON o.object_id=p.object_id
inner join sys.indexes i on i.object_id=p.object_id and p.index_id=i.index_id
where o.name Like '%[CpuLogData2019-11-17-new]%'
 
--===========================================================
--EXISTS Query
--===========================================================
use PracticeDB
SELECT CustomerName
FROM Customers
WHERE EXISTS
			(
			 SELECT CustomerName
			 FROM Customers
			 WHERE City='Mumbai' OR PostalCode = 10
			)
--===========================================================
--Vertical Partition Practice
--===========================================================
--First table creation
Create table FirstPartitionTable (
FirstPartId int identity(1,1) Primary Key,
CustomerName varchar(255) not null,
CompId int not null
)
--Second table creation
Create table SecondPartitionTable (
SecondPartId int identity(1,1) Primary Key,
City varchar(255) not null,
PostalCode int not null
)
--Insertion in first table
Insert into FirstPartitionTable (
CustomerName,
CompId
)
select CustomerName,
CompId from Customers
select * from FirstPartitionTable
--Insertion in second table
Insert into SecondPartitionTable (
City,
PostalCode
)
select City,
PostalCode from Customers
select * from SecondPartitionTable
select * from Customers