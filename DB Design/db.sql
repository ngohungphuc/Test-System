USE [TestSystemManagementDB]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 05/12/2016 11:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectCode] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[TestDate] [datetime] NULL,
	[Total] [float] NULL,
	[TestDetailId] [nvarchar](max) NULL,
	[TestMapId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Results] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestChildSubjects]    Script Date: 05/12/2016 11:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestChildSubjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestChildSubjectId] [nvarchar](max) NULL,
	[SubjectCode] [nvarchar](max) NULL,
	[TestChildSubjectName] [nvarchar](max) NULL,
	[TestSubjectId] [nvarchar](max) NULL,
	[TestDetailId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TestChildSubjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestDetails]    Script Date: 05/12/2016 11:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[AnswerA] [nvarchar](max) NULL,
	[AnswerB] [nvarchar](max) NULL,
	[AnswerC] [nvarchar](max) NULL,
	[AnswerD] [nvarchar](max) NULL,
	[CorrectAnswer] [nvarchar](max) NULL,
	[TypeOfQuestion] [int] NULL,
	[Point] [float] NULL,
	[TestChildSubjectId] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[ResultId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TestDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestMaps]    Script Date: 05/12/2016 11:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestMaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[SubjectCode] [nvarchar](max) NULL,
	[TestDetailId] [nvarchar](max) NULL,
	[ResultId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TestMaps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestSubjects]    Script Date: 05/12/2016 11:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestSubjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](max) NULL,
	[SubjectCode] [nvarchar](max) NULL,
	[SecretCode] [nvarchar](max) NULL,
	[NoOfEasyQuestion] [int] NULL,
	[NoOfMediumQuestion] [int] NULL,
	[NoOfHardQuestion] [int] NULL,
	[TestDate] [datetime] NULL,
	[FinishTime] [datetime] NULL,
	[TestChildSubjectId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TestSubjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/12/2016 11:20:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[AccessLevel] [int] NULL,
	[TestDetailId] [nvarchar](max) NULL,
	[ResultId] [nvarchar](max) NULL,
	[TestMapId] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TestDetails] ON 

INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (281, N'<img alt="" src="/Content/imgimages/word1.jpg" style="width: 498px; height: 265px;" /><br />
<br />
<br />
<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">Bạn đ&atilde; b&ocirc;i đen d&ograve;ng chữ Viện C&ocirc;ng nghệ Th&ocirc;ng tin v&agrave; bạn muốn d&ograve;ng chữ n&agrave;y được đậm l&ecirc;n. Bạn nhấn tổ hợp ph&iacute;m n&agrave;o để thực hiện điều n&agrave;y.</span>', N'&nbsp;Ctrl &ndash; B<br />
test<br />
', N'Ctrl &ndash; C', N'Ctrl &ndash; A', N'Ctrl &ndash; K&nbsp;', N'C', 1, 0.25, N'51303129', NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (282, N'<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">Bạn đ&atilde; lựa chọn (b&ocirc;i đen) 3 &ocirc; của bảng như h&igrave;nh vẽ v&agrave; sau đ&oacute; nhấn chuột phải. Bạn chọn chức năng n&agrave;o để trộn 3 &ocirc; n&agrave;y l&agrave;m một</span><br />
<br />
<br />
<img alt="" src="/Content/imgimages/word2.jpg" style="width: 508px; height: 388px;" />', N'&nbsp;Delete rows', N'Merge Cells', N'Distribute Row Evenly', N'Distribute Column Evenly&nbsp;', N'A', 1, 0.25, N'51303129', NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (283, N'<div class="lb_cau" style="box-sizing: border-box; font-weight: 700; text-decoration: underline; text-transform: uppercase; font-family: tahoma; color: rgb(45, 54, 217);">
	&nbsp;</div>
<div class="space10" style="box-sizing: border-box; clear: both; width: 622px; height: 10px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;">
	&nbsp;</div>
<div class="lb_cauhoi" style="box-sizing: border-box; font-size: 13px; line-height: 25px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;">
	<p style="box-sizing: border-box; margin: 0px;">
		Bạn đ&atilde; tạo bảng c&oacute; 2 cột v&agrave; 2 d&ograve;ng. Sau khi chọn cột 2, bạn nhấn chuột v&agrave;o v&ugrave;ng n&agrave;o để ch&egrave;n th&ecirc;m 1 cột nằm giữa 2 cột đ&atilde; c&oacute;<br />
		<img alt="" src="/Content/imgimages/word3.jpg" style="width: 536px; height: 276px;" />.</p>
</div>
<br />
', N'&nbsp;Nhấn v&agrave;o v&ugrave;ng 6', N'&nbsp;Nhấn v&agrave;o v&ugrave;ng 4', N'&nbsp;Nhấn v&agrave;o v&ugrave;ng 2', N'&nbsp;Nhấn v&agrave;o v&ugrave;ng 2', N'A', 1, 0.25, N'51303129', NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (284, N'<div class="lb_cau" style="box-sizing: border-box; font-weight: 700; text-decoration: underline; text-transform: uppercase; font-family: tahoma; color: rgb(45, 54, 217);">
	&nbsp;</div>
<div class="space10" style="box-sizing: border-box; clear: both; width: 622px; height: 10px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;">
	<span style="font-size: 13px;">Để c&oacute; thể đ&aacute;nh được chỉ số dưới, v&iacute; dụ như H20 (h&igrave;nh minh họa), bạn cần</span></div>
<div class="lb_cauhoi" style="box-sizing: border-box; font-size: 13px; line-height: 25px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;">
	<p style="box-sizing: border-box; margin: 0px;">
		.</p>
</div>
<img alt="" src="/Content/imgimages/word4.jpg" style="width: 498px; height: 281px;" /><br />
', N'B&ocirc;i đen số 2, nhấn tổ hợp ph&iacute;m (Ctrl = )', N'B&ocirc;i đen số 2, nhấn tổ hợp ph&iacute;m (Ctrl Shift =)', N'B&ocirc;i đen số 2, nhấn tổ hợp ph&iacute;m (Ctrl Alt =)', N'B&ocirc;i đen số 2, nhấn tổ hợp ph&iacute;m (Alt shift =)', N'A', 1, 0.25, N'51303129', NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (285, N'Question 1', N'answer a answer a answer a answer a answer a answer a answer aanswer aanswer aanswer aanswer a', N'answer b', N'answer c', N'answer d', N'a,b,c,d', 2, 0.25, NULL, NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (286, N'Question 2', N'answer a', N'answer b', N'answer c', N'answer d', N'a,b,c,d', 2, 0.25, NULL, NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (287, N'Question 1', N'answer a answer a answer a answer a answer a answer a answer aanswer aanswer aanswer aanswer a', N'answer b', N'answer c', N'answer d', N'a,b,c,d', 3, 0.25, NULL, NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (288, N'Question 2', N'answer a', N'answer b', N'answer c', N'answer d', N'a,b,c,d', 3, 0.25, NULL, NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (289, N'Question 1', N'answer a answer a answer a answer a answer a answer a answer aanswer aanswer aanswer aanswer a', N'answer b', N'answer c', N'answer d', N'a,b,c,d', 3, 0.25, NULL, NULL, NULL)
INSERT [dbo].[TestDetails] ([Id], [Question], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [CorrectAnswer], [TypeOfQuestion], [Point], [TestChildSubjectId], [UserId], [ResultId]) VALUES (290, N'Question 2', N'answer a', N'answer b', N'answer c', N'answer d', N'a,b,c,d', 2, 0.25, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TestDetails] OFF
SET IDENTITY_INSERT [dbo].[TestSubjects] ON 

INSERT [dbo].[TestSubjects] ([Id], [SubjectName], [SubjectCode], [SecretCode], [NoOfEasyQuestion], [NoOfMediumQuestion], [NoOfHardQuestion], [TestDate], [FinishTime], [TestChildSubjectId]) VALUES (1, N'aaaaaaaaaa', N'aaaaaaaaaaaaaaaaaaa', N'aaaaaaaaaaaaaaaaaaa', 1, 1, 1, CAST(N'2016-10-07 12:45:00.000' AS DateTime), CAST(N'2016-10-07 12:45:00.000' AS DateTime), NULL)
INSERT [dbo].[TestSubjects] ([Id], [SubjectName], [SubjectCode], [SecretCode], [NoOfEasyQuestion], [NoOfMediumQuestion], [NoOfHardQuestion], [TestDate], [FinishTime], [TestChildSubjectId]) VALUES (2, N'aa', N'aa', N'a', 1, 1, 1, CAST(N'2016-10-07 12:45:00.000' AS DateTime), CAST(N'2016-10-07 12:45:00.000' AS DateTime), NULL)
INSERT [dbo].[TestSubjects] ([Id], [SubjectName], [SubjectCode], [SecretCode], [NoOfEasyQuestion], [NoOfMediumQuestion], [NoOfHardQuestion], [TestDate], [FinishTime], [TestChildSubjectId]) VALUES (3, N'a', N'a', N'a', 1, 1, 1, CAST(N'2016-10-07 12:45:00.000' AS DateTime), CAST(N'2016-10-07 12:45:00.000' AS DateTime), NULL)
INSERT [dbo].[TestSubjects] ([Id], [SubjectName], [SubjectCode], [SecretCode], [NoOfEasyQuestion], [NoOfMediumQuestion], [NoOfHardQuestion], [TestDate], [FinishTime], [TestChildSubjectId]) VALUES (4, N'a', N'a', N'a', 1, 1, 1, CAST(N'2016-10-07 12:45:00.000' AS DateTime), CAST(N'2016-10-07 12:45:00.000' AS DateTime), NULL)
INSERT [dbo].[TestSubjects] ([Id], [SubjectName], [SubjectCode], [SecretCode], [NoOfEasyQuestion], [NoOfMediumQuestion], [NoOfHardQuestion], [TestDate], [FinishTime], [TestChildSubjectId]) VALUES (5, N'a', N'a', N'a', 1, 1, 1, CAST(N'2016-10-07 12:45:00.000' AS DateTime), CAST(N'2016-10-07 12:45:00.000' AS DateTime), NULL)
INSERT [dbo].[TestSubjects] ([Id], [SubjectName], [SubjectCode], [SecretCode], [NoOfEasyQuestion], [NoOfMediumQuestion], [NoOfHardQuestion], [TestDate], [FinishTime], [TestChildSubjectId]) VALUES (6, N'a', N'a', N'aa', 1, 1, 1, CAST(N'2016-10-07 12:45:00.000' AS DateTime), CAST(N'2016-10-07 12:45:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[TestSubjects] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserId], [Username], [Password], [AccessLevel], [TestDetailId], [ResultId], [TestMapId]) VALUES (1, N'51303129', N'phucngo', N'070695', 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
