using KeyhanMigrationWindowsVersion.Data.Data.Domain;

namespace KeyhanMigrationWindowsVersion.Services;

public interface IMigrationService
{
    Task StartAsync();
    Task<List<Runwayv19>> GetRunwayv19Async();
    Task<List<Runwayv22>> GetRunwayv22Async();
}
