using AutoMapper;
using KeyhanMigrationWindowsVersion.Data.Data.Domain;

namespace KeyhanMigrationWindowsVersion.Mapper;
public class AutoMapperConfiguration : Profile
{
    public AutoMapperConfiguration()
    {
        CreateMap<Runwayv19, Runwayv22>()
            .ReverseMap();
   }
}
