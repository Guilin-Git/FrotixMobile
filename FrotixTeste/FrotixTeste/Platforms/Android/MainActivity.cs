using Android.Webkit;
using Android.App;
using Android.Content.PM;
using Android.OS;
using System.Diagnostics;

namespace FrotixTeste
{
    [Activity(Label = "FrotixTeste", Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
    public class MainActivity : MauiAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Habilita a depuração do WebView
            try
            {
                Android.Webkit.WebView.SetWebContentsDebuggingEnabled(true);
                System.Diagnostics.Debug.Write("✅ WebView Debugging habilitado!");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"❌ Erro ao habilitar WebView Debugging: {ex.Message}");
            }
        }
    }
}
