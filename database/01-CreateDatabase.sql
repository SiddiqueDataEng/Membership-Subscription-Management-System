/*
 * Membership Subscription Management System
 * Project #16 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, C#
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'MembershipDB')
BEGIN
    ALTER DATABASE MembershipDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE MembershipDB;
END
GO

CREATE DATABASE MembershipDB
ON PRIMARY
(
    NAME = 'MembershipDB_Data',
    FILENAME = 'C:\SQLData\MembershipDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'MembershipDB_Log',
    FILENAME = 'C:\SQLData\MembershipDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE MembershipDB SET RECOVERY SIMPLE;
ALTER DATABASE MembershipDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE MembershipDB;
GO

PRINT 'Database MembershipDB created successfully';
PRINT 'Project: Membership Subscription Management System';
PRINT 'Description: Renewals, billing cycles, and member status handling';
GO
