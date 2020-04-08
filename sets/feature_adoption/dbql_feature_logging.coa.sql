/*  extracts  the feature logging from dbqlogtbl WITHOUT
     the cartesian Join

  parameters
     dbqlogtbl  = {dbqlogtbl}
     siteid     = {siteid}
     startdate  = {startdate}
     enddate    = {enddate}
*/


SELECT
 '{siteid}' as SiteID
,LogDate
,MaskedUserName
,Request_count
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -16)))) AS "Collect Statistics"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -17)))) AS "Fallback"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -18)))) AS "SET Table"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -19)))) AS "MULTISET Table"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -20)))) AS "Hashed Table"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -21)))) AS "Trigger"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -22)))) AS "Block Level Compression"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -23)))) AS "Auto Compression"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -24)))) AS "Teradata Columnar"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -25)))) AS "No Primary Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -26)))) AS "Row Partitioning"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -27)))) AS "Multi Level Partitioning"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -28)))) AS "8 Byte Partitioning"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -29)))) AS "2 Byte Partitioning"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -30)))) AS "Column Partitioning and Row Partitioning"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -31)))) AS "Column-Partitioned and a NoPI"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -32)))) AS "Column-Partitioned and a PI"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -33)))) AS "Column-Partitioned and a PA"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -34)))) AS "Teradata Temporal"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -35)))) AS "Parameterized Query"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -36)))) AS "Binary LOB"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -37)))) AS "Character LOB"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -38)))) AS "Small LOB"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -39)))) AS "Scalar Sub Query"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -40)))) AS "Statement Info Parcel"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -41)))) AS "User Defined Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -42)))) AS "XML Data Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -43)))) AS "JSON Data Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -44)))) AS "Distinct Data Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -45)))) AS "Structure Data Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -46)))) AS "Geospatial"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -47)))) AS "3D Geospatial"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -48)))) AS "Period Data Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -49)))) AS "Array Data Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -50)))) AS "Number Data Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -51)))) AS "Teradata Stored Procedure"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -52)))) AS "User Defined Function"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -53)))) AS "External Stored Procedure"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -54)))) AS "Table Function"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -55)))) AS "Table Operator"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -56)))) AS "Foreign Function"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -57)))) AS "Teradata Remote Query"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -58)))) AS "Query Grid"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -59)))) AS "Data Stream Architecture"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -60)))) AS "DBQL SQL Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -61)))) AS "DBQL STEP Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -62)))) AS "DBQL OBJECTS Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -63)))) AS "DBQL EXPLAIN Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -64)))) AS "DBQL XMLPLAN Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -65)))) AS "DBQL STATSUSAGE Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -66)))) AS "DBQL PARAMINFO Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -67)))) AS "DBQL OBJECT USECOUNT Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -68)))) AS "DBQL UTILITYINFO Logging"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -69)))) AS "DBQL THRESHOLD Enabled"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -70)))) AS "Incremental Planning and Execution"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -71)))) AS "Teradata Unity"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -72)))) AS "Autoreparse"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -73)))) AS "Teradata In-Memory"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -74)))) AS "Teradata Pivot"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -75)))) AS "Teradata Unpivot"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -76)))) AS "Redrive"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -77)))) AS "Queryband"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -78)))) AS "Index Analysis"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -79)))) AS "Partition Analysis"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -80)))) AS "Replication"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -81)))) AS "Load Isolation"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -82)))) AS "Single Sender Row Re-Distribution"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -83)))) AS "Partition Level Locking"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -84)))) AS "Primary Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -85)))) AS "Secondary Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -86)))) AS "Composite Secondary Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -87)))) AS "Join Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -88)))) AS "Non Unique UnHashed Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -89)))) AS "Unique UnHashed Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -90)))) AS "Non Unique Hashed Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -91)))) AS "Unique Hashed Index"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -92)))) AS "Fastexport Protocol"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -93)))) AS "Fastload Protocol"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -94)))) AS "Multiload Protocol"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -95)))) AS "Archive/Restore"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -96)))) AS "MloadX Protocol"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -97)))) AS "Fast Path Function"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -98)))) AS "R Table Operator"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -99)))) AS "Bit Manipulation Function"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -100)))) AS "Analytics Extensions"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -101)))) AS "Partial Redistribution Partial Duplication"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -102)))) AS "Queryable View Column Info"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -103)))) AS "Multiple Count Distinct"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -104)))) AS "Aggregation Push for Union All"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -105)))) AS "Binary Join Push for Union All"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -106)))) AS "Script Table Operator"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -107)))) AS "Dataset Data Type"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -108)))) AS "Dot Notation"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -109)))) AS "Union All Pushdown"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -110)))) AS "In-Memory Enhancement for Outer Join"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -111)))) AS "In-Memory Enhancement for PRPD Join"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -112)))) AS "In-Memory All Rows One AMP Optimization"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -113)))) AS "In-Memory AVX2 Support"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -114)))) AS "InList Rewrite to Subquery"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -115)))) AS "InList Rewrite to Outer Join"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -116)))) AS "InList Rewrite disqualifed by MultiTable Expression"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -117)))) AS "InList Rewrite Threshold Exceeded"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -118)))) AS "Sparse Map"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -119)))) AS "Two Maps"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -120)))) AS "Not System-Default Map"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -121)))) AS "LEAD LAG Analytics"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -122)))) AS "Geospatial Index Single Table Predicate"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -123)))) AS "Geospatial Index Single Table Distance Predicate"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -124)))) AS "Geospatial Index Join Predicate"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -125)))) AS "Geospatial Index Distance Join Predicate"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -126)))) AS "Dataset Data Type Storage Format CSV"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -127)))) AS "Push TOP N into UNION ALL Derived Tables"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -128)))) AS "In-Memory Bulk Qualification Enhancements"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -129)))) AS "Time Series Table"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -130)))) AS "Soft RetLimit for number of rows AMP step returns"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -131)))) AS "Function Alias"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -132)))) AS "QueryGrid Remote Tables"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -133)))) AS "QueryGrid Common Remote Table Elimination"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -134)))) AS "Dynamic Parameterization of Literals Feature"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -135)))) AS "SET TRANSFORM"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -136)))) AS "ODBC Scalar Functions"
,ZEROIFNULL(SUM(GETBIT(A.FEATUREUSAGE,(2047 -137)))) AS "Multisource"
from
(
SELECT
 A.LogDate as LogDate,
 HASHROW(A.USERNAME) as MaskedUserName,
 A.FEATUREUSAGE,
 COUNT(*) as Request_Count
FROM {dbqlogtbl} /* PDCRINFO.DBQLOGTBL_HST */ as A
WHERE LogDate BETWEEN {startdate} and {enddate}
GROUP BY 1,2,3,4
) A
GROUP BY 1,2,3,4 having Request_Count > 0;
