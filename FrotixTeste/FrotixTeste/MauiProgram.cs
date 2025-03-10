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
            // Habilitar os serviços do Syncfusion
            builder.Services.AddSyncfusionBlazor();

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
    		builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
