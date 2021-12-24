use LMSDataBase
--======================================================================
--1.Writes a query to create index of CPU_Log_Data
--======================================================================
Select * from [dbo].[CpuLogData2019-11-17-new]
--CREATE INDEX
create index in_retrieveCPU
on dbo.[CpuLogData2019-11-17-new](cpu_avg_load_over_5_min Asc);
select * from dbo.[CpuLogData2019-11-17-new]
where cpu_avg_load_over_5_min>1 and cpu_avg_load_over_5_min<1.5;
--The DROP INDEX statement is used to delete an index in a table.
DROP INDEX in_retrieveCPU ON [dbo].[CpuLogData2019-11-17-new];
--======================================================================
--2.Writes a query to create Clustered index of CPU_Log_Data
--======================================================================
--CREATE NON-CLUSTERED INDEX
create CLUSTERED INDEX in_retrieveCPU
on dbo.[CpuLogData2019-11-17-new](cpu_avg_load_over_5_min DESC);
select * from dbo.[CpuLogData2019-11-17-new]
where cpu_avg_load_over_5_min>1 and cpu_avg_load_over_5_min<1.5;
--The DROP INDEX statement is used to delete an index in a table.
DROP INDEX in_retrieveCPU ON [dbo].[CpuLogData2019-11-17-new];
--======================================================================
--3.Writes a query to create Non Clustered index of CPU_Log_Data
--======================================================================
CREATE NONCLUSTERED INDEX IX_tblmumbai_Name  
ON dbo.[CpuLogData2019-11-17-new](Usage_Cpu_Count ASC);
select * from dbo.[CpuLogData2019-11-17-new]
where cpu_avg_load_over_5_min>1 and cpu_avg_load_over_5_min<1.5;
DROP INDEX IX_tblmumbai_Name ON [dbo].[CpuLogData2019-11-17-new];