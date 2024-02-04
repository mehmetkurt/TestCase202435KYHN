using AutoMapper;
using KeyhanMigrationWindowsVersion.Data.Data;
using KeyhanMigrationWindowsVersion.Data.Data.Domain;
using Microsoft.EntityFrameworkCore;

namespace KeyhanMigrationWindowsVersion.Services;

public class MigrationService(IMapper mapper, DataDbContext dataDbContext) : IMigrationService
{
    private readonly IMapper _mapper = mapper;
    private readonly DataDbContext _dataDbContext = dataDbContext;

    public async Task StartAsync()
    {
        var fromDataCount = await _dataDbContext.Runwayv22.CountAsync();
        for (int i = 0; i < fromDataCount; i++)
        {
            var fromData = await _dataDbContext.Runwayv22.Take(i + 1).Skip(i).FirstAsync();
            var toData = await _dataDbContext.Runwayv19.FindAsync(fromData.AirportIcaoidentifier, fromData.RunwayIdentifier);
            if (toData != null)
            {
                var thresholdCrossingHeight = fromData.ThresholdCrossingHeight.Remove(0, 1);
                toData = _mapper.Map<Runwayv22, Runwayv19>(fromData, toData);
                toData.ThresholdCrossingHeight = thresholdCrossingHeight;
            }
        }

        var result = await _dataDbContext.SaveChangesAsync();
    }

    public async Task<List<Runwayv19>> GetRunwayv19Async()
    {
        var data = await _dataDbContext.Runwayv19.ToListAsync();
        return data;
    }

    public async Task<List<Runwayv22>> GetRunwayv22Async()
    {
        var data = await _dataDbContext.Runwayv22.ToListAsync();
        return data;
    }
}
