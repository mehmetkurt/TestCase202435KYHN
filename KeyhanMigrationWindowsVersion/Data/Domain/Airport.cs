namespace KeyhanMigrationWindowsVersion.Data.Data.Domain;

public partial class Airport
{
    public string RecordType { get; set; } = null!;

    public string CustomerAreaCode { get; set; } = null!;

    public string SectionCode { get; set; } = null!;

    public string AirportIcaoIdentifier { get; set; } = null!;

    public string IcaoCode { get; set; } = null!;

    public string SubSectionCode { get; set; } = null!;

    public string AtaIataDesignator { get; set; } = null!;

    public string ContinuationNumber { get; set; } = null!;

    public string SpeedLimitAltitude { get; set; } = null!;

    public string LongestRunway { get; set; } = null!;

    public string IfrCapability { get; set; } = null!;

    public string LongestRunwaySurfaceCode { get; set; } = null!;

    public string AirportReferencePointLatitude { get; set; } = null!;

    public string AirportReferencePointLongitude { get; set; } = null!;

    public string MagneticVariation { get; set; } = null!;

    public string AirportElevation { get; set; } = null!;

    public string SpeedLimit { get; set; } = null!;

    public string RecommendedNavaid { get; set; } = null!;

    public string IcaoCode1 { get; set; } = null!;

    public string TransitionsAltitude { get; set; } = null!;

    public string TransitionLevel { get; set; } = null!;

    public string PublicMilitaryIndicator { get; set; } = null!;

    public string TimeZone { get; set; } = null!;

    public string DaylightIndicator { get; set; } = null!;

    public string MagneticTrueIndicator { get; set; } = null!;

    public string DatumCode { get; set; } = null!;

    public string AirportName { get; set; } = null!;

    public string Cycle { get; set; } = null!;

    public virtual ICollection<Runwayv19> Runwayv19 { get; set; } = new List<Runwayv19>();

    public virtual ICollection<Runwayv22> Runwayv22 { get; set; } = new List<Runwayv22>();
}