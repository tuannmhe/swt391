USE [master]
GO
/****** Object:  Database [PRJ301_Project ]    Script Date: 3/12/2023 7:04:08 PM ******/
CREATE DATABASE [PRJ301_Project ]
 
GO
ALTER DATABASE [PRJ301_Project ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_Project ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_Project ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_Project ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_Project ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_Project ] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_Project ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_Project ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_Project ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_Project ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_Project ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_Project ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_Project ', N'ON'
GO
ALTER DATABASE [PRJ301_Project ] SET QUERY_STORE = ON
GO
ALTER DATABASE [PRJ301_Project ] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PRJ301_Project ]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/12/2023 7:04:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](10) NULL,
	[fullname] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog_Detail]    Script Date: 3/12/2023 7:04:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[user_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[thumbnail] [varchar](max) NULL,
	[brief] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[flag] [bit] NULL,
	[status] [bit] NULL,
	[date] [date] NULL,
	[author] [nvarchar](255) NULL,
 CONSTRAINT [PK_Blog_Detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Blog]    Script Date: 3/12/2023 7:04:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category_Blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([user_id], [username], [password], [fullname], [email]) VALUES (5, N'JohnDoe', N'123', N'John Doe', N'johndoe@example.com')
INSERT [dbo].[Account] ([user_id], [username], [password], [fullname], [email]) VALUES (7, N'JohnDoe', N'word123', N'John Doe', N'johndoe@example.com')
INSERT [dbo].[Account] ([user_id], [username], [password], [fullname], [email]) VALUES (8, N'JaneDoe', N'abc123', N'Jane Doe', N'janedoe@example.com')
INSERT [dbo].[Account] ([user_id], [username], [password], [fullname], [email]) VALUES (9, N'BobSmith', N'qwerty', N'Bob Smith', N'bobsmith@example.com')
INSERT [dbo].[Account] ([user_id], [username], [password], [fullname], [email]) VALUES (10, N'system123', NULL, N'Luong Thi Quyen', N'quyenlt08012001@gmail.com')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog_Detail] ON 

INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (1, 1, 1, N'Title 1qqqszfdcx', N'assets/images/courses/pic1.jpg', N'Brief 1', N'Description 1', 0, 1, CAST(N'2023-03-12' AS Date), N'Author 1')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (2, 2, 1, N'Title 2', N'assets/images/courses/pic2.jpg', N'Brief 2', N'Description 2', 1, 0, CAST(N'2023-03-10' AS Date), N'Author 2')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (4, 1, 1, N'First blog post', N'assets/images/courses/pic3.jpg', N'This is the first blog post', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec condimentum aliquet arcu ac porttitor. Fusce faucibus neque a leo posuere sagittis. Vestibulum tempor nunc sed finibus egestas. Sed id pulvinar arcu. Suspendisse euismod velit a nibh posuere, non commodo urna egestas.', 1, 1, CAST(N'2022-01-01' AS Date), N'John Doe')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (5, 2, 2, N'Second blog post', N'assets/images/courses/pic4.jpg', N'This is the second blog post', N'Phasellus sed justo id risus dignissim blandit eu in nisl. Ut hendrerit, mauris sit amet feugiat malesuada, mauris tortor aliquet turpis, vel consectetur enim metus eu elit. Sed feugiat velit vel odio interdum, ut bibendum tortor lacinia. Curabitur imperdiet orci ut aliquam tincidunt.', 1, 1, CAST(N'2022-02-01' AS Date), N'Jane Smith')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (6, 1, 3, N'Third blog post', N'assets/images/courses/pic4.jpg', N'This is the third blog post', N'Nulla vehicula efficitur purus, id gravida odio convallis non. Suspendisse auctor nisl sit amet dui convallis ultrices. Nullam et dolor euismod, bibendum mi ut, ultrices arcu. Fusce eget nunc a quam eleifend euismod eget ac nisi. Donec euismod, velit a aliquet sagittis, turpis ex consequat nisl, quis tempor magna urna at ipsum.', 1, 1, CAST(N'2022-03-01' AS Date), N'Bob Johnson')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (7, 1, 1, N'Title 1', N'assets/images/courses/pic4.jpg', N'Brief 1', N'Description 1', 0, 1, CAST(N'2022-01-01' AS Date), N'Author 1')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (8, 2, 2, N'Title 2', N'assets/images/courses/pic7.jpg', N'Brief 2', N'Description 2', 0, 1, CAST(N'2022-01-02' AS Date), N'Author 2')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (9, 3, 3, N'Title 3', N'thumbnail3.jpg', N'Brief 3', N'Description 3', 0, 1, CAST(N'2022-01-03' AS Date), N'Author 3')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (10, 1, 1, N'Bài viết số 1', N'thumbnail1.jpg', N'Bài viết số 1', N'Nội dung bài viết số 1', 1, 1, CAST(N'2023-03-12' AS Date), N'author 6')
INSERT [dbo].[Blog_Detail] ([id], [category_id], [user_id], [title], [thumbnail], [brief], [description], [flag], [status], [date], [author]) VALUES (11, 1, 1, N'sãz', N'Screenshot (57).png', N'sã', N'á', 0, 0, CAST(N'2023-03-12' AS Date), N'sa')
SET IDENTITY_INSERT [dbo].[Blog_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Category_Blog] ON 

INSERT [dbo].[Category_Blog] ([id], [name]) VALUES (1, N'C1')
INSERT [dbo].[Category_Blog] ([id], [name]) VALUES (2, N'C2')
INSERT [dbo].[Category_Blog] ([id], [name]) VALUES (3, N'C3')
SET IDENTITY_INSERT [dbo].[Category_Blog] OFF
GO
USE [master]
GO
ALTER DATABASE [PRJ301_Project ] SET  READ_WRITE 
GO
