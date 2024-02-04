CREATE DATABASE [KEYHAN_TESTCASE]
GO
USE [KEYHAN_TESTCASE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RUNWAYV22]') AND type in (N'U'))
ALTER TABLE [dbo].[RUNWAYV22] DROP CONSTRAINT IF EXISTS [FK_RUNWAYV22_AIRPORT]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RUNWAYV19]') AND type in (N'U'))
ALTER TABLE [dbo].[RUNWAYV19] DROP CONSTRAINT IF EXISTS [FK_RUNWAYV19_AIRPORT]
GO
/****** Object:  Table [dbo].[RUNWAYV22]    Script Date: 2/3/2024 1:40:47 AM ******/
DROP TABLE IF EXISTS [dbo].[RUNWAYV22]
GO
/****** Object:  Table [dbo].[RUNWAYV19]    Script Date: 2/3/2024 1:40:47 AM ******/
DROP TABLE IF EXISTS [dbo].[RUNWAYV19]
GO
/****** Object:  Table [dbo].[AIRPORT]    Script Date: 2/3/2024 1:40:47 AM ******/
DROP TABLE IF EXISTS [dbo].[AIRPORT]
GO
/****** Object:  Table [dbo].[AIRPORT]    Script Date: 2/3/2024 1:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AIRPORT](
	[RecordType] [char](1) NOT NULL,
	[CustomerAreaCode] [char](3) NOT NULL,
	[SectionCode] [char](1) NOT NULL,
	[AirportIcaoIdentifier] [char](4) NOT NULL,
	[IcaoCode] [char](2) NOT NULL,
	[SubSectionCode] [char](1) NOT NULL,
	[AtaIataDesignator] [char](3) NOT NULL,
	[ContinuationNumber] [char](1) NOT NULL,
	[SpeedLimitAltitude] [char](5) NOT NULL,
	[LongestRunway] [char](3) NOT NULL,
	[IfrCapability] [char](1) NOT NULL,
	[LongestRunwaySurfaceCode] [char](1) NOT NULL,
	[AirportReferencePointLatitude] [char](9) NOT NULL,
	[AirportReferencePointLongitude] [char](10) NOT NULL,
	[MagneticVariation] [char](5) NOT NULL,
	[AirportElevation] [char](5) NOT NULL,
	[SpeedLimit] [char](3) NOT NULL,
	[RecommendedNavaid] [char](4) NOT NULL,
	[IcaoCode1] [char](2) NOT NULL,
	[TransitionsAltitude] [char](5) NOT NULL,
	[TransitionLevel] [char](5) NOT NULL,
	[PublicMilitaryIndicator] [char](1) NOT NULL,
	[TimeZone] [char](3) NOT NULL,
	[DaylightIndicator] [char](1) NOT NULL,
	[MagneticTrueIndicator] [char](1) NOT NULL,
	[DatumCode] [char](3) NOT NULL,
	[AirportName] [char](30) NOT NULL,
	[Cycle] [char](4) NOT NULL,
 CONSTRAINT [PK_AIRPORT] PRIMARY KEY CLUSTERED 
(
	[AirportIcaoIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RUNWAYV19]    Script Date: 2/3/2024 1:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RUNWAYV19](
	[RecordType] [char](1) NOT NULL,
	[CustomerAreaCode] [char](3) NOT NULL,
	[SectionCode] [char](1) NOT NULL,
	[AirportICAOIdentifier] [char](4) NOT NULL,
	[IcaoCode] [char](2) NOT NULL,
	[SubSectionCode] [char](1) NOT NULL,
	[RunwayIdentifier] [char](5) NOT NULL,
	[ContinuationNumber] [char](1) NOT NULL,
	[RunwayLength] [char](5) NOT NULL,
	[RunwayMagneticBearing] [char](4) NOT NULL,
	[RunwayLatitude] [char](9) NOT NULL,
	[RunwayLongitude] [char](10) NOT NULL,
	[RunwayGradient] [char](5) NOT NULL,
	[LtpEllipsoidHeight] [char](6) NOT NULL,
	[LandingThresholdElevation] [char](5) NOT NULL,
	[DisplacedThresholdDistance] [char](4) NOT NULL,
	[ThresholdCrossingHeight] [char](2) NOT NULL,
	[RunwayWidth] [char](3) NOT NULL,
	[TchValueIndicator] [char](1) NOT NULL,
	[Stopway] [char](4) NOT NULL,
	[RunwayDescription] [char](22) NOT NULL,
	[Cycle] [char](4) NOT NULL,
 CONSTRAINT [PK_RUNWAYV19] PRIMARY KEY CLUSTERED 
(
	[AirportICAOIdentifier] ASC,
	[RunwayIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RUNWAYV22]    Script Date: 2/3/2024 1:40:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RUNWAYV22](
	[RecordType] [char](1) NOT NULL,
	[CustomerAreaCode] [char](3) NOT NULL,
	[SectionCode] [char](1) NOT NULL,
	[AirportICAOIdentifier] [char](4) NOT NULL,
	[IcaoCode] [char](2) NOT NULL,
	[SubSectionCode] [char](1) NOT NULL,
	[RunwayIdentifier] [char](5) NOT NULL,
	[ContinuationNumber] [char](1) NOT NULL,
	[RunwayLength] [char](5) NOT NULL,
	[RunwayMagneticBearing] [char](4) NOT NULL,
	[RunwayLatitude] [char](9) NOT NULL,
	[RunwayLongitude] [char](10) NOT NULL,
	[RunwayGradient] [char](5) NOT NULL,
	[LtpEllipsoidHeight] [char](6) NOT NULL,
	[LandingThresholdElevation] [char](5) NOT NULL,
	[DisplacedThresholdDistance] [char](4) NOT NULL,
	[RunwayWidth] [char](3) NOT NULL,
	[TchValueIndicator] [char](1) NOT NULL,
	[Stopway] [char](4) NOT NULL,
	[ThresholdCrossingHeight] [char](3) NOT NULL,
	[RunwayAccuracyComplianceFlag] [char](1) NOT NULL,
	[LandingThresholdElevationAccuraryComplianceFlag] [char](1) NOT NULL,
	[RunwayDescription] [char](22) NOT NULL,
	[Cycle] [char](4) NOT NULL,
 CONSTRAINT [PK_RUNWAYV22] PRIMARY KEY CLUSTERED 
(
	[AirportICAOIdentifier] ASC,
	[RunwayIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AIRPORT] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportIcaoIdentifier], [IcaoCode], [SubSectionCode], [AtaIataDesignator], [ContinuationNumber], [SpeedLimitAltitude], [LongestRunway], [IfrCapability], [LongestRunwaySurfaceCode], [AirportReferencePointLatitude], [AirportReferencePointLongitude], [MagneticVariation], [AirportElevation], [SpeedLimit], [RecommendedNavaid], [IcaoCode1], [TransitionsAltitude], [TransitionLevel], [PublicMilitaryIndicator], [TimeZone], [DaylightIndicator], [MagneticTrueIndicator], [DatumCode], [AirportName], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'A', N'GOH', N'0', N'FL100', N'031', N'Y', N'H', N'N64112732', N'W051404103', N'W0250', N'00272', N'250', N'    ', N'  ', N'07000', N'     ', N'C', N'P00', N'Y', N' ', N'WGE', N'NUUK                          ', N'2211')
GO
INSERT [dbo].[RUNWAYV19] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportICAOIdentifier], [IcaoCode], [SubSectionCode], [RunwayIdentifier], [ContinuationNumber], [RunwayLength], [RunwayMagneticBearing], [RunwayLatitude], [RunwayLongitude], [RunwayGradient], [LtpEllipsoidHeight], [LandingThresholdElevation], [DisplacedThresholdDistance], [ThresholdCrossingHeight], [RunwayWidth], [TchValueIndicator], [Stopway], [RunwayDescription], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'G', N'RW04 ', N'0', N'03051', N'0427', N'N64105318', N'W051411044', N'+0900', N'      ', N'00245', N'0000', N'40', N'148', N'D', N'    ', N'                      ', N'0000')
GO
INSERT [dbo].[RUNWAYV19] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportICAOIdentifier], [IcaoCode], [SubSectionCode], [RunwayIdentifier], [ContinuationNumber], [RunwayLength], [RunwayMagneticBearing], [RunwayLatitude], [RunwayLongitude], [RunwayGradient], [LtpEllipsoidHeight], [LandingThresholdElevation], [DisplacedThresholdDistance], [ThresholdCrossingHeight], [RunwayWidth], [TchValueIndicator], [Stopway], [RunwayDescription], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'G', N'RW05 ', N'0', N'02930', N'0435', N'N64112199', N'W051404510', N'+0300', N'      ', N'00271', N'0000', N'50', N'098', N' ', N'    ', N'                      ', N'    ')
GO
INSERT [dbo].[RUNWAYV19] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportICAOIdentifier], [IcaoCode], [SubSectionCode], [RunwayIdentifier], [ContinuationNumber], [RunwayLength], [RunwayMagneticBearing], [RunwayLatitude], [RunwayLongitude], [RunwayGradient], [LtpEllipsoidHeight], [LandingThresholdElevation], [DisplacedThresholdDistance], [ThresholdCrossingHeight], [RunwayWidth], [TchValueIndicator], [Stopway], [RunwayDescription], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'G', N'RW22 ', N'0', N'03051', N'2230', N'N64112180', N'W051404952', N'-0900', N'      ', N'00271', N'0000', N'40', N'148', N'R', N'    ', N'                      ', N'    ')
GO
INSERT [dbo].[RUNWAYV19] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportICAOIdentifier], [IcaoCode], [SubSectionCode], [RunwayIdentifier], [ContinuationNumber], [RunwayLength], [RunwayMagneticBearing], [RunwayLatitude], [RunwayLongitude], [RunwayGradient], [LtpEllipsoidHeight], [LandingThresholdElevation], [DisplacedThresholdDistance], [ThresholdCrossingHeight], [RunwayWidth], [TchValueIndicator], [Stopway], [RunwayDescription], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'G', N'RW23 ', N'0', N'02930', N'2235', N'N64114944', N'W051402408', N'-0300', N'      ', N'00280', N'0000', N'50', N'098', N'R', N'    ', N'                      ', N'    ')
GO
INSERT [dbo].[RUNWAYV22] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportICAOIdentifier], [IcaoCode], [SubSectionCode], [RunwayIdentifier], [ContinuationNumber], [RunwayLength], [RunwayMagneticBearing], [RunwayLatitude], [RunwayLongitude], [RunwayGradient], [LtpEllipsoidHeight], [LandingThresholdElevation], [DisplacedThresholdDistance], [RunwayWidth], [TchValueIndicator], [Stopway], [ThresholdCrossingHeight], [RunwayAccuracyComplianceFlag], [LandingThresholdElevationAccuraryComplianceFlag], [RunwayDescription], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'G', N'RW04 ', N'0', N'03051', N'0427', N'N64105318', N'W051411044', N'+0900', N'      ', N'00245', N'0000', N'148', N'D', N'0000', N'040', N' ', N' ', N'                      ', N'2301')
GO
INSERT [dbo].[RUNWAYV22] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportICAOIdentifier], [IcaoCode], [SubSectionCode], [RunwayIdentifier], [ContinuationNumber], [RunwayLength], [RunwayMagneticBearing], [RunwayLatitude], [RunwayLongitude], [RunwayGradient], [LtpEllipsoidHeight], [LandingThresholdElevation], [DisplacedThresholdDistance], [RunwayWidth], [TchValueIndicator], [Stopway], [ThresholdCrossingHeight], [RunwayAccuracyComplianceFlag], [LandingThresholdElevationAccuraryComplianceFlag], [RunwayDescription], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'G', N'RW05 ', N'0', N'02930', N'0435', N'N64112199', N'W051404510', N'+0300', N'      ', N'00271', N'0000', N'098', N' ', N'    ', N'050', N' ', N' ', N'                      ', N'2211')
GO
INSERT [dbo].[RUNWAYV22] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportICAOIdentifier], [IcaoCode], [SubSectionCode], [RunwayIdentifier], [ContinuationNumber], [RunwayLength], [RunwayMagneticBearing], [RunwayLatitude], [RunwayLongitude], [RunwayGradient], [LtpEllipsoidHeight], [LandingThresholdElevation], [DisplacedThresholdDistance], [RunwayWidth], [TchValueIndicator], [Stopway], [ThresholdCrossingHeight], [RunwayAccuracyComplianceFlag], [LandingThresholdElevationAccuraryComplianceFlag], [RunwayDescription], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'G', N'RW22 ', N'0', N'03051', N'2230', N'N64112180', N'W051404952', N'-0900', N'      ', N'00271', N'0000', N'148', N'R', N'    ', N'040', N' ', N' ', N'                      ', N'2211')
GO
INSERT [dbo].[RUNWAYV22] ([RecordType], [CustomerAreaCode], [SectionCode], [AirportICAOIdentifier], [IcaoCode], [SubSectionCode], [RunwayIdentifier], [ContinuationNumber], [RunwayLength], [RunwayMagneticBearing], [RunwayLatitude], [RunwayLongitude], [RunwayGradient], [LtpEllipsoidHeight], [LandingThresholdElevation], [DisplacedThresholdDistance], [RunwayWidth], [TchValueIndicator], [Stopway], [ThresholdCrossingHeight], [RunwayAccuracyComplianceFlag], [LandingThresholdElevationAccuraryComplianceFlag], [RunwayDescription], [Cycle]) VALUES (N'S', N'EUR', N'P', N'BGGH', N'BG', N'G', N'RW23 ', N'0', N'02930', N'2235', N'N64114944', N'W051402408', N'-0300', N'      ', N'00280', N'0000', N'098', N'R', N'    ', N'050', N' ', N' ', N'                      ', N'2211')
GO
ALTER TABLE [dbo].[RUNWAYV19]  WITH CHECK ADD  CONSTRAINT [FK_RUNWAYV19_AIRPORT] FOREIGN KEY([AirportICAOIdentifier])
REFERENCES [dbo].[AIRPORT] ([AirportIcaoIdentifier])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RUNWAYV19] CHECK CONSTRAINT [FK_RUNWAYV19_AIRPORT]
GO
ALTER TABLE [dbo].[RUNWAYV22]  WITH CHECK ADD  CONSTRAINT [FK_RUNWAYV22_AIRPORT] FOREIGN KEY([AirportICAOIdentifier])
REFERENCES [dbo].[AIRPORT] ([AirportIcaoIdentifier])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RUNWAYV22] CHECK CONSTRAINT [FK_RUNWAYV22_AIRPORT]
GO
