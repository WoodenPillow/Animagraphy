CREATE TABLE [dbo].[leaderboard] (
    [Id]            INT IDENTITY(1,1) NOT NULL,
    [name]          NVARCHAR (50) NULL,
    [points]        FLOAT (53)    NULL,
    [learningHours] FLOAT (53)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
