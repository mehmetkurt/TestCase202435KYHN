namespace KeyhanMigrationWindowsVersion.Data.Data.Domain;

public partial class Runwayv19
{
    public string RecordType { get; set; } = null!;

    public string CustomerAreaCode { get; set; } = null!;

    public string SectionCode { get; set; } = null!;

    public string AirportIcaoidentifier { get; set; } = null!;

    public string IcaoCode { get; set; } = null!;

    public string SubSectionCode { get; set; } = null!;

    public string RunwayIdentifier { get; set; } = null!;

    public string ContinuationNumber { get; set; } = null!;

    public string RunwayLength { get; set; } = null!;

    public string RunwayMagneticBearing { get; set; } = null!;

    public string RunwayLatitude { get; set; } = null!;

    public string RunwayLongitude { get; set; } = null!;

    public string RunwayGradient { get; set; } = null!;

    public string LtpEllipsoidHeight { get; set; } = null!;

    public string LandingThresholdElevation { get; set; } = null!;

    public string DisplacedThresholdDistance { get; set; } = null!;

    public string ThresholdCrossingHeight { get; set; } = null!;

    public string RunwayWidth { get; set; } = null!;

    public string TchValueIndicator { get; set; } = null!;

    public string Stopway { get; set; } = null!;

    public string RunwayDescription { get; set; } = null!;

    public string Cycle { get; set; } = null!;

    public virtual Airport AirportIcaoidentifierNavigation { get; set; } = null!;
}