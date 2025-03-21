using FrotixTeste.Data;
using FrotixTeste.Services;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Syncfusion.Blazor;
using Syncfusion.Licensing;

namespace FrotixTeste
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            SyncfusionLicenseProvider.RegisterLicense("Mzc1MjE2NEAzMjM4MmUzMDJlMzBXTURCckpEa0UvMU9zQ1RCTzhLbTFITzVIVU5QUGl5cHVSdXpGSE9wTThZPQ==");

            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();
            builder.Services.AddSyncfusionBlazor();

            // 🔹 Carregar `appsettings.json` corretamente dentro do `builder.Configuration`
            builder.Configuration.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);

            // 🔹 Obter a ConnectionString do arquivo de configuração
            string connectionString = builder.Configuration.GetConnectionString("DefaultConnection");

            // 🔹 Registrar o `DbContext` usando a ConnectionString carregada
            builder.Services.AddDbContext<FrotixDbContext>(options =>
                options.UseSqlServer(connectionString));

            // 🔹 Registrar o `VistoriaService`
            builder.Services.AddScoped<VistoriaService>();
            builder.Services.AddMauiBlazorWebView();
            builder.Services.AddSyncfusionBlazor();
           

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
