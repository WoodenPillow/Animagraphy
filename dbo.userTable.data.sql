SET IDENTITY_INSERT [dbo].[userTable] ON
INSERT INTO [dbo].[userTable] ([Id], [fname], [lname], [gender], [interestedTopic], [email], [username], [password], [usertype]) VALUES (1, N'mem1', N'ber1', N'M         ', N'c', N'member1@gmail.com', N'member1', N'member1', N'member    ')
INSERT INTO [dbo].[userTable] ([Id], [fname], [lname], [gender], [interestedTopic], [email], [username], [password], [usertype]) VALUES (2, N'mem2', N'ber2', N'F         ', N'b', N'member2@gmail.com', N'member2', N'member2', N'member    ')
INSERT INTO [dbo].[userTable] ([Id], [fname], [lname], [gender], [interestedTopic], [email], [username], [password], [usertype]) VALUES (3, N'ad1', N'min1', N'M         ', N'd', N'admin1@gmail.com', N'admin1', N'admin1', N'admin     ')
SET IDENTITY_INSERT [dbo].[userTable] OFF
