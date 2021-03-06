USE [master]
GO
/****** Object:  Database [SWP_Group6_Blog_Student]    Script Date: 25-Nov-21 08:03:58 PM ******/
CREATE DATABASE [SWP_Group6_Blog_Student]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP_Group6_Blog_Student', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SWP_Group6_Blog_Student.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP_Group6_Blog_Student_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SWP_Group6_Blog_Student_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP_Group6_Blog_Student].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET  MULTI_USER 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SWP_Group6_Blog_Student', N'ON'
GO
USE [SWP_Group6_Blog_Student]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[username] [varchar](25) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[full_name] [varchar](255) NOT NULL,
	[role] [int] NOT NULL,
	[del_flag] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] NOT NULL,
	[admin_email] [varchar](50) NOT NULL,
	[admin_phone] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Award]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Award](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[detail] [nvarchar](250) NOT NULL,
	[content_id] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[created_by] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[title] [nvarchar](150) NOT NULL,
	[blog_content] [nvarchar](2000) NOT NULL,
	[created_on] [datetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[approved_on] [datetime] NULL,
	[approved_by] [int] NULL,
	[status] [int] NOT NULL,
	[vote] [int] NOT NULL,
	[subject_id] [varchar](6) NULL,
 CONSTRAINT [PK__Blog__3213E83F30D921D9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[detail] [nvarchar](250) NOT NULL,
	[vote] [int] NULL,
	[content_id] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[created_by] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[image_url] [varchar](500) NOT NULL,
	[content_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mentor]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mentor](
	[id] [int] NOT NULL,
	[mentor_email] [varchar](50) NOT NULL,
	[mentor_phone] [varchar](10) NOT NULL,
	[created_on] [datetime] NOT NULL,
	[created_by] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] NOT NULL,
	[student_email] [varchar](50) NOT NULL,
	[student_phone] [varchar](10) NOT NULL,
	[created_on] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subject_id] [varchar](6) NOT NULL,
	[subject_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[tag_id] [varchar](15) NOT NULL,
	[tag_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagEntry]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagEntry](
	[content_id] [int] NOT NULL,
	[tag_id] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 25-Nov-21 08:03:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[video_url] [varchar](500) NOT NULL,
	[content_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [full_name], [role], [del_flag]) VALUES (0, N'admin', N'123', N'admin', 1, 0)
INSERT [dbo].[Account] ([id], [username], [password], [full_name], [role], [del_flag]) VALUES (1, N'mentor', N'123', N'tuan2', 2, 0)
INSERT [dbo].[Account] ([id], [username], [password], [full_name], [role], [del_flag]) VALUES (2, N'student', N'123', N'tung22', 3, 0)
INSERT [dbo].[Account] ([id], [username], [password], [full_name], [role], [del_flag]) VALUES (3, N'mentor1', N'123', N'lam nguyen', 2, 0)
INSERT [dbo].[Account] ([id], [username], [password], [full_name], [role], [del_flag]) VALUES (4, N'tung', N'123', N'123123', 3, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Award] ON 

INSERT [dbo].[Award] ([id], [detail], [content_id], [created_on], [created_by]) VALUES (1, N'bai viet hay nhat', 1013, CAST(N'2021-11-25T19:58:14.000' AS DateTime), N'mentor')
INSERT [dbo].[Award] ([id], [detail], [content_id], [created_on], [created_by]) VALUES (2, N'bai viet pho bien', 1012, CAST(N'2021-11-25T19:58:41.000' AS DateTime), N'mentor')
SET IDENTITY_INSERT [dbo].[Award] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id], [title], [blog_content], [created_on], [created_by], [approved_on], [approved_by], [status], [vote], [subject_id]) VALUES (1012, N'Java', N'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.[18] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but has fewer low-level facilities than either of them. The Java runtime provides dynamic capabilities (such as reflection and runtime code modification) that are typically not available in traditional compiled languages. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[19][20] particularly for clientâserver web applications, with a reported 9 million developers.[21]', CAST(N'2021-11-25T19:31:54.000' AS DateTime), 2, CAST(N'2021-11-25T19:48:01.000' AS DateTime), 1, 2, 0, N'SWP391')
INSERT [dbo].[Blog] ([id], [title], [blog_content], [created_on], [created_by], [approved_on], [approved_by], [status], [vote], [subject_id]) VALUES (1013, N'.NET Framework', N'The .NET Framework (pronounced as "dot net") is a software framework developed by Microsoft that runs primarily on Microsoft Windows. It includes a large class library called Framework Class Library (FCL) and provides language interoperability (each language can use code written in other languages) across several programming languages. Programs written for .NET Framework execute in a software environment (in contrast to a hardware environment) named the Common Language Runtime (CLR). The CLR is an application virtual machine that provides services such as security, memory management, and exception handling. As such, computer code written using .NET Framework is called "managed code". FCL and CLR together constitute the .NET Framework.

FCL provides the user interface, data access, database connectivity, cryptography, web application development, numeric algorithms, and network communications. Programmers produce software by combining their source code with .NET Framework and other libraries. The framework is intended to be used by most new applications created for the Windows platform. Microsoft also produces an integrated development environment for .NET software called Visual Studio.', CAST(N'2021-11-25T19:47:48.000' AS DateTime), 1, CAST(N'2021-11-25T19:48:03.000' AS DateTime), 1, 2, 0, N'SWP391')
INSERT [dbo].[Blog] ([id], [title], [blog_content], [created_on], [created_by], [approved_on], [approved_by], [status], [vote], [subject_id]) VALUES (1014, N'Python', N'Python is an interpreted high-level general-purpose programming language. Its design philosophy emphasizes code readability with its use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.[31]

Python is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented and functional programming. It is often described as a "batteries included" language due to its comprehensive standard library.[32]

Guido van Rossum began working on Python in the late 1980s, as a successor to the ABC programming language, and first released it in 1991 as Python 0.9.0.[33] Python 2.0 was released in 2000 and introduced new features, such as list comprehensions and a cycle-detecting garbage collection system (in addition to reference counting). Python 3.0 was released in 2008 and was a major revision of the language that is not completely backward-compatible. Python 2 was discontinued with version 2.7.18 in 2020.[34]', CAST(N'2021-11-25T20:00:08.000' AS DateTime), 1, CAST(N'2021-11-25T20:00:17.000' AS DateTime), 1, 2, 0, N'LAB201')
INSERT [dbo].[Blog] ([id], [title], [blog_content], [created_on], [created_by], [approved_on], [approved_by], [status], [vote], [subject_id]) VALUES (1015, N'ReactJS', N'React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library[3] for building user interfaces based on UI components. It is maintained by Meta (formerly Facebook) and a community of individual developers and companies.[4][5][6] React can be used as a base in the development of single-page or mobile applications. However, React is only concerned with state management and rendering that state to the DOM, so creating React applications usually requires the use of additional libraries for routing, as well as certain client-side functionality.[7]', CAST(N'2021-11-25T20:00:37.000' AS DateTime), 2, CAST(N'2021-11-25T20:01:09.000' AS DateTime), 1, 2, 0, NULL)
INSERT [dbo].[Blog] ([id], [title], [blog_content], [created_on], [created_by], [approved_on], [approved_by], [status], [vote], [subject_id]) VALUES (1016, N'Angular', N'Angular (commonly referred to as "Angular 2+" or "Angular CLI")[4][5] is a TypeScript-based free and open-source web application framework led by the Angular Team at Google and by a community of individuals and corporations. Angular is a complete rewrite from the same team that built AngularJS.

Angular is used as the frontend of the MEAN stack, consisting of MongoDB database, Express.js web application server framework, Angular itself (or AngularJS), and Node.js server runtime environment.', CAST(N'2021-11-25T20:00:47.000' AS DateTime), 2, CAST(N'2021-11-25T20:01:11.000' AS DateTime), 1, 2, 0, N'FRO123')
INSERT [dbo].[Blog] ([id], [title], [blog_content], [created_on], [created_by], [approved_on], [approved_by], [status], [vote], [subject_id]) VALUES (1017, N'Node.js', N'Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine and executes JavaScript code outside a web browser. Node.js lets developers use JavaScript to write command line tools and for server-side scriptingârunning scripts server-side to produce dynamic web page content before the page is sent to the user''s web browser. Consequently, Node.js represents a "JavaScript everywhere" paradigm,[6] unifying web-application development around a single programming language, rather than different languages for server-side and client-side scripts.

Though .js is the standard filename extension for JavaScript code, the name "Node.js" does not refer to a particular file in this context and is merely the name of the product. Node.js has an event-driven architecture capable of asynchronous I/O. These design choices aim to optimize throughput and scalability in web applications with many input/output operations, as well as for real-time Web applications (e.g., real-time communication programs and browser games).[7]

The Node.js distributed development project was previously governed by the Node.js Foundation,[8] and has now merged with the JS Foundation to form the OpenJS Foundation, which is facilitated by the Linux Foundation''s Collaborative Projects program.[9]', CAST(N'2021-11-25T19:56:46.000' AS DateTime), 2, NULL, -1, 1, 0, N'BAC123')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [image_url], [content_id]) VALUES (2017, N'img220211125193152.png', 1012)
INSERT [dbo].[Image] ([id], [image_url], [content_id]) VALUES (2018, N'img120211125194746.png', 1013)
INSERT [dbo].[Image] ([id], [image_url], [content_id]) VALUES (2019, N'img120211125194933.jpg', 1014)
INSERT [dbo].[Image] ([id], [image_url], [content_id]) VALUES (2020, N'img220211125195057.png', 1015)
INSERT [dbo].[Image] ([id], [image_url], [content_id]) VALUES (2021, N'img220211125195518.jpg', 1016)
INSERT [dbo].[Image] ([id], [image_url], [content_id]) VALUES (2022, N'img220211125195645.png', 1017)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
INSERT [dbo].[Mentor] ([id], [mentor_email], [mentor_phone], [created_on], [created_by]) VALUES (1, N'tuan@fpt.vn', N'1231231231', CAST(N'2021-10-26T19:56:37.000' AS DateTime), N'admin')
INSERT [dbo].[Mentor] ([id], [mentor_email], [mentor_phone], [created_on], [created_by]) VALUES (3, N'manhtung2561995@gmail.com', N'1234773619', CAST(N'2021-10-26T20:16:15.000' AS DateTime), N'admin')
GO
INSERT [dbo].[Student] ([id], [student_email], [student_phone], [created_on]) VALUES (2, N'manhtung2561995@gmail.com', N'1234773619', CAST(N'2021-10-26T20:01:30.000' AS DateTime))
INSERT [dbo].[Student] ([id], [student_email], [student_phone], [created_on]) VALUES (4, N'1232@gmail.com', N'1234773619', CAST(N'2021-10-26T20:38:02.000' AS DateTime))
GO
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (N'BAC123', N'Back-end')
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (N'FRO123', N'Front-end')
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (N'LAB201', N'lab java')
INSERT [dbo].[Subject] ([subject_id], [subject_name]) VALUES (N'SWP391', N'software project')
GO
INSERT [dbo].[Tag] ([tag_id], [tag_name]) VALUES (N'HT', N'studying')
INSERT [dbo].[Tag] ([tag_id], [tag_name]) VALUES (N'KT', N'knowledge')
INSERT [dbo].[Tag] ([tag_id], [tag_name]) VALUES (N'SHARE', N'sharing')
INSERT [dbo].[Tag] ([tag_id], [tag_name]) VALUES (N'WEB', N'web site')
GO
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1012, N'KT')
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1013, N'HT')
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1013, N'KT')
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1014, N'KT')
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1015, N'KT')
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1015, N'WEB')
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1016, N'SHARE')
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1016, N'WEB')
INSERT [dbo].[TagEntry] ([content_id], [tag_id]) VALUES (1017, N'KT')
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([id], [video_url], [content_id]) VALUES (2016, N'vid220211125193153.mp4', 1012)
INSERT [dbo].[Video] ([id], [video_url], [content_id]) VALUES (2017, N'img120211125194747.mp4', 1013)
INSERT [dbo].[Video] ([id], [video_url], [content_id]) VALUES (2018, N'img120211125194934.mp4', 1014)
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__F3DBC5729B6D1C23]    Script Date: 25-Nov-21 08:03:59 PM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Account] FOREIGN KEY([id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_Account]
GO
ALTER TABLE [dbo].[Award]  WITH CHECK ADD  CONSTRAINT [FK_Award_Blog] FOREIGN KEY([content_id])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[Award] CHECK CONSTRAINT [FK_Award_Blog]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Account] FOREIGN KEY([created_by])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Account]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Subject] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subject] ([subject_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Subject]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Blog] FOREIGN KEY([content_id])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Blog]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Blog] FOREIGN KEY([content_id])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Blog]
GO
ALTER TABLE [dbo].[Mentor]  WITH CHECK ADD  CONSTRAINT [FK_Mentor_Account] FOREIGN KEY([id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Mentor] CHECK CONSTRAINT [FK_Mentor_Account]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account] FOREIGN KEY([id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Account]
GO
ALTER TABLE [dbo].[TagEntry]  WITH CHECK ADD  CONSTRAINT [FK_TagEntry_Blog] FOREIGN KEY([content_id])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[TagEntry] CHECK CONSTRAINT [FK_TagEntry_Blog]
GO
ALTER TABLE [dbo].[TagEntry]  WITH CHECK ADD  CONSTRAINT [FK_TagEntry_Tag] FOREIGN KEY([tag_id])
REFERENCES [dbo].[Tag] ([tag_id])
GO
ALTER TABLE [dbo].[TagEntry] CHECK CONSTRAINT [FK_TagEntry_Tag]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_Blog] FOREIGN KEY([content_id])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_Blog]
GO
USE [master]
GO
ALTER DATABASE [SWP_Group6_Blog_Student] SET  READ_WRITE 
GO
