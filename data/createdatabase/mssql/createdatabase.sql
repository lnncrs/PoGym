USE [master]
GO
/****** Object:  Database [pogym]    Script Date: 06/11/2016 16:30:25 ******/
CREATE DATABASE [pogym] CONTAINMENT = NONE
GO
ALTER DATABASE [pogym] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pogym].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pogym] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pogym] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pogym] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pogym] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pogym] SET ARITHABORT OFF 
GO
ALTER DATABASE [pogym] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pogym] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pogym] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pogym] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pogym] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pogym] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pogym] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pogym] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pogym] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pogym] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pogym] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pogym] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pogym] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pogym] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pogym] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pogym] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pogym] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pogym] SET RECOVERY FULL 
GO
ALTER DATABASE [pogym] SET  MULTI_USER 
GO
ALTER DATABASE [pogym] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pogym] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pogym] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pogym] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pogym] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'pogym', N'ON'
GO
ALTER DATABASE [pogym] SET QUERY_STORE = OFF
GO
USE [pogym]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [pogym]
GO
/****** Object:  Table [dbo].[attacks]    Script Date: 06/11/2016 16:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attacks](
	[attack_id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[attack_type_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
	[damage] [decimal](18, 2) NOT NULL,
	[damage_stab]  AS ([damage]*(1.25)),
	[damageps] [decimal](18, 2) NOT NULL,
	[damageps_stab]  AS ([damageps]*(1.25)),
	[move_cooldown] [decimal](18, 2) NOT NULL,
	[defensive_damageps] [decimal](18, 2) NULL,
	[damage_window] [int] NULL,
	[critical] [int] NULL,
	[energyps] [decimal](18, 2) NULL,
	[charge] [int] NULL,
 CONSTRAINT [PK_attacks] PRIMARY KEY CLUSTERED 
(
	[attack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[attacks_types]    Script Date: 06/11/2016 16:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attacks_types](
	[attack_type_id] [int] NOT NULL,
	[type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_attack_types] PRIMARY KEY CLUSTERED 
(
	[attack_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pokemons]    Script Date: 06/11/2016 16:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pokemons](
	[pokemon_id] [int] NOT NULL,
	[evolvefrom_pokemon_id] [int] NULL,
	[name] [nvarchar](100) NOT NULL,
	[icon] [nvarchar](400) NULL,
	[image] [nvarchar](400) NULL,
	[url] [nvarchar](400) NOT NULL,
	[height_avg] [decimal](18, 2) NOT NULL,
	[weight_avg] [decimal](18, 2) NOT NULL,
	[combatpower_max] [int] NOT NULL,
	[attack_base] [int] NOT NULL,
	[defense_base] [int] NOT NULL,
	[stamina_base] [int] NOT NULL,
 CONSTRAINT [PK_pokemon] PRIMARY KEY CLUSTERED 
(
	[pokemon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pokemons_attacks]    Script Date: 06/11/2016 16:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pokemons_attacks](
	[pokemon_attack_id] [int] IDENTITY(1,1) NOT NULL,
	[pokemon_id] [int] NOT NULL,
	[attack_id] [int] NOT NULL,
	[true_damageps] [decimal](18, 2) NULL,
 CONSTRAINT [PK_pokemons_attacks] PRIMARY KEY CLUSTERED 
(
	[pokemon_attack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pokemons_types]    Script Date: 06/11/2016 16:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pokemons_types](
	[pokemon_type_id] [int] IDENTITY(1,1) NOT NULL,
	[pokemon_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
 CONSTRAINT [PK_pokemons_types] PRIMARY KEY CLUSTERED 
(
	[pokemon_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[types]    Script Date: 06/11/2016 16:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[types](
	[type_id] [int] NOT NULL,
	[type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_types] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[types_types]    Script Date: 06/11/2016 16:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[types_types](
	[type_type_id] [int] IDENTITY(1,1) NOT NULL,
	[attacker_type_id] [int] NOT NULL,
	[defender_type_id] [int] NOT NULL,
	[multiplier] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_types_types] PRIMARY KEY CLUSTERED 
(
	[type_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[attacks]  WITH CHECK ADD  CONSTRAINT [FK_attacks_attacks_types] FOREIGN KEY([attack_type_id])
REFERENCES [dbo].[attacks_types] ([attack_type_id])
GO
ALTER TABLE [dbo].[attacks] CHECK CONSTRAINT [FK_attacks_attacks_types]
GO
ALTER TABLE [dbo].[attacks]  WITH CHECK ADD  CONSTRAINT [FK_attacks_types] FOREIGN KEY([type_id])
REFERENCES [dbo].[types] ([type_id])
GO
ALTER TABLE [dbo].[attacks] CHECK CONSTRAINT [FK_attacks_types]
GO
ALTER TABLE [dbo].[pokemons]  WITH CHECK ADD  CONSTRAINT [FK_pokemons_pokemons] FOREIGN KEY([evolvefrom_pokemon_id])
REFERENCES [dbo].[pokemons] ([pokemon_id])
GO
ALTER TABLE [dbo].[pokemons] CHECK CONSTRAINT [FK_pokemons_pokemons]
GO
ALTER TABLE [dbo].[pokemons_attacks]  WITH CHECK ADD  CONSTRAINT [FK_pokemons_attacks_attacks] FOREIGN KEY([attack_id])
REFERENCES [dbo].[attacks] ([attack_id])
GO
ALTER TABLE [dbo].[pokemons_attacks] CHECK CONSTRAINT [FK_pokemons_attacks_attacks]
GO
ALTER TABLE [dbo].[pokemons_attacks]  WITH CHECK ADD  CONSTRAINT [FK_pokemons_attacks_pokemons] FOREIGN KEY([pokemon_id])
REFERENCES [dbo].[pokemons] ([pokemon_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pokemons_attacks] CHECK CONSTRAINT [FK_pokemons_attacks_pokemons]
GO
ALTER TABLE [dbo].[pokemons_types]  WITH CHECK ADD  CONSTRAINT [FK_pokemons_types_pokemons] FOREIGN KEY([pokemon_id])
REFERENCES [dbo].[pokemons] ([pokemon_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pokemons_types] CHECK CONSTRAINT [FK_pokemons_types_pokemons]
GO
ALTER TABLE [dbo].[pokemons_types]  WITH CHECK ADD  CONSTRAINT [FK_pokemons_types_types] FOREIGN KEY([type_id])
REFERENCES [dbo].[types] ([type_id])
GO
ALTER TABLE [dbo].[pokemons_types] CHECK CONSTRAINT [FK_pokemons_types_types]
GO
ALTER TABLE [dbo].[types_types]  WITH CHECK ADD  CONSTRAINT [FK_types_types_types] FOREIGN KEY([attacker_type_id])
REFERENCES [dbo].[types] ([type_id])
GO
ALTER TABLE [dbo].[types_types] CHECK CONSTRAINT [FK_types_types_types]
GO
ALTER TABLE [dbo].[types_types]  WITH CHECK ADD  CONSTRAINT [FK_types_types_types1] FOREIGN KEY([defender_type_id])
REFERENCES [dbo].[types] ([type_id])
GO
ALTER TABLE [dbo].[types_types] CHECK CONSTRAINT [FK_types_types_types1]
GO
USE [master]
GO
ALTER DATABASE [pogym] SET  READ_WRITE 
GO
