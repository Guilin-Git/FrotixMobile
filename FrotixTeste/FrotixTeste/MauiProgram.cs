using FrotixTeste.Services;
using Microsoft.Extensions.Logging;
using Syncfusion.Blazor;
using Syncfusion.Licensing;
using Microsoft.Extensions.DependencyInjection;


namespace FrotixTeste
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            // ✅ Registro de licença do Syncfusion
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

            // ✅ Registrar o HttpClient já com BaseAddress para a API
            builder.Services.AddHttpClient<VistoriaService>(client =>
            {
                client.BaseAddress = new Uri("http://172.20.10.5:5050/vistorias");
            });

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
