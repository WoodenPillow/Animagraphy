CREATE TABLE [dbo].[userTable] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [fname]           NVARCHAR (50) NULL,
    [lname]           NVARCHAR (50) NULL,
    [gender]          NCHAR (10)    NULL,
    [interestedTopic] NVARCHAR (50) NULL,
    [email]           NVARCHAR (50) NULL,
    [username]        NVARCHAR (50) NULL,
    [password]        NVARCHAR (50) NULL,
    [usertype]        NCHAR (10)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

