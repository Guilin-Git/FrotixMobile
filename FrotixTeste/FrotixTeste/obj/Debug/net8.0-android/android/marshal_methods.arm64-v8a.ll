; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [373 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [746 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 270
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 208
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 167
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 222
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 56
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 257
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 147
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 298
	i64 240879242545323235, ; 8: FrotixTeste => 0x357c66515addce3 => 0
	i64 295915112840604065, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 301
	i64 316157742385208084, ; 10: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 264
	i64 350667413455104241, ; 11: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 130
	i64 354178770117062970, ; 12: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0x4ea4bb703cff13a => 207
	i64 422779754995088667, ; 13: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 54
	i64 435118502366263740, ; 14: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 300
	i64 545109961164950392, ; 15: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 345
	i64 560278790331054453, ; 16: System.Reflection.Primitives => 0x7c6829760de3975 => 93
	i64 634308326490598313, ; 17: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 283
	i64 648449422406355874, ; 18: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 191
	i64 649145001856603771, ; 19: System.Security.SecureString => 0x90239f09b62167b => 127
	i64 668723562677762733, ; 20: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 190
	i64 670564002081277297, ; 21: Microsoft.Identity.Client.dll => 0x94e526837380571 => 209
	i64 683390398661839228, ; 22: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 199
	i64 750875890346172408, ; 23: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 141
	i64 769231974326215379, ; 24: ja/Microsoft.Data.SqlClient.resources.dll => 0xaacdc67b39622d3 => 330
	i64 798450721097591769, ; 25: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 258
	i64 799765834175365804, ; 26: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 27: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 348
	i64 872800313462103108, ; 28: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 269
	i64 895210737996778430, ; 29: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 284
	i64 937459790420187032, ; 30: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 224
	i64 940822596282819491, ; 31: System.Transactions => 0xd0e792aa81923a3 => 146
	i64 960778385402502048, ; 32: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 102
	i64 1010599046655515943, ; 33: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 93
	i64 1060858978308751610, ; 34: Azure.Core.dll => 0xeb8ed9ebee080fa => 169
	i64 1120440138749646132, ; 35: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 313
	i64 1121665720830085036, ; 36: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 356
	i64 1150430735170971895, ; 37: ru\Microsoft.Data.SqlClient.resources => 0xff726a88c8ea8f7 => 334
	i64 1268860745194512059, ; 38: System.Drawing.dll => 0x119be62002c19ebb => 35
	i64 1278906455852160409, ; 39: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 185
	i64 1301626418029409250, ; 40: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 27
	i64 1315114680217950157, ; 41: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 253
	i64 1369545283391376210, ; 42: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 291
	i64 1404195534211153682, ; 43: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 48
	i64 1425944114962822056, ; 44: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 113
	i64 1476839205573959279, ; 45: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 68
	i64 1486715745332614827, ; 46: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 219
	i64 1492954217099365037, ; 47: System.Net.HttpListener => 0x14b809f350210aad => 63
	i64 1513467482682125403, ; 48: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 166
	i64 1537168428375924959, ; 49: System.Threading.Thread.dll => 0x15551e8a954ae0df => 141
	i64 1556147632182429976, ; 50: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 354
	i64 1576750169145655260, ; 51: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 312
	i64 1624659445732251991, ; 52: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 252
	i64 1628611045998245443, ; 53: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 287
	i64 1636321030536304333, ; 54: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 277
	i64 1651782184287836205, ; 55: System.Globalization.Calendars => 0x16ec4f2524cb982d => 38
	i64 1659332977923810219, ; 56: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 87
	i64 1682513316613008342, ; 57: System.Net.dll => 0x17597cf276952bd6 => 79
	i64 1731380447121279447, ; 58: Newtonsoft.Json => 0x18071957e9b889d7 => 225
	i64 1735388228521408345, ; 59: System.Net.Mail.dll => 0x181556663c69b759 => 64
	i64 1743969030606105336, ; 60: System.Memory.dll => 0x1833d297e88f2af8 => 60
	i64 1767386781656293639, ; 61: System.Private.Uri.dll => 0x188704e9f5582107 => 84
	i64 1776954265264967804, ; 62: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 217
	i64 1795316252682057001, ; 63: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 251
	i64 1825687700144851180, ; 64: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 104
	i64 1835311033149317475, ; 65: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 344
	i64 1836611346387731153, ; 66: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 298
	i64 1854145951182283680, ; 67: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 100
	i64 1865037103900624886, ; 68: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 179
	i64 1875417405349196092, ; 69: System.Drawing.Primitives => 0x1a06d2319b6c713c => 34
	i64 1875917498431009007, ; 70: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 248
	i64 1881198190668717030, ; 71: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 366
	i64 1897575647115118287, ; 72: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 300
	i64 1920760634179481754, ; 73: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 220
	i64 1959996714666907089, ; 74: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 366
	i64 1972385128188460614, ; 75: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 117
	i64 1981742497975770890, ; 76: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 285
	i64 1983698669889758782, ; 77: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 340
	i64 2019660174692588140, ; 78: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 358
	i64 2040001226662520565, ; 79: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 138
	i64 2062890601515140263, ; 80: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 137
	i64 2064708342624596306, ; 81: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 321
	i64 2080945842184875448, ; 82: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 51
	i64 2102659300918482391, ; 83: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 34
	i64 2106033277907880740, ; 84: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 137
	i64 2133195048986300728, ; 85: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 225
	i64 2165310824878145998, ; 86: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 245
	i64 2165725771938924357, ; 87: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 255
	i64 2192948757939169934, ; 88: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 183
	i64 2200176636225660136, ; 89: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 205
	i64 2262844636196693701, ; 90: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 269
	i64 2287834202362508563, ; 91: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 92: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 93: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 177
	i64 2302323944321350744, ; 94: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 362
	i64 2304837677853103545, ; 95: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 297
	i64 2315304989185124968, ; 96: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 49
	i64 2316229908869312383, ; 97: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 215
	i64 2329709569556905518, ; 98: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 280
	i64 2335503487726329082, ; 99: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 240
	i64 2337758774805907496, ; 100: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 99
	i64 2470498323731680442, ; 101: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 262
	i64 2479423007379663237, ; 102: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 307
	i64 2497223385847772520, ; 103: System.Runtime => 0x22a7eb7046413568 => 114
	i64 2547086958574651984, ; 104: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 246
	i64 2587490916221621126, ; 105: Syncfusion.Blazor.dll => 0x23e89d4778f09386 => 226
	i64 2592350477072141967, ; 106: System.Xml.dll => 0x23f9e10627330e8f => 159
	i64 2602673633151553063, ; 107: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 365
	i64 2612152650457191105, ; 108: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 216
	i64 2624866290265602282, ; 109: mscorlib.dll => 0x246d65fbde2db8ea => 162
	i64 2632269733008246987, ; 110: System.Net.NameResolution => 0x2487b36034f808cb => 65
	i64 2632383359798256946, ; 111: tr\Microsoft.Data.SqlClient.resources => 0x24881ab8016ca532 => 335
	i64 2656907746661064104, ; 112: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 193
	i64 2662981627730767622, ; 113: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 340
	i64 2706075432581334785, ; 114: System.Net.WebSockets => 0x258de944be6c0701 => 78
	i64 2781169761569919449, ; 115: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 217
	i64 2783046991838674048, ; 116: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 99
	i64 2787234703088983483, ; 117: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 302
	i64 2789714023057451704, ; 118: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 212
	i64 2815524396660695947, ; 119: System.Security.AccessControl => 0x2712c0857f68238b => 115
	i64 2851879596360956261, ; 120: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 231
	i64 2895129759130297543, ; 121: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 345
	i64 2923871038697555247, ; 122: Jsr305Binding => 0x2893ad37e69ec52f => 314
	i64 3004558106879253741, ; 123: ja\Microsoft.Data.SqlClient.resources => 0x29b255adeb8edced => 330
	i64 3017136373564924869, ; 124: System.Net.WebProxy => 0x29df058bd93f63c5 => 76
	i64 3017704767998173186, ; 125: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 313
	i64 3063847325783385934, ; 126: System.ClientModel.dll => 0x2a84f8e8eb59674e => 230
	i64 3106852385031680087, ; 127: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 112
	i64 3110390492489056344, ; 128: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 119
	i64 3135773902340015556, ; 129: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 46
	i64 3266690593535380875, ; 130: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 172
	i64 3281594302220646930, ; 131: System.Security.Principal => 0x2d8a90a198ceba12 => 126
	i64 3289520064315143713, ; 132: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 278
	i64 3303437397778967116, ; 133: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 249
	i64 3311221304742556517, ; 134: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 80
	i64 3325875462027654285, ; 135: System.Runtime.Numerics => 0x2e27e21c8958b48d => 108
	i64 3328853167529574890, ; 136: System.Net.Sockets.dll => 0x2e327651a008c1ea => 73
	i64 3344514922410554693, ; 137: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 324
	i64 3396143930648122816, ; 138: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 197
	i64 3402534845034375023, ; 139: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 235
	i64 3429672777697402584, ; 140: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 222
	i64 3437845325506641314, ; 141: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 51
	i64 3493805808809882663, ; 142: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 304
	i64 3494946837667399002, ; 143: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 188
	i64 3508450208084372758, ; 144: System.Net.Ping => 0x30b084e02d03ad16 => 67
	i64 3522470458906976663, ; 145: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 303
	i64 3523004241079211829, ; 146: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 187
	i64 3531994851595924923, ; 147: System.Numerics => 0x31042a9aade235bb => 81
	i64 3551103847008531295, ; 148: System.Private.CoreLib.dll => 0x31480e226177735f => 168
	i64 3567343442040498961, ; 149: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 360
	i64 3571415421602489686, ; 150: System.Runtime.dll => 0x319037675df7e556 => 114
	i64 3638003163729360188, ; 151: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 189
	i64 3647754201059316852, ; 152: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 152
	i64 3655542548057982301, ; 153: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 188
	i64 3659371656528649588, ; 154: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 243
	i64 3716579019761409177, ; 155: netstandard.dll => 0x3393f0ed5c8c5c99 => 163
	i64 3727469159507183293, ; 156: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 296
	i64 3753897248517198740, ; 157: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 176
	i64 3772598417116884899, ; 158: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 270
	i64 3794322307918838949, ; 159: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 178
	i64 3869221888984012293, ; 160: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 203
	i64 3869649043256705283, ; 161: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 31
	i64 3889433610606858880, ; 162: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 200
	i64 3890352374528606784, ; 163: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 220
	i64 3919223565570527920, ; 164: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 120
	i64 3933965368022646939, ; 165: System.Net.Requests => 0x369840a8bfadc09b => 70
	i64 3956626214857587819, ; 166: Syncfusion.ExcelExport.Net => 0x36e8c2944d95bc6b => 227
	i64 3966267475168208030, ; 167: System.Memory => 0x370b03412596249e => 60
	i64 4006972109285359177, ; 168: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 157
	i64 4009997192427317104, ; 169: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 111
	i64 4073500526318903918, ; 170: System.Private.Xml.dll => 0x3887fb25779ae26e => 86
	i64 4073631083018132676, ; 171: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 218
	i64 4090066110372993390, ; 172: fr/Microsoft.Data.SqlClient.resources.dll => 0x38c2d57510a5596e => 328
	i64 4120493066591692148, ; 173: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 371
	i64 4148881117810174540, ; 174: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 103
	i64 4154383907710350974, ; 175: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4158455390207940886, ; 176: FrotixTeste.dll => 0x39b5cd251ba71916 => 0
	i64 4167269041631776580, ; 177: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 142
	i64 4168469861834746866, ; 178: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 116
	i64 4187479170553454871, ; 179: System.Linq.Expressions => 0x3a1cea1e912fa117 => 56
	i64 4201423742386704971, ; 180: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 264
	i64 4205801962323029395, ; 181: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 182: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 50
	i64 4282138915307457788, ; 183: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 90
	i64 4321865999928413850, ; 184: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 233
	i64 4343083164021660430, ; 185: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0x3c45bb20857d9b0e => 336
	i64 4356591372459378815, ; 186: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 368
	i64 4373617458794931033, ; 187: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 53
	i64 4384840217421645357, ; 188: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 174
	i64 4397634830160618470, ; 189: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 127
	i64 4477672992252076438, ; 190: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 148
	i64 4484706122338676047, ; 191: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 39
	i64 4513320955448359355, ; 192: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 184
	i64 4533124835995628778, ; 193: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 90
	i64 4612482779465751747, ; 194: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 183
	i64 4636684751163556186, ; 195: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 308
	i64 4657212095206026001, ; 196: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 202
	i64 4672453897036726049, ; 197: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 48
	i64 4679594760078841447, ; 198: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 338
	i64 4716677666592453464, ; 199: System.Xml.XmlSerializer => 0x417501590542f358 => 158
	i64 4743821336939966868, ; 200: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 201: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 282
	i64 4794310189461587505, ; 202: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 246
	i64 4795410492532947900, ; 203: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 303
	i64 4809057822547766521, ; 204: System.Drawing => 0x42bd349c3145ecf9 => 35
	i64 4814660307502931973, ; 205: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 65
	i64 4853321196694829351, ; 206: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 107
	i64 5055365687667823624, ; 207: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 247
	i64 5077203502941069614, ; 208: Microsoft.Bcl.Cryptography.dll => 0x4675d9af8d2be12e => 180
	i64 5081566143765835342, ; 209: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 97
	i64 5099468265966638712, ; 210: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 97
	i64 5103417709280584325, ; 211: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 212: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 213: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 175
	i64 5205316157927637098, ; 214: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 289
	i64 5244375036463807528, ; 215: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 216: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 126
	i64 5278787618751394462, ; 217: System.Net.WebClient.dll => 0x4942055efc68329e => 74
	i64 5280980186044710147, ; 218: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 281
	i64 5290786973231294105, ; 219: System.Runtime.Loader => 0x496ca6b869b72699 => 107
	i64 5376510917114486089, ; 220: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 307
	i64 5408338804355907810, ; 221: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 305
	i64 5423376490970181369, ; 222: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 104
	i64 5440320908473006344, ; 223: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 224: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 225: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 260
	i64 5457765010617926378, ; 226: System.Xml.Serialization => 0x4bbde05c557002ea => 153
	i64 5471532531798518949, ; 227: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 364
	i64 5507995362134886206, ; 228: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 229: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 367
	i64 5527431512186326818, ; 230: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 47
	i64 5570799893513421663, ; 231: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 41
	i64 5573260873512690141, ; 232: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 124
	i64 5574231584441077149, ; 233: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 250
	i64 5591791169662171124, ; 234: System.Linq.Parallel => 0x4d9a087135e137f4 => 57
	i64 5650097808083101034, ; 235: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 117
	i64 5692067934154308417, ; 236: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 310
	i64 5724799082821825042, ; 237: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 273
	i64 5757522595884336624, ; 238: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 259
	i64 5783556987928984683, ; 239: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 240: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 279
	i64 5959344983920014087, ; 241: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 299
	i64 5979151488806146654, ; 242: System.Formats.Asn1 => 0x52fa3699a489d25e => 234
	i64 5984759512290286505, ; 243: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 122
	i64 6010974535988770325, ; 244: Microsoft.Extensions.Diagnostics.dll => 0x536b457e33877615 => 195
	i64 6068057819846744445, ; 245: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 361
	i64 6102788177522843259, ; 246: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 299
	i64 6200764641006662125, ; 247: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 361
	i64 6222399776351216807, ; 248: System.Text.Json.dll => 0x565a67a0ffe264a7 => 241
	i64 6251069312384999852, ; 249: System.Transactions.Local => 0x56c0426b870da1ac => 145
	i64 6278736998281604212, ; 250: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 83
	i64 6284145129771520194, ; 251: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 88
	i64 6319713645133255417, ; 252: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 283
	i64 6357457916754632952, ; 253: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 372
	i64 6401687960814735282, ; 254: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 280
	i64 6478287442656530074, ; 255: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 349
	i64 6504860066809920875, ; 256: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 255
	i64 6548213210057960872, ; 257: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 266
	i64 6557084851308642443, ; 258: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 311
	i64 6560151584539558821, ; 259: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 206
	i64 6589202984700901502, ; 260: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 316
	i64 6591971792923354531, ; 261: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 281
	i64 6617685658146568858, ; 262: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 131
	i64 6667137106064718713, ; 263: ru/Microsoft.Data.SqlClient.resources.dll => 0x5c866ddfbbd03b79 => 334
	i64 6713440830605852118, ; 264: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 94
	i64 6739853162153639747, ; 265: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 266: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 357
	i64 6772837112740759457, ; 267: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 103
	i64 6777482997383978746, ; 268: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 360
	i64 6786606130239981554, ; 269: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 32
	i64 6798329586179154312, ; 270: System.Windows => 0x5e5884bd523ca188 => 150
	i64 6814185388980153342, ; 271: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 154
	i64 6876862101832370452, ; 272: System.Xml.Linq => 0x5f6f85a57d108914 => 151
	i64 6894844156784520562, ; 273: System.Numerics.Vectors => 0x5faf683aead1ad72 => 80
	i64 6920570528939222495, ; 274: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 176
	i64 7011053663211085209, ; 275: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 275
	i64 7055072420069764613, ; 276: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0x61e8a6fc96e9ee05 => 333
	i64 7060896174307865760, ; 277: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 139
	i64 7083547580668757502, ; 278: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 85
	i64 7101497697220435230, ; 279: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 280: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 276
	i64 7105430439328552570, ; 281: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 238
	i64 7112547816752919026, ; 282: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 49
	i64 7192745174564810625, ; 283: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 245
	i64 7220009545223068405, ; 284: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 364
	i64 7270811800166795866, ; 285: System.Linq => 0x64e71ccf51a90a5a => 59
	i64 7299370801165188114, ; 286: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 52
	i64 7316205155833392065, ; 287: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 288: System.Reflection => 0x65d67f295d0740ad => 95
	i64 7348123982286201829, ; 289: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 237
	i64 7349431895026339542, ; 290: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 244
	i64 7377312882064240630, ; 291: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 292: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 151
	i64 7489048572193775167, ; 293: System.ObjectModel => 0x67ee71ff6b419e3f => 82
	i64 7496222613193209122, ; 294: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 235
	i64 7592577537120840276, ; 295: System.Diagnostics.Process => 0x695e410af5b2aa54 => 28
	i64 7637303409920963731, ; 296: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 43
	i64 7654504624184590948, ; 297: System.Net.Http => 0x6a3a4366801b8264 => 62
	i64 7694700312542370399, ; 298: System.Net.Mail => 0x6ac9112a7e2cda5f => 64
	i64 7708790323521193081, ; 299: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 355
	i64 7714652370974252055, ; 300: System.Private.CoreLib => 0x6b0ff375198b9c17 => 168
	i64 7725404731275645577, ; 301: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 284
	i64 7735176074855944702, ; 302: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 303: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 319
	i64 7791074099216502080, ; 304: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 45
	i64 7820441508502274321, ; 305: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 306: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 252
	i64 7919757340696389605, ; 307: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 196
	i64 7972383140441761405, ; 308: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 186
	i64 8014722069583580780, ; 309: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 174
	i64 8025517457475554965, ; 310: WindowsBase => 0x6f605d9b4786ce95 => 161
	i64 8031450141206250471, ; 311: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 106
	i64 8064050204834738623, ; 312: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 313: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 278
	i64 8085230611270010360, ; 314: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 61
	i64 8087206902342787202, ; 315: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 232
	i64 8103644804370223335, ; 316: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 317: System.Reflection.Extensions => 0x70995ab73cf916ec => 91
	i64 8167236081217502503, ; 318: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 164
	i64 8185542183669246576, ; 319: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 320: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 323
	i64 8234598844743906698, ; 321: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 210
	i64 8246048515196606205, ; 322: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 223
	i64 8264926008854159966, ; 323: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 28
	i64 8290740647658429042, ; 324: System.Runtime.Extensions => 0x730ea0b15c929a72 => 101
	i64 8318905602908530212, ; 325: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 326: System.Security.Cryptography => 0x7423997c6fd56140 => 124
	i64 8398329775253868912, ; 327: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 261
	i64 8400357532724379117, ; 328: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 293
	i64 8410671156615598628, ; 329: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 89
	i64 8426919725312979251, ; 330: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 282
	i64 8513291706828295435, ; 331: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 224
	i64 8518412311883997971, ; 332: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 333: System.Private.Uri => 0x76d841191140ca5b => 84
	i64 8598790081731763592, ; 334: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 272
	i64 8601935802264776013, ; 335: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 305
	i64 8614108721271900878, ; 336: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 359
	i64 8623059219396073920, ; 337: System.Net.Quic.dll => 0x77ab42ac514299c0 => 69
	i64 8626175481042262068, ; 338: Java.Interop => 0x77b654e585b55834 => 164
	i64 8638972117149407195, ; 339: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 340: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 292
	i64 8648495978913578441, ; 341: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 342: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 359
	i64 8684531736582871431, ; 343: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 42
	i64 8725526185868997716, ; 344: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 232
	i64 8816904670177563593, ; 345: Microsoft.Extensions.Diagnostics => 0x7a5bf015646a93c9 => 195
	i64 8853378295825400934, ; 346: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 320
	i64 8882398187484578781, ; 347: de/Microsoft.Data.SqlClient.resources.dll => 0x7b449e172e9783dd => 326
	i64 8941376889969657626, ; 348: System.Xml.XDocument => 0x7c1626e87187471a => 154
	i64 8951477988056063522, ; 349: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 295
	i64 8954753533646919997, ; 350: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 110
	i64 8955323522379913726, ; 351: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 209
	i64 9045785047181495996, ; 352: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 369
	i64 9052662452269567435, ; 353: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 214
	i64 9111603110219107042, ; 354: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 187
	i64 9138683372487561558, ; 355: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 119
	i64 9250544137016314866, ; 356: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 182
	i64 9312692141327339315, ; 357: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 310
	i64 9324707631942237306, ; 358: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 251
	i64 9389258210823261255, ; 359: it/Microsoft.Data.SqlClient.resources.dll => 0x824d5898a88a4c47 => 329
	i64 9427266486299436557, ; 360: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 213
	i64 9468215723722196442, ; 361: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 155
	i64 9500688326720985260, ; 362: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 185
	i64 9513793942805897923, ; 363: zh-Hans\Microsoft.Data.SqlClient.resources => 0x8407c92f4b3562c3 => 336
	i64 9554839972845591462, ; 364: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 129
	i64 9575902398040817096, ; 365: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 315
	i64 9584643793929893533, ; 366: System.IO.dll => 0x85037ebfbbd7f69d => 55
	i64 9650158550865574924, ; 367: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 192
	i64 9659729154652888475, ; 368: System.Text.RegularExpressions => 0x860e407c9991dd9b => 134
	i64 9662334977499516867, ; 369: System.Numerics.dll => 0x8617827802b0cfc3 => 81
	i64 9667360217193089419, ; 370: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 29
	i64 9678050649315576968, ; 371: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 262
	i64 9702891218465930390, ; 372: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 373: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 312
	i64 9808709177481450983, ; 374: Mono.Android.dll => 0x881f890734e555e7 => 167
	i64 9819168441846169364, ; 375: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 214
	i64 9825649861376906464, ; 376: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 259
	i64 9834056768316610435, ; 377: System.Transactions.dll => 0x8879968718899783 => 146
	i64 9836529246295212050, ; 378: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 92
	i64 9907349773706910547, ; 379: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 272
	i64 9933555792566666578, ; 380: System.Linq.Queryable.dll => 0x89db145cf475c552 => 58
	i64 9956195530459977388, ; 381: Microsoft.Maui => 0x8a2b8315b36616ac => 221
	i64 9974604633896246661, ; 382: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 153
	i64 9991543690424095600, ; 383: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 344
	i64 10017511394021241210, ; 384: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 205
	i64 10038780035334861115, ; 385: System.Net.Http.dll => 0x8b50e941206af13b => 62
	i64 10051358222726253779, ; 386: System.Private.Xml => 0x8b7d990c97ccccd3 => 86
	i64 10078727084704864206, ; 387: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 77
	i64 10089571585547156312, ; 388: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 45
	i64 10092835686693276772, ; 389: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 219
	i64 10105485790837105934, ; 390: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 139
	i64 10143853363526200146, ; 391: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 341
	i64 10205853378024263619, ; 392: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 190
	i64 10219718175678860705, ; 393: Syncfusion.PdfExport.Net.dll => 0x8dd3bb88cdf10da1 => 229
	i64 10226222362177979215, ; 394: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 321
	i64 10229024438826829339, ; 395: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 266
	i64 10236703004850800690, ; 396: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 72
	i64 10245369515835430794, ; 397: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 89
	i64 10321854143672141184, ; 398: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 318
	i64 10360651442923773544, ; 399: System.Text.Encoding => 0x8fc86d98211c1e68 => 133
	i64 10364469296367737616, ; 400: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 88
	i64 10376576884623852283, ; 401: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 304
	i64 10406448008575299332, ; 402: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 324
	i64 10430153318873392755, ; 403: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 263
	i64 10447083246144586668, ; 404: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 179
	i64 10506226065143327199, ; 405: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 339
	i64 10515187668141221425, ; 406: Microsoft.Bcl.Cryptography => 0x91ed7378ea202631 => 180
	i64 10546663366131771576, ; 407: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 110
	i64 10566960649245365243, ; 408: System.Globalization.dll => 0x92a562b96dcd13fb => 40
	i64 10595762989148858956, ; 409: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 155
	i64 10670374202010151210, ; 410: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10708624144129299143, ; 411: Syncfusion.ExcelExport.Net.dll => 0x949cacec1fff92c7 => 227
	i64 10714184849103829812, ; 412: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 101
	i64 10734191584620811116, ; 413: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 199
	i64 10785150219063592792, ; 414: System.Net.Primitives => 0x95ac8cfb68830758 => 68
	i64 10809043855025277762, ; 415: Microsoft.Extensions.Options.ConfigurationExtensions => 0x9601701e0c668b42 => 207
	i64 10811915265162633087, ; 416: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 184
	i64 10822644899632537592, ; 417: System.Linq.Queryable => 0x9631c23204ca5ff8 => 58
	i64 10830817578243619689, ; 418: System.Formats.Tar => 0x964ecb340a447b69 => 37
	i64 10847732767863316357, ; 419: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 253
	i64 10889380495983713167, ; 420: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 181
	i64 10899834349646441345, ; 421: System.Web => 0x9743fd975946eb81 => 149
	i64 10943875058216066601, ; 422: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 54
	i64 10964653383833615866, ; 423: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 33
	i64 11002576679268595294, ; 424: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 204
	i64 11009005086950030778, ; 425: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 221
	i64 11019817191295005410, ; 426: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 250
	i64 11023048688141570732, ; 427: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 428: System.Xml => 0x992e31d0412bf7fc => 159
	i64 11038974641380222378, ; 429: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0x993250f3080365aa => 337
	i64 11051904132540108364, ; 430: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 198
	i64 11071824625609515081, ; 431: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 316
	i64 11103970607964515343, ; 432: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 350
	i64 11136029745144976707, ; 433: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 314
	i64 11162124722117608902, ; 434: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 309
	i64 11183417087873056340, ; 435: ko\Microsoft.Data.SqlClient.resources => 0x9b337a96d1b4fe54 => 331
	i64 11188319605227840848, ; 436: System.Threading.Overlapped => 0x9b44e5671724e550 => 136
	i64 11218356222449480316, ; 437: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 173
	i64 11220793807500858938, ; 438: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 353
	i64 11226290749488709958, ; 439: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 206
	i64 11235648312900863002, ; 440: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 87
	i64 11329751333533450475, ; 441: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 143
	i64 11340910727871153756, ; 442: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 265
	i64 11341245327015630248, ; 443: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 231
	i64 11347436699239206956, ; 444: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 158
	i64 11369118378396596751, ; 445: de\Microsoft.Data.SqlClient.resources => 0x9dc738edd1b1ba0f => 326
	i64 11392833485892708388, ; 446: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 294
	i64 11432101114902388181, ; 447: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 448: Mono.Android.Export => 0x9edabf8623efc131 => 165
	i64 11448276831755070604, ; 449: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 30
	i64 11485890710487134646, ; 450: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 105
	i64 11508496261504176197, ; 451: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 275
	i64 11513602507638267977, ; 452: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 236
	i64 11517440453979132662, ; 453: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 211
	i64 11518296021396496455, ; 454: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 351
	i64 11529969570048099689, ; 455: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 309
	i64 11530571088791430846, ; 456: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 203
	i64 11580057168383206117, ; 457: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 248
	i64 11591352189662810718, ; 458: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 302
	i64 11597940890313164233, ; 459: netstandard => 0xa0f429ca8d1805c9 => 163
	i64 11672361001936329215, ; 460: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 276
	i64 11692977985522001935, ; 461: System.Threading.Overlapped.dll => 0xa245cd869980680f => 136
	i64 11705530742807338875, ; 462: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 347
	i64 11707554492040141440, ; 463: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 57
	i64 11743665907891708234, ; 464: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 140
	i64 11991047634523762324, ; 465: System.Net => 0xa668c24ad493ae94 => 79
	i64 12011556116648931059, ; 466: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 239
	i64 12040886584167504988, ; 467: System.Net.ServicePoint => 0xa719d28d8e121c5c => 72
	i64 12048689113179125827, ; 468: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 200
	i64 12058074296353848905, ; 469: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 201
	i64 12063623837170009990, ; 470: System.Security => 0xa76a99f6ce740786 => 128
	i64 12094367927612810875, ; 471: it\Microsoft.Data.SqlClient.resources => 0xa7d7d38d2c3d267b => 329
	i64 12096697103934194533, ; 472: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 473: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 474: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 91
	i64 12137774235383566651, ; 475: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 306
	i64 12145679461940342714, ; 476: System.Text.Json => 0xa88e1f1ebcb62fba => 241
	i64 12191646537372739477, ; 477: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 242
	i64 12198439281774268251, ; 478: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 215
	i64 12201331334810686224, ; 479: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 111
	i64 12269460666702402136, ; 480: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 481: System.IO.Pipelines => 0xaae1de2e1c17f00a => 236
	i64 12332222936682028543, ; 482: System.Runtime.Handles => 0xab24db6c07db5dff => 102
	i64 12375446203996702057, ; 483: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 484: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 212
	i64 12451044538927396471, ; 485: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 274
	i64 12466513435562512481, ; 486: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 288
	i64 12475113361194491050, ; 487: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 372
	i64 12487638416075308985, ; 488: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 268
	i64 12493213219680520345, ; 489: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 181
	i64 12517810545449516888, ; 490: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 32
	i64 12538491095302438457, ; 491: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 256
	i64 12550732019250633519, ; 492: System.IO.Compression => 0xae2d28465e8e1b2f => 44
	i64 12681088699309157496, ; 493: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 352
	i64 12699999919562409296, ; 494: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 29
	i64 12700543734426720211, ; 495: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 257
	i64 12708238894395270091, ; 496: System.IO => 0xb05cbbf17d3ba3cb => 55
	i64 12708922737231849740, ; 497: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 132
	i64 12717050818822477433, ; 498: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 112
	i64 12753841065332862057, ; 499: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 311
	i64 12823819093633476069, ; 500: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 365
	i64 12828192437253469131, ; 501: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 322
	i64 12835242264250840079, ; 502: System.IO.Pipes => 0xb21ff0d5d6c0740f => 53
	i64 12843321153144804894, ; 503: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 208
	i64 12843770487262409629, ; 504: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 505: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 75
	i64 12982280885948128408, ; 506: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 267
	i64 13003699287675270979, ; 507: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 177
	i64 13068258254871114833, ; 508: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 109
	i64 13129914918964716986, ; 509: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 271
	i64 13173818576982874404, ; 510: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 100
	i64 13221551921002590604, ; 511: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 339
	i64 13222659110913276082, ; 512: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 353
	i64 13343850469010654401, ; 513: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 166
	i64 13370592475155966277, ; 514: System.Runtime.Serialization => 0xb98de304062ea945 => 113
	i64 13381594904270902445, ; 515: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 347
	i64 13401370062847626945, ; 516: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 306
	i64 13404347523447273790, ; 517: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 261
	i64 13431476299110033919, ; 518: System.Net.WebClient => 0xba663087f18829ff => 74
	i64 13454009404024712428, ; 519: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 317
	i64 13463706743370286408, ; 520: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 83
	i64 13465488254036897740, ; 521: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 319
	i64 13467053111158216594, ; 522: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 367
	i64 13491513212026656886, ; 523: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 254
	i64 13540124433173649601, ; 524: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 368
	i64 13545416393490209236, ; 525: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 351
	i64 13550417756503177631, ; 526: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 197
	i64 13572454107664307259, ; 527: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 296
	i64 13578472628727169633, ; 528: System.Xml.XPath => 0xbc706ce9fba5c261 => 156
	i64 13580399111273692417, ; 529: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 530: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 267
	i64 13647894001087880694, ; 531: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 532: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 247
	i64 13702626353344114072, ; 533: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 31
	i64 13710614125866346983, ; 534: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 115
	i64 13711608316504069620, ; 535: cs\Microsoft.Data.SqlClient.resources => 0xbe496b1ddc8455f4 => 325
	i64 13713329104121190199, ; 536: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 36
	i64 13717397318615465333, ; 537: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13742054908850494594, ; 538: Azure.Identity => 0xbeb596218df25c82 => 170
	i64 13755568601956062840, ; 539: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 346
	i64 13768883594457632599, ; 540: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 50
	i64 13773684197872074685, ; 541: pl\Microsoft.Data.SqlClient.resources => 0xbf25f4cd46937fbd => 332
	i64 13814445057219246765, ; 542: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 349
	i64 13828521679616088467, ; 543: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 320
	i64 13881769479078963060, ; 544: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 545: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 121
	i64 13928444506500929300, ; 546: System.Windows.dll => 0xc14bc67b8bba9714 => 150
	i64 13959074834287824816, ; 547: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 274
	i64 13970307180132182141, ; 548: Syncfusion.Licensing => 0xc1e0805ccade287d => 228
	i64 14075334701871371868, ; 549: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 129
	i64 14082136096249122791, ; 550: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 178
	i64 14100563506285742564, ; 551: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 341
	i64 14124974489674258913, ; 552: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 256
	i64 14125464355221830302, ; 553: System.Threading.dll => 0xc407bafdbc707a9e => 144
	i64 14133832980772275001, ; 554: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 182
	i64 14178052285788134900, ; 555: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 243
	i64 14212104595480609394, ; 556: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 118
	i64 14220608275227875801, ; 557: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 27
	i64 14226382999226559092, ; 558: System.ServiceProcess => 0xc56e43f6938e2a74 => 130
	i64 14232023429000439693, ; 559: System.Resources.Writer.dll => 0xc5824de7789ba78d => 98
	i64 14254574811015963973, ; 560: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 132
	i64 14261073672896646636, ; 561: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 294
	i64 14298246716367104064, ; 562: System.Web.dll => 0xc66d93a217f4e840 => 149
	i64 14327695147300244862, ; 563: System.Reflection.dll => 0xc6d632d338eb4d7e => 95
	i64 14327709162229390963, ; 564: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 123
	i64 14331727281556788554, ; 565: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 244
	i64 14346402571976470310, ; 566: System.Net.Ping.dll => 0xc718a920f3686f26 => 67
	i64 14461014870687870182, ; 567: System.Net.Requests.dll => 0xc8afd8683afdece6 => 70
	i64 14464374589798375073, ; 568: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 362
	i64 14486659737292545672, ; 569: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 279
	i64 14495724990987328804, ; 570: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 297
	i64 14522721392235705434, ; 571: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 343
	i64 14533141687369379279, ; 572: zh-Hant\Microsoft.Data.SqlClient.resources => 0xc9b0175d6212adcf => 337
	i64 14538127318538747197, ; 573: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 228
	i64 14551742072151931844, ; 574: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 240
	i64 14555563020035440075, ; 575: Syncfusion.Blazor => 0xc9ffbf72b3063dcb => 226
	i64 14561513370130550166, ; 576: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 122
	i64 14574160591280636898, ; 577: System.Net.Quic => 0xca41d1d72ec783e2 => 69
	i64 14622043554576106986, ; 578: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 109
	i64 14644440854989303794, ; 579: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 289
	i64 14648804764802849406, ; 580: Azure.Identity.dll => 0xcb4b0252261f9a7e => 170
	i64 14669215534098758659, ; 581: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 193
	i64 14690985099581930927, ; 582: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 148
	i64 14705122255218365489, ; 583: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 354
	i64 14744092281598614090, ; 584: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 370
	i64 14792063746108907174, ; 585: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 317
	i64 14832630590065248058, ; 586: System.Security.Claims => 0xcdd816ef5d6e873a => 116
	i64 14852515768018889994, ; 587: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 265
	i64 14889905118082851278, ; 588: GoogleGson.dll => 0xcea391d0969961ce => 171
	i64 14892012299694389861, ; 589: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 371
	i64 14904040806490515477, ; 590: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 338
	i64 14912225920358050525, ; 591: System.Security.Principal.Windows => 0xcef2de7759506add => 125
	i64 14921072373058723558, ; 592: ko/Microsoft.Data.SqlClient.resources.dll => 0xcf124c44a00f5ee6 => 331
	i64 14935719434541007538, ; 593: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 131
	i64 14954917835170835695, ; 594: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 194
	i64 14984936317414011727, ; 595: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 75
	i64 14987728460634540364, ; 596: System.IO.Compression.dll => 0xcfff1ba06622494c => 44
	i64 14988210264188246988, ; 597: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 268
	i64 15015154896917945444, ; 598: System.Net.Security.dll => 0xd0608bd33642dc64 => 71
	i64 15024878362326791334, ; 599: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 61
	i64 15051741671811457419, ; 600: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 196
	i64 15071021337266399595, ; 601: System.Resources.Reader.dll => 0xd127060e7a18a96b => 96
	i64 15076659072870671916, ; 602: System.ObjectModel.dll => 0xd13b0d8c1620662c => 82
	i64 15111608613780139878, ; 603: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 355
	i64 15115185479366240210, ; 604: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 41
	i64 15115246995682617720, ; 605: pl/Microsoft.Data.SqlClient.resources.dll => 0xd1c4250efdf3e978 => 332
	i64 15133485256822086103, ; 606: System.Linq.dll => 0xd204f0a9127dd9d7 => 59
	i64 15138356091203993725, ; 607: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 211
	i64 15150743910298169673, ; 608: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 295
	i64 15227001540531775957, ; 609: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 189
	i64 15234786388537674379, ; 610: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 36
	i64 15250465174479574862, ; 611: System.Globalization.Calendars.dll => 0xd3a489469852174e => 38
	i64 15272359115529052076, ; 612: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 258
	i64 15279429628684179188, ; 613: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 323
	i64 15299439993936780255, ; 614: System.Xml.XPath.dll => 0xd452879d55019bdf => 156
	i64 15338463749992804988, ; 615: System.Resources.Reader => 0xd4dd2b839286f27c => 96
	i64 15370334346939861994, ; 616: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 263
	i64 15383240894167415497, ; 617: System.Memory.Data => 0xd57c4016df1c7ac9 => 237
	i64 15391712275433856905, ; 618: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 194
	i64 15427448221306938193, ; 619: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 175
	i64 15440042012048828209, ; 620: pt-BR\Microsoft.Data.SqlClient.resources => 0xd6460c67b5472731 => 333
	i64 15475196252089753159, ; 621: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 233
	i64 15481710163200268842, ; 622: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 198
	i64 15526743539506359484, ; 623: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 133
	i64 15527772828719725935, ; 624: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 625: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 63
	i64 15536481058354060254, ; 626: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 342
	i64 15541854775306130054, ; 627: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 123
	i64 15557562860424774966, ; 628: System.Net.Sockets => 0xd7e790fe7a6dc536 => 73
	i64 15582737692548360875, ; 629: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 287
	i64 15592226634512578529, ; 630: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 172
	i64 15609085926864131306, ; 631: System.dll => 0xd89e9cf3334914ea => 160
	i64 15661133872274321916, ; 632: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 152
	i64 15664356999916475676, ; 633: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 342
	i64 15710114879900314733, ; 634: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15718684508147848364, ; 635: es/Microsoft.Data.SqlClient.resources.dll => 0xda23fc476c9694ac => 327
	i64 15743187114543869802, ; 636: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 350
	i64 15755368083429170162, ; 637: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 47
	i64 15777549416145007739, ; 638: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 301
	i64 15783653065526199428, ; 639: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 343
	i64 15809675044885562667, ; 640: cs/Microsoft.Data.SqlClient.resources.dll => 0xdb673fb0a8c3052b => 325
	i64 15817206913877585035, ; 641: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 140
	i64 15827202283623377193, ; 642: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 192
	i64 15847085070278954535, ; 643: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 135
	i64 15885744048853936810, ; 644: System.Resources.Writer => 0xdc75800bd0b6eaaa => 98
	i64 15928521404965645318, ; 645: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 218
	i64 15934062614519587357, ; 646: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 121
	i64 15937190497610202713, ; 647: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 118
	i64 15963349826457351533, ; 648: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 138
	i64 15971679995444160383, ; 649: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 37
	i64 16018552496348375205, ; 650: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 66
	i64 16054465462676478687, ; 651: System.Globalization.Extensions => 0xdecceb47319bdadf => 39
	i64 16154507427712707110, ; 652: System => 0xe03056ea4e39aa26 => 160
	i64 16219561732052121626, ; 653: System.Net.Security => 0xe1177575db7c781a => 71
	i64 16288847719894691167, ; 654: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 356
	i64 16315482530584035869, ; 655: WindowsBase.dll => 0xe26c3ceb1e8d821d => 161
	i64 16321164108206115771, ; 656: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 204
	i64 16337011941688632206, ; 657: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 125
	i64 16361933716545543812, ; 658: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 273
	i64 16423015068819898779, ; 659: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 322
	i64 16454459195343277943, ; 660: System.Net.NetworkInformation => 0xe459fb756d988f77 => 66
	i64 16496768397145114574, ; 661: Mono.Android.Export.dll => 0xe4f04b741db987ce => 165
	i64 16540916324946374984, ; 662: fr\Microsoft.Data.SqlClient.resources => 0xe58d23c28fe37148 => 328
	i64 16558262036769511634, ; 663: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 202
	i64 16589693266713801121, ; 664: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 286
	i64 16621146507174665210, ; 665: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 260
	i64 16649148416072044166, ; 666: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 223
	i64 16677317093839702854, ; 667: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 293
	i64 16702652415771857902, ; 668: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 147
	i64 16709499819875633724, ; 669: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 43
	i64 16737807731308835127, ; 670: System.Runtime.Intrinsics => 0xe848a3736f733137 => 106
	i64 16758309481308491337, ; 671: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 46
	i64 16762783179241323229, ; 672: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 94
	i64 16765015072123548030, ; 673: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 30
	i64 16822611501064131242, ; 674: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 675: mscorlib => 0xe99c30c1484d7f4f => 162
	i64 16856067890322379635, ; 676: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 677: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 134
	i64 16933958494752847024, ; 678: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 76
	i64 16942731696432749159, ; 679: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 363
	i64 16945858842201062480, ; 680: Azure.Core => 0xeb2bc8d57f4e7c50 => 169
	i64 16977952268158210142, ; 681: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 52
	i64 16989020923549080504, ; 682: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 286
	i64 16998075588627545693, ; 683: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 291
	i64 17006954551347072385, ; 684: System.ClientModel => 0xec04d70ec8414d81 => 230
	i64 17008137082415910100, ; 685: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 686: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 249
	i64 17031351772568316411, ; 687: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 290
	i64 17037200463775726619, ; 688: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 277
	i64 17047433665992082296, ; 689: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 191
	i64 17062143951396181894, ; 690: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17079998892748052666, ; 691: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 173
	i64 17089008752050867324, ; 692: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 370
	i64 17118171214553292978, ; 693: System.Threading.Channels => 0xed8ff6060fc420b2 => 135
	i64 17137864900836977098, ; 694: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 216
	i64 17187273293601214786, ; 695: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 696: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 210
	i64 17201328579425343169, ; 697: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 698: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 120
	i64 17205988430934219272, ; 699: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 201
	i64 17230721278011714856, ; 700: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 85
	i64 17234219099804750107, ; 701: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 145
	i64 17260702271250283638, ; 702: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 703: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 33
	i64 17338386382517543202, ; 704: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 77
	i64 17342750010158924305, ; 705: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 348
	i64 17360349973592121190, ; 706: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 315
	i64 17438153253682247751, ; 707: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 363
	i64 17470386307322966175, ; 708: System.Threading.Timer => 0xf27347c8d0d5709f => 143
	i64 17509662556995089465, ; 709: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 78
	i64 17514990004910432069, ; 710: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 346
	i64 17522591619082469157, ; 711: GoogleGson => 0xf32cc03d27a5bf25 => 171
	i64 17523946658117960076, ; 712: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 239
	i64 17558788868712318792, ; 713: es\Microsoft.Data.SqlClient.resources => 0xf3ad597215ae4748 => 327
	i64 17590473451926037903, ; 714: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 242
	i64 17623389608345532001, ; 715: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 358
	i64 17627500474728259406, ; 716: System.Globalization => 0xf4a176498a351f4e => 40
	i64 17685921127322830888, ; 717: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 718: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 369
	i64 17704177640604968747, ; 719: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 288
	i64 17710060891934109755, ; 720: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 285
	i64 17712670374920797664, ; 721: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 105
	i64 17777860260071588075, ; 722: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 108
	i64 17790600151040787804, ; 723: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 213
	i64 17838668724098252521, ; 724: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 725: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 318
	i64 17928294245072900555, ; 726: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 42
	i64 17992315986609351877, ; 727: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 157
	i64 18017743553296241350, ; 728: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 186
	i64 18025913125965088385, ; 729: System.Threading => 0xfa28e87b91334681 => 144
	i64 18099568558057551825, ; 730: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 357
	i64 18102946074201342511, ; 731: tr/Microsoft.Data.SqlClient.resources.dll => 0xfb3a958a7cd2c22f => 335
	i64 18116111925905154859, ; 732: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 254
	i64 18121036031235206392, ; 733: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 290
	i64 18146411883821974900, ; 734: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 234
	i64 18146811631844267958, ; 735: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18185297593982308516, ; 736: Syncfusion.PdfExport.Net => 0xfc5f27cfd814d0a4 => 229
	i64 18203743254473369877, ; 737: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 238
	i64 18225059387460068507, ; 738: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 142
	i64 18245806341561545090, ; 739: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 740: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 271
	i64 18305135509493619199, ; 741: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 292
	i64 18318849532986632368, ; 742: System.Security.dll => 0xfe39a097c37fa8b0 => 128
	i64 18324163916253801303, ; 743: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 352
	i64 18380184030268848184, ; 744: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 308
	i64 18439108438687598470 ; 745: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 92
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [746 x i32] [
	i32 270, ; 0
	i32 208, ; 1
	i32 167, ; 2
	i32 222, ; 3
	i32 56, ; 4
	i32 257, ; 5
	i32 147, ; 6
	i32 298, ; 7
	i32 0, ; 8
	i32 301, ; 9
	i32 264, ; 10
	i32 130, ; 11
	i32 207, ; 12
	i32 54, ; 13
	i32 300, ; 14
	i32 345, ; 15
	i32 93, ; 16
	i32 283, ; 17
	i32 191, ; 18
	i32 127, ; 19
	i32 190, ; 20
	i32 209, ; 21
	i32 199, ; 22
	i32 141, ; 23
	i32 330, ; 24
	i32 258, ; 25
	i32 18, ; 26
	i32 348, ; 27
	i32 269, ; 28
	i32 284, ; 29
	i32 224, ; 30
	i32 146, ; 31
	i32 102, ; 32
	i32 93, ; 33
	i32 169, ; 34
	i32 313, ; 35
	i32 356, ; 36
	i32 334, ; 37
	i32 35, ; 38
	i32 185, ; 39
	i32 27, ; 40
	i32 253, ; 41
	i32 291, ; 42
	i32 48, ; 43
	i32 113, ; 44
	i32 68, ; 45
	i32 219, ; 46
	i32 63, ; 47
	i32 166, ; 48
	i32 141, ; 49
	i32 354, ; 50
	i32 312, ; 51
	i32 252, ; 52
	i32 287, ; 53
	i32 277, ; 54
	i32 38, ; 55
	i32 87, ; 56
	i32 79, ; 57
	i32 225, ; 58
	i32 64, ; 59
	i32 60, ; 60
	i32 84, ; 61
	i32 217, ; 62
	i32 251, ; 63
	i32 104, ; 64
	i32 344, ; 65
	i32 298, ; 66
	i32 100, ; 67
	i32 179, ; 68
	i32 34, ; 69
	i32 248, ; 70
	i32 366, ; 71
	i32 300, ; 72
	i32 220, ; 73
	i32 366, ; 74
	i32 117, ; 75
	i32 285, ; 76
	i32 340, ; 77
	i32 358, ; 78
	i32 138, ; 79
	i32 137, ; 80
	i32 321, ; 81
	i32 51, ; 82
	i32 34, ; 83
	i32 137, ; 84
	i32 225, ; 85
	i32 245, ; 86
	i32 255, ; 87
	i32 183, ; 88
	i32 205, ; 89
	i32 269, ; 90
	i32 8, ; 91
	i32 14, ; 92
	i32 177, ; 93
	i32 362, ; 94
	i32 297, ; 95
	i32 49, ; 96
	i32 215, ; 97
	i32 280, ; 98
	i32 240, ; 99
	i32 99, ; 100
	i32 262, ; 101
	i32 307, ; 102
	i32 114, ; 103
	i32 246, ; 104
	i32 226, ; 105
	i32 159, ; 106
	i32 365, ; 107
	i32 216, ; 108
	i32 162, ; 109
	i32 65, ; 110
	i32 335, ; 111
	i32 193, ; 112
	i32 340, ; 113
	i32 78, ; 114
	i32 217, ; 115
	i32 99, ; 116
	i32 302, ; 117
	i32 212, ; 118
	i32 115, ; 119
	i32 231, ; 120
	i32 345, ; 121
	i32 314, ; 122
	i32 330, ; 123
	i32 76, ; 124
	i32 313, ; 125
	i32 230, ; 126
	i32 112, ; 127
	i32 119, ; 128
	i32 46, ; 129
	i32 172, ; 130
	i32 126, ; 131
	i32 278, ; 132
	i32 249, ; 133
	i32 80, ; 134
	i32 108, ; 135
	i32 73, ; 136
	i32 324, ; 137
	i32 197, ; 138
	i32 235, ; 139
	i32 222, ; 140
	i32 51, ; 141
	i32 304, ; 142
	i32 188, ; 143
	i32 67, ; 144
	i32 303, ; 145
	i32 187, ; 146
	i32 81, ; 147
	i32 168, ; 148
	i32 360, ; 149
	i32 114, ; 150
	i32 189, ; 151
	i32 152, ; 152
	i32 188, ; 153
	i32 243, ; 154
	i32 163, ; 155
	i32 296, ; 156
	i32 176, ; 157
	i32 270, ; 158
	i32 178, ; 159
	i32 203, ; 160
	i32 31, ; 161
	i32 200, ; 162
	i32 220, ; 163
	i32 120, ; 164
	i32 70, ; 165
	i32 227, ; 166
	i32 60, ; 167
	i32 157, ; 168
	i32 111, ; 169
	i32 86, ; 170
	i32 218, ; 171
	i32 328, ; 172
	i32 371, ; 173
	i32 103, ; 174
	i32 18, ; 175
	i32 0, ; 176
	i32 142, ; 177
	i32 116, ; 178
	i32 56, ; 179
	i32 264, ; 180
	i32 17, ; 181
	i32 50, ; 182
	i32 90, ; 183
	i32 233, ; 184
	i32 336, ; 185
	i32 368, ; 186
	i32 53, ; 187
	i32 174, ; 188
	i32 127, ; 189
	i32 148, ; 190
	i32 39, ; 191
	i32 184, ; 192
	i32 90, ; 193
	i32 183, ; 194
	i32 308, ; 195
	i32 202, ; 196
	i32 48, ; 197
	i32 338, ; 198
	i32 158, ; 199
	i32 13, ; 200
	i32 282, ; 201
	i32 246, ; 202
	i32 303, ; 203
	i32 35, ; 204
	i32 65, ; 205
	i32 107, ; 206
	i32 247, ; 207
	i32 180, ; 208
	i32 97, ; 209
	i32 97, ; 210
	i32 11, ; 211
	i32 11, ; 212
	i32 175, ; 213
	i32 289, ; 214
	i32 25, ; 215
	i32 126, ; 216
	i32 74, ; 217
	i32 281, ; 218
	i32 107, ; 219
	i32 307, ; 220
	i32 305, ; 221
	i32 104, ; 222
	i32 2, ; 223
	i32 26, ; 224
	i32 260, ; 225
	i32 153, ; 226
	i32 364, ; 227
	i32 21, ; 228
	i32 367, ; 229
	i32 47, ; 230
	i32 41, ; 231
	i32 124, ; 232
	i32 250, ; 233
	i32 57, ; 234
	i32 117, ; 235
	i32 310, ; 236
	i32 273, ; 237
	i32 259, ; 238
	i32 3, ; 239
	i32 279, ; 240
	i32 299, ; 241
	i32 234, ; 242
	i32 122, ; 243
	i32 195, ; 244
	i32 361, ; 245
	i32 299, ; 246
	i32 361, ; 247
	i32 241, ; 248
	i32 145, ; 249
	i32 83, ; 250
	i32 88, ; 251
	i32 283, ; 252
	i32 372, ; 253
	i32 280, ; 254
	i32 349, ; 255
	i32 255, ; 256
	i32 266, ; 257
	i32 311, ; 258
	i32 206, ; 259
	i32 316, ; 260
	i32 281, ; 261
	i32 131, ; 262
	i32 334, ; 263
	i32 94, ; 264
	i32 3, ; 265
	i32 357, ; 266
	i32 103, ; 267
	i32 360, ; 268
	i32 32, ; 269
	i32 150, ; 270
	i32 154, ; 271
	i32 151, ; 272
	i32 80, ; 273
	i32 176, ; 274
	i32 275, ; 275
	i32 333, ; 276
	i32 139, ; 277
	i32 85, ; 278
	i32 19, ; 279
	i32 276, ; 280
	i32 238, ; 281
	i32 49, ; 282
	i32 245, ; 283
	i32 364, ; 284
	i32 59, ; 285
	i32 52, ; 286
	i32 4, ; 287
	i32 95, ; 288
	i32 237, ; 289
	i32 244, ; 290
	i32 17, ; 291
	i32 151, ; 292
	i32 82, ; 293
	i32 235, ; 294
	i32 28, ; 295
	i32 43, ; 296
	i32 62, ; 297
	i32 64, ; 298
	i32 355, ; 299
	i32 168, ; 300
	i32 284, ; 301
	i32 1, ; 302
	i32 319, ; 303
	i32 45, ; 304
	i32 24, ; 305
	i32 252, ; 306
	i32 196, ; 307
	i32 186, ; 308
	i32 174, ; 309
	i32 161, ; 310
	i32 106, ; 311
	i32 12, ; 312
	i32 278, ; 313
	i32 61, ; 314
	i32 232, ; 315
	i32 23, ; 316
	i32 91, ; 317
	i32 164, ; 318
	i32 12, ; 319
	i32 323, ; 320
	i32 210, ; 321
	i32 223, ; 322
	i32 28, ; 323
	i32 101, ; 324
	i32 14, ; 325
	i32 124, ; 326
	i32 261, ; 327
	i32 293, ; 328
	i32 89, ; 329
	i32 282, ; 330
	i32 224, ; 331
	i32 9, ; 332
	i32 84, ; 333
	i32 272, ; 334
	i32 305, ; 335
	i32 359, ; 336
	i32 69, ; 337
	i32 164, ; 338
	i32 1, ; 339
	i32 292, ; 340
	i32 5, ; 341
	i32 359, ; 342
	i32 42, ; 343
	i32 232, ; 344
	i32 195, ; 345
	i32 320, ; 346
	i32 326, ; 347
	i32 154, ; 348
	i32 295, ; 349
	i32 110, ; 350
	i32 209, ; 351
	i32 369, ; 352
	i32 214, ; 353
	i32 187, ; 354
	i32 119, ; 355
	i32 182, ; 356
	i32 310, ; 357
	i32 251, ; 358
	i32 329, ; 359
	i32 213, ; 360
	i32 155, ; 361
	i32 185, ; 362
	i32 336, ; 363
	i32 129, ; 364
	i32 315, ; 365
	i32 55, ; 366
	i32 192, ; 367
	i32 134, ; 368
	i32 81, ; 369
	i32 29, ; 370
	i32 262, ; 371
	i32 10, ; 372
	i32 312, ; 373
	i32 167, ; 374
	i32 214, ; 375
	i32 259, ; 376
	i32 146, ; 377
	i32 92, ; 378
	i32 272, ; 379
	i32 58, ; 380
	i32 221, ; 381
	i32 153, ; 382
	i32 344, ; 383
	i32 205, ; 384
	i32 62, ; 385
	i32 86, ; 386
	i32 77, ; 387
	i32 45, ; 388
	i32 219, ; 389
	i32 139, ; 390
	i32 341, ; 391
	i32 190, ; 392
	i32 229, ; 393
	i32 321, ; 394
	i32 266, ; 395
	i32 72, ; 396
	i32 89, ; 397
	i32 318, ; 398
	i32 133, ; 399
	i32 88, ; 400
	i32 304, ; 401
	i32 324, ; 402
	i32 263, ; 403
	i32 179, ; 404
	i32 339, ; 405
	i32 180, ; 406
	i32 110, ; 407
	i32 40, ; 408
	i32 155, ; 409
	i32 4, ; 410
	i32 227, ; 411
	i32 101, ; 412
	i32 199, ; 413
	i32 68, ; 414
	i32 207, ; 415
	i32 184, ; 416
	i32 58, ; 417
	i32 37, ; 418
	i32 253, ; 419
	i32 181, ; 420
	i32 149, ; 421
	i32 54, ; 422
	i32 33, ; 423
	i32 204, ; 424
	i32 221, ; 425
	i32 250, ; 426
	i32 21, ; 427
	i32 159, ; 428
	i32 337, ; 429
	i32 198, ; 430
	i32 316, ; 431
	i32 350, ; 432
	i32 314, ; 433
	i32 309, ; 434
	i32 331, ; 435
	i32 136, ; 436
	i32 173, ; 437
	i32 353, ; 438
	i32 206, ; 439
	i32 87, ; 440
	i32 143, ; 441
	i32 265, ; 442
	i32 231, ; 443
	i32 158, ; 444
	i32 326, ; 445
	i32 294, ; 446
	i32 6, ; 447
	i32 165, ; 448
	i32 30, ; 449
	i32 105, ; 450
	i32 275, ; 451
	i32 236, ; 452
	i32 211, ; 453
	i32 351, ; 454
	i32 309, ; 455
	i32 203, ; 456
	i32 248, ; 457
	i32 302, ; 458
	i32 163, ; 459
	i32 276, ; 460
	i32 136, ; 461
	i32 347, ; 462
	i32 57, ; 463
	i32 140, ; 464
	i32 79, ; 465
	i32 239, ; 466
	i32 72, ; 467
	i32 200, ; 468
	i32 201, ; 469
	i32 128, ; 470
	i32 329, ; 471
	i32 25, ; 472
	i32 7, ; 473
	i32 91, ; 474
	i32 306, ; 475
	i32 241, ; 476
	i32 242, ; 477
	i32 215, ; 478
	i32 111, ; 479
	i32 9, ; 480
	i32 236, ; 481
	i32 102, ; 482
	i32 19, ; 483
	i32 212, ; 484
	i32 274, ; 485
	i32 288, ; 486
	i32 372, ; 487
	i32 268, ; 488
	i32 181, ; 489
	i32 32, ; 490
	i32 256, ; 491
	i32 44, ; 492
	i32 352, ; 493
	i32 29, ; 494
	i32 257, ; 495
	i32 55, ; 496
	i32 132, ; 497
	i32 112, ; 498
	i32 311, ; 499
	i32 365, ; 500
	i32 322, ; 501
	i32 53, ; 502
	i32 208, ; 503
	i32 6, ; 504
	i32 75, ; 505
	i32 267, ; 506
	i32 177, ; 507
	i32 109, ; 508
	i32 271, ; 509
	i32 100, ; 510
	i32 339, ; 511
	i32 353, ; 512
	i32 166, ; 513
	i32 113, ; 514
	i32 347, ; 515
	i32 306, ; 516
	i32 261, ; 517
	i32 74, ; 518
	i32 317, ; 519
	i32 83, ; 520
	i32 319, ; 521
	i32 367, ; 522
	i32 254, ; 523
	i32 368, ; 524
	i32 351, ; 525
	i32 197, ; 526
	i32 296, ; 527
	i32 156, ; 528
	i32 2, ; 529
	i32 267, ; 530
	i32 24, ; 531
	i32 247, ; 532
	i32 31, ; 533
	i32 115, ; 534
	i32 325, ; 535
	i32 36, ; 536
	i32 16, ; 537
	i32 170, ; 538
	i32 346, ; 539
	i32 50, ; 540
	i32 332, ; 541
	i32 349, ; 542
	i32 320, ; 543
	i32 20, ; 544
	i32 121, ; 545
	i32 150, ; 546
	i32 274, ; 547
	i32 228, ; 548
	i32 129, ; 549
	i32 178, ; 550
	i32 341, ; 551
	i32 256, ; 552
	i32 144, ; 553
	i32 182, ; 554
	i32 243, ; 555
	i32 118, ; 556
	i32 27, ; 557
	i32 130, ; 558
	i32 98, ; 559
	i32 132, ; 560
	i32 294, ; 561
	i32 149, ; 562
	i32 95, ; 563
	i32 123, ; 564
	i32 244, ; 565
	i32 67, ; 566
	i32 70, ; 567
	i32 362, ; 568
	i32 279, ; 569
	i32 297, ; 570
	i32 343, ; 571
	i32 337, ; 572
	i32 228, ; 573
	i32 240, ; 574
	i32 226, ; 575
	i32 122, ; 576
	i32 69, ; 577
	i32 109, ; 578
	i32 289, ; 579
	i32 170, ; 580
	i32 193, ; 581
	i32 148, ; 582
	i32 354, ; 583
	i32 370, ; 584
	i32 317, ; 585
	i32 116, ; 586
	i32 265, ; 587
	i32 171, ; 588
	i32 371, ; 589
	i32 338, ; 590
	i32 125, ; 591
	i32 331, ; 592
	i32 131, ; 593
	i32 194, ; 594
	i32 75, ; 595
	i32 44, ; 596
	i32 268, ; 597
	i32 71, ; 598
	i32 61, ; 599
	i32 196, ; 600
	i32 96, ; 601
	i32 82, ; 602
	i32 355, ; 603
	i32 41, ; 604
	i32 332, ; 605
	i32 59, ; 606
	i32 211, ; 607
	i32 295, ; 608
	i32 189, ; 609
	i32 36, ; 610
	i32 38, ; 611
	i32 258, ; 612
	i32 323, ; 613
	i32 156, ; 614
	i32 96, ; 615
	i32 263, ; 616
	i32 237, ; 617
	i32 194, ; 618
	i32 175, ; 619
	i32 333, ; 620
	i32 233, ; 621
	i32 198, ; 622
	i32 133, ; 623
	i32 20, ; 624
	i32 63, ; 625
	i32 342, ; 626
	i32 123, ; 627
	i32 73, ; 628
	i32 287, ; 629
	i32 172, ; 630
	i32 160, ; 631
	i32 152, ; 632
	i32 342, ; 633
	i32 5, ; 634
	i32 327, ; 635
	i32 350, ; 636
	i32 47, ; 637
	i32 301, ; 638
	i32 343, ; 639
	i32 325, ; 640
	i32 140, ; 641
	i32 192, ; 642
	i32 135, ; 643
	i32 98, ; 644
	i32 218, ; 645
	i32 121, ; 646
	i32 118, ; 647
	i32 138, ; 648
	i32 37, ; 649
	i32 66, ; 650
	i32 39, ; 651
	i32 160, ; 652
	i32 71, ; 653
	i32 356, ; 654
	i32 161, ; 655
	i32 204, ; 656
	i32 125, ; 657
	i32 273, ; 658
	i32 322, ; 659
	i32 66, ; 660
	i32 165, ; 661
	i32 328, ; 662
	i32 202, ; 663
	i32 286, ; 664
	i32 260, ; 665
	i32 223, ; 666
	i32 293, ; 667
	i32 147, ; 668
	i32 43, ; 669
	i32 106, ; 670
	i32 46, ; 671
	i32 94, ; 672
	i32 30, ; 673
	i32 23, ; 674
	i32 162, ; 675
	i32 22, ; 676
	i32 134, ; 677
	i32 76, ; 678
	i32 363, ; 679
	i32 169, ; 680
	i32 52, ; 681
	i32 286, ; 682
	i32 291, ; 683
	i32 230, ; 684
	i32 10, ; 685
	i32 249, ; 686
	i32 290, ; 687
	i32 277, ; 688
	i32 191, ; 689
	i32 16, ; 690
	i32 173, ; 691
	i32 370, ; 692
	i32 135, ; 693
	i32 216, ; 694
	i32 13, ; 695
	i32 210, ; 696
	i32 15, ; 697
	i32 120, ; 698
	i32 201, ; 699
	i32 85, ; 700
	i32 145, ; 701
	i32 22, ; 702
	i32 33, ; 703
	i32 77, ; 704
	i32 348, ; 705
	i32 315, ; 706
	i32 363, ; 707
	i32 143, ; 708
	i32 78, ; 709
	i32 346, ; 710
	i32 171, ; 711
	i32 239, ; 712
	i32 327, ; 713
	i32 242, ; 714
	i32 358, ; 715
	i32 40, ; 716
	i32 26, ; 717
	i32 369, ; 718
	i32 288, ; 719
	i32 285, ; 720
	i32 105, ; 721
	i32 108, ; 722
	i32 213, ; 723
	i32 7, ; 724
	i32 318, ; 725
	i32 42, ; 726
	i32 157, ; 727
	i32 186, ; 728
	i32 144, ; 729
	i32 357, ; 730
	i32 335, ; 731
	i32 254, ; 732
	i32 290, ; 733
	i32 234, ; 734
	i32 15, ; 735
	i32 229, ; 736
	i32 238, ; 737
	i32 142, ; 738
	i32 8, ; 739
	i32 271, ; 740
	i32 292, ; 741
	i32 128, ; 742
	i32 352, ; 743
	i32 308, ; 744
	i32 92 ; 745
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
