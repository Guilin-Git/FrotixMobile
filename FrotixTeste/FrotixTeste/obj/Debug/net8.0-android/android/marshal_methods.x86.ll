; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [372 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [738 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 66
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 65
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 106
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 279
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 313
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 46
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 221
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 78
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 141
	i32 57725457, ; 9: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 325
	i32 57727992, ; 10: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 326
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 367
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 122
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 219
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 100
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 297
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 105
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 297
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 135
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 317
	i32 139659294, ; 21: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 326
	i32 142721839, ; 22: System.Net.WebHeaderCollection => 0x881c32f => 75
	i32 149972175, ; 23: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 122
	i32 159306688, ; 24: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 25: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 253
	i32 166535111, ; 26: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 330
	i32 176265551, ; 27: System.ServiceProcess => 0xa81994f => 130
	i32 182336117, ; 28: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 299
	i32 184328833, ; 29: System.ValueTuple.dll => 0xafca281 => 147
	i32 195452805, ; 30: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 364
	i32 199333315, ; 31: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 365
	i32 205061960, ; 32: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 33: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 251
	i32 220171995, ; 34: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 35: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 273
	i32 230752869, ; 36: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 37: System.Linq.Parallel => 0xdcb05c4 => 57
	i32 231814094, ; 38: System.Globalization => 0xdd133ce => 40
	i32 246610117, ; 39: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 89
	i32 254259026, ; 40: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 173
	i32 261689757, ; 41: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 256
	i32 264223668, ; 42: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 332
	i32 276479776, ; 43: System.Threading.Timer.dll => 0x107abf20 => 143
	i32 278686392, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 275
	i32 280482487, ; 45: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 272
	i32 280992041, ; 46: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 336
	i32 291076382, ; 47: System.IO.Pipes.AccessControl.dll => 0x1159791e => 52
	i32 298918909, ; 48: System.Net.Ping.dll => 0x11d123fd => 67
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 364
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 242
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 81
	i32 330147069, ; 52: Microsoft.SqlServer.Server => 0x13ada4fd => 220
	i32 336156722, ; 53: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 349
	i32 342366114, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 274
	i32 356389973, ; 55: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 348
	i32 360082299, ; 56: System.ServiceModel.Web => 0x15766b7b => 129
	i32 360671332, ; 57: pl\Microsoft.Data.SqlClient.resources => 0x157f6864 => 328
	i32 367780167, ; 58: System.IO.Pipes => 0x15ebe147 => 53
	i32 374914964, ; 59: System.Transactions.Local => 0x1658bf94 => 145
	i32 375677976, ; 60: System.Net.ServicePoint.dll => 0x16646418 => 72
	i32 379916513, ; 61: System.Threading.Thread.dll => 0x16a510e1 => 141
	i32 385762202, ; 62: System.Memory.dll => 0x16fe439a => 60
	i32 392610295, ; 63: System.Threading.ThreadPool.dll => 0x1766c1f7 => 142
	i32 395744057, ; 64: _Microsoft.Android.Resource.Designer => 0x17969339 => 368
	i32 403441872, ; 65: WindowsBase => 0x180c08d0 => 161
	i32 407321033, ; 66: tr/Microsoft.Data.SqlClient.resources.dll => 0x184739c9 => 331
	i32 435591531, ; 67: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 360
	i32 441335492, ; 68: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 257
	i32 442565967, ; 69: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 70: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 270
	i32 451504562, ; 71: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 123
	i32 456227837, ; 72: System.Web.HttpUtility.dll => 0x1b317bfd => 148
	i32 459347974, ; 73: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 111
	i32 465846621, ; 74: mscorlib => 0x1bc4415d => 162
	i32 469710990, ; 75: System.dll => 0x1bff388e => 160
	i32 476646585, ; 76: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 272
	i32 485463106, ; 77: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 207
	i32 486930444, ; 78: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 285
	i32 498788369, ; 79: System.ObjectModel => 0x1dbae811 => 82
	i32 500358224, ; 80: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 347
	i32 503918385, ; 81: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 341
	i32 513247710, ; 82: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 204
	i32 526420162, ; 83: System.Transactions.dll => 0x1f6088c2 => 146
	i32 527452488, ; 84: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 317
	i32 530272170, ; 85: System.Linq.Queryable => 0x1f9b4faa => 58
	i32 539058512, ; 86: Microsoft.Extensions.Logging => 0x20216150 => 200
	i32 540030774, ; 87: System.IO.FileSystem.dll => 0x20303736 => 49
	i32 545304856, ; 88: System.Runtime.Extensions => 0x2080b118 => 101
	i32 546455878, ; 89: System.Runtime.Serialization.Xml => 0x20924146 => 112
	i32 548916678, ; 90: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 179
	i32 549171840, ; 91: System.Globalization.Calendars => 0x20bbb280 => 38
	i32 557405415, ; 92: Jsr305Binding => 0x213954e7 => 310
	i32 569601784, ; 93: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 308
	i32 571435654, ; 94: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 197
	i32 577335427, ; 95: System.Security.Cryptography.Cng => 0x22697083 => 118
	i32 592146354, ; 96: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 355
	i32 601371474, ; 97: System.IO.IsolatedStorage.dll => 0x23d83352 => 50
	i32 605376203, ; 98: System.IO.Compression.FileSystem => 0x24154ecb => 42
	i32 613668793, ; 99: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 117
	i32 627609679, ; 100: Xamarin.AndroidX.CustomView => 0x2568904f => 262
	i32 627931235, ; 101: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 353
	i32 639843206, ; 102: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 268
	i32 643868501, ; 103: System.Net => 0x2660a755 => 79
	i32 662205335, ; 104: System.Text.Encodings.Web.dll => 0x27787397 => 236
	i32 663517072, ; 105: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 304
	i32 666292255, ; 106: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 249
	i32 672442732, ; 107: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 108: System.Net.Security => 0x28bdabca => 71
	i32 683966610, ; 109: Syncfusion.ExcelExport.Net => 0x28c48092 => 223
	i32 688181140, ; 110: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 335
	i32 690569205, ; 111: System.Xml.Linq.dll => 0x29293ff5 => 151
	i32 691348768, ; 112: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 319
	i32 693804605, ; 113: System.Windows => 0x295a9e3d => 150
	i32 699345723, ; 114: System.Reflection.Emit => 0x29af2b3b => 90
	i32 700284507, ; 115: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 314
	i32 700358131, ; 116: System.IO.Compression.ZipFile => 0x29be9df3 => 43
	i32 706645707, ; 117: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 350
	i32 709152836, ; 118: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 234
	i32 709557578, ; 119: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 338
	i32 720511267, ; 120: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 318
	i32 722857257, ; 121: System.Runtime.Loader.dll => 0x2b15ed29 => 107
	i32 723796036, ; 122: System.ClientModel.dll => 0x2b244044 => 226
	i32 735137430, ; 123: System.Security.SecureString.dll => 0x2bd14e96 => 127
	i32 749319402, ; 124: Syncfusion.Blazor.dll => 0x2ca9b4ea => 222
	i32 752232764, ; 125: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 126: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 239
	i32 759454413, ; 127: System.Net.Requests => 0x2d445acd => 70
	i32 762598435, ; 128: System.IO.Pipes.dll => 0x2d745423 => 53
	i32 775507847, ; 129: System.IO.Compression => 0x2e394f87 => 44
	i32 777317022, ; 130: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 359
	i32 789151979, ; 131: Microsoft.Extensions.Options => 0x2f0980eb => 203
	i32 790371945, ; 132: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 263
	i32 804008546, ; 133: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 177
	i32 804715423, ; 134: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 135: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 277
	i32 823281589, ; 136: System.Private.Uri.dll => 0x311247b5 => 84
	i32 830298997, ; 137: System.IO.Compression.Brotli => 0x317d5b75 => 41
	i32 832635846, ; 138: System.Xml.XPath.dll => 0x31a103c6 => 156
	i32 834051424, ; 139: System.Net.Quic => 0x31b69d60 => 69
	i32 843511501, ; 140: Xamarin.AndroidX.Print => 0x3246f6cd => 290
	i32 873119928, ; 141: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 142: System.Globalization.dll => 0x34505120 => 40
	i32 878954865, ; 143: System.Net.Http.Json => 0x3463c971 => 61
	i32 904024072, ; 144: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 145: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 51
	i32 926902833, ; 146: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 362
	i32 928116545, ; 147: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 313
	i32 952186615, ; 148: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 103
	i32 955402788, ; 149: Newtonsoft.Json => 0x38f24a24 => 221
	i32 956575887, ; 150: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 318
	i32 966729478, ; 151: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 311
	i32 967690846, ; 152: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 274
	i32 975236339, ; 153: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 154: System.Xml.XDocument => 0x3a2aaa1d => 154
	i32 986514023, ; 155: System.Private.DataContractSerialization.dll => 0x3acd0267 => 83
	i32 987214855, ; 156: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 157: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 158: System.IO.FileSystem => 0x3b45fb35 => 49
	i32 999186168, ; 159: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 199
	i32 1001831731, ; 160: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 54
	i32 1012816738, ; 161: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 294
	i32 1017540694, ; 162: FrotixTeste => 0x3ca67056 => 0
	i32 1019214401, ; 163: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 164: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 194
	i32 1029334545, ; 165: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 337
	i32 1031528504, ; 166: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 312
	i32 1035644815, ; 167: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 247
	i32 1036536393, ; 168: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 169: System.Linq.Expressions.dll => 0x3e444eb4 => 56
	i32 1048439329, ; 170: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 322
	i32 1052210849, ; 171: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 281
	i32 1062017875, ; 172: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 206
	i32 1067306892, ; 173: GoogleGson => 0x3f9dcf8c => 171
	i32 1082857460, ; 174: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 175: Xamarin.Kotlin.StdLib => 0x409e66d8 => 315
	i32 1089913930, ; 176: System.Diagnostics.EventLog.dll => 0x40f6c44a => 229
	i32 1098259244, ; 177: System => 0x41761b2c => 160
	i32 1106973742, ; 178: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 191
	i32 1118262833, ; 179: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 350
	i32 1121599056, ; 180: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 280
	i32 1127624469, ; 181: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 202
	i32 1138436374, ; 182: Microsoft.Data.SqlClient.dll => 0x43db2916 => 181
	i32 1149092582, ; 183: Xamarin.AndroidX.Window => 0x447dc2e6 => 307
	i32 1157931901, ; 184: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 183
	i32 1168523401, ; 185: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 356
	i32 1170634674, ; 186: System.Web.dll => 0x45c677b2 => 149
	i32 1173126369, ; 187: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 195
	i32 1175144683, ; 188: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 303
	i32 1178241025, ; 189: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 288
	i32 1181870847, ; 190: Microsoft.Bcl.Cryptography => 0x4671eaff => 180
	i32 1202000627, ; 191: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 183
	i32 1203215381, ; 192: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 354
	i32 1204270330, ; 193: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 249
	i32 1204575371, ; 194: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 187
	i32 1208641965, ; 195: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 196: System.IO.IsolatedStorage => 0x48aa6be3 => 50
	i32 1234928153, ; 197: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 352
	i32 1243150071, ; 198: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 308
	i32 1253011324, ; 199: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 200: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 336
	i32 1264511973, ; 201: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 298
	i32 1267360935, ; 202: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 302
	i32 1273260888, ; 203: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 254
	i32 1275534314, ; 204: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 319
	i32 1278448581, ; 205: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 246
	i32 1293217323, ; 206: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 265
	i32 1309188875, ; 207: System.Private.DataContractSerialization => 0x4e08a30b => 83
	i32 1315359775, ; 208: cs/Microsoft.Data.SqlClient.resources.dll => 0x4e66cc1f => 321
	i32 1322716291, ; 209: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 307
	i32 1324164729, ; 210: System.Linq => 0x4eed2679 => 59
	i32 1335329327, ; 211: System.Runtime.Serialization.Json.dll => 0x4f97822f => 110
	i32 1364015309, ; 212: System.IO => 0x514d38cd => 55
	i32 1373134921, ; 213: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 366
	i32 1376866003, ; 214: Xamarin.AndroidX.SavedState => 0x52114ed3 => 294
	i32 1379779777, ; 215: System.Resources.ResourceManager => 0x523dc4c1 => 97
	i32 1402170036, ; 216: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 217: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 258
	i32 1408764838, ; 218: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 109
	i32 1411638395, ; 219: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 99
	i32 1422545099, ; 220: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 100
	i32 1430672901, ; 221: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 334
	i32 1434145427, ; 222: System.Runtime.Handles => 0x557b5293 => 102
	i32 1435222561, ; 223: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 311
	i32 1439761251, ; 224: System.Net.Quic.dll => 0x55d10363 => 69
	i32 1452070440, ; 225: System.Formats.Asn1.dll => 0x568cd628 => 230
	i32 1453312822, ; 226: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1454105418, ; 227: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 196
	i32 1457743152, ; 228: System.Runtime.Extensions.dll => 0x56e36530 => 101
	i32 1458022317, ; 229: System.Net.Security.dll => 0x56e7a7ad => 71
	i32 1460893475, ; 230: System.IdentityModel.Tokens.Jwt => 0x57137723 => 231
	i32 1461004990, ; 231: es\Microsoft.Maui.Controls.resources => 0x57152abe => 340
	i32 1461234159, ; 232: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 233: System.Security.Cryptography.OpenSsl => 0x57201017 => 121
	i32 1462112819, ; 234: System.IO.Compression.dll => 0x57261233 => 44
	i32 1469204771, ; 235: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 248
	i32 1470490898, ; 236: Microsoft.Extensions.Primitives => 0x57a5e912 => 204
	i32 1479771757, ; 237: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 238: System.IO.Compression.Brotli.dll => 0x583e844f => 41
	i32 1487239319, ; 239: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 240: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 295
	i32 1493001747, ; 241: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 344
	i32 1498168481, ; 242: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 208
	i32 1514721132, ; 243: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 339
	i32 1521091094, ; 244: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 199
	i32 1536373174, ; 245: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 246: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 134
	i32 1543355203, ; 247: System.Reflection.Emit.dll => 0x5bfdbb43 => 90
	i32 1546581739, ; 248: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 177
	i32 1550322496, ; 249: System.Reflection.Extensions.dll => 0x5c680b40 => 91
	i32 1551623176, ; 250: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 359
	i32 1565862583, ; 251: System.IO.FileSystem.Primitives => 0x5d552ab7 => 47
	i32 1566207040, ; 252: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 137
	i32 1572293168, ; 253: Syncfusion.ExcelExport.Net.dll => 0x5db74a30 => 223
	i32 1573704789, ; 254: System.Runtime.Serialization.Json => 0x5dccd455 => 110
	i32 1580037396, ; 255: System.Threading.Overlapped => 0x5e2d7514 => 136
	i32 1582305585, ; 256: Azure.Identity => 0x5e501131 => 170
	i32 1582372066, ; 257: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 264
	i32 1592978981, ; 258: System.Runtime.Serialization.dll => 0x5ef2ee25 => 113
	i32 1596263029, ; 259: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 333
	i32 1597949149, ; 260: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 312
	i32 1601112923, ; 261: System.Xml.Serialization => 0x5f6f0b5b => 153
	i32 1604827217, ; 262: System.Net.WebClient => 0x5fa7b851 => 74
	i32 1618516317, ; 263: System.Net.WebSockets.Client.dll => 0x6078995d => 77
	i32 1622152042, ; 264: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 284
	i32 1622358360, ; 265: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 266: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 306
	i32 1628113371, ; 267: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 211
	i32 1632842087, ; 268: Microsoft.Extensions.Configuration.Json => 0x61533167 => 192
	i32 1635184631, ; 269: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 268
	i32 1636350590, ; 270: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 261
	i32 1639515021, ; 271: System.Net.Http.dll => 0x61b9038d => 62
	i32 1639986890, ; 272: System.Text.RegularExpressions => 0x61c036ca => 134
	i32 1641389582, ; 273: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 274: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 176
	i32 1657153582, ; 275: System.Runtime => 0x62c6282e => 114
	i32 1658241508, ; 276: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 300
	i32 1658251792, ; 277: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 309
	i32 1670060433, ; 278: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 256
	i32 1675553242, ; 279: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 46
	i32 1677501392, ; 280: System.Net.Primitives.dll => 0x63fca3d0 => 68
	i32 1678508291, ; 281: System.Net.WebSockets => 0x640c0103 => 78
	i32 1679769178, ; 282: System.Security.Cryptography => 0x641f3e5a => 124
	i32 1689493916, ; 283: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 182
	i32 1691477237, ; 284: System.Reflection.Metadata => 0x64d1e4f5 => 92
	i32 1696967625, ; 285: System.Security.Cryptography.Csp => 0x6525abc9 => 119
	i32 1698840827, ; 286: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 316
	i32 1701541528, ; 287: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 288: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 277
	i32 1726116996, ; 289: System.Reflection.dll => 0x66e27484 => 95
	i32 1728033016, ; 290: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 291: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 252
	i32 1736233607, ; 292: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 357
	i32 1743415430, ; 293: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 335
	i32 1744735666, ; 294: System.Transactions.Local.dll => 0x67fe8db2 => 145
	i32 1746115085, ; 295: System.IO.Pipelines.dll => 0x68139a0d => 232
	i32 1746316138, ; 296: Mono.Android.Export => 0x6816ab6a => 165
	i32 1750313021, ; 297: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 298: System.Resources.Reader.dll => 0x68cc9d1e => 96
	i32 1760259689, ; 299: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 175
	i32 1763938596, ; 300: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 301: System.Reflection.Extensions => 0x6942234e => 91
	i32 1766324549, ; 302: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 299
	i32 1770582343, ; 303: Microsoft.Extensions.Logging.dll => 0x6988f147 => 200
	i32 1776026572, ; 304: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 305: System.Globalization.Extensions.dll => 0x69ec0683 => 39
	i32 1780572499, ; 306: Mono.Android.Runtime.dll => 0x6a216153 => 166
	i32 1782862114, ; 307: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 351
	i32 1788241197, ; 308: Xamarin.AndroidX.Fragment => 0x6a96652d => 270
	i32 1793755602, ; 309: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 343
	i32 1794500907, ; 310: Microsoft.Identity.Client.dll => 0x6af5e92b => 205
	i32 1796167890, ; 311: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 179
	i32 1808609942, ; 312: Xamarin.AndroidX.Loader => 0x6bcd3296 => 284
	i32 1813058853, ; 313: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 315
	i32 1813201214, ; 314: Xamarin.Google.Android.Material => 0x6c13413e => 309
	i32 1818569960, ; 315: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 289
	i32 1818787751, ; 316: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 317: System.Text.Encoding.Extensions => 0x6cbab720 => 132
	i32 1824722060, ; 318: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 109
	i32 1828688058, ; 319: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 201
	i32 1842015223, ; 320: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 363
	i32 1847515442, ; 321: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 239
	i32 1853025655, ; 322: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 360
	i32 1858542181, ; 323: System.Linq.Expressions => 0x6ec71a65 => 56
	i32 1870277092, ; 324: System.Reflection.Primitives => 0x6f7a29e4 => 93
	i32 1871986876, ; 325: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 211
	i32 1875935024, ; 326: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 342
	i32 1879696579, ; 327: System.Formats.Tar.dll => 0x7009e4c3 => 37
	i32 1885316902, ; 328: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 250
	i32 1888955245, ; 329: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 330: System.Reflection.Metadata.dll => 0x70a66bdd => 92
	i32 1898237753, ; 331: System.Reflection.DispatchProxy => 0x7124cf39 => 87
	i32 1900610850, ; 332: System.Resources.ResourceManager.dll => 0x71490522 => 97
	i32 1910275211, ; 333: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 334: System.Private.Xml.Linq => 0x739bd4a8 => 85
	i32 1956758971, ; 335: System.Resources.Writer => 0x74a1c5bb => 98
	i32 1961813231, ; 336: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 296
	i32 1968388702, ; 337: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 188
	i32 1983156543, ; 338: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 316
	i32 1985761444, ; 339: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 241
	i32 1986222447, ; 340: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 212
	i32 2003115576, ; 341: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 339
	i32 2011961780, ; 342: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 343: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 281
	i32 2025202353, ; 344: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 334
	i32 2031763787, ; 345: Xamarin.Android.Glide => 0x791a414b => 238
	i32 2040764568, ; 346: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 206
	i32 2045470958, ; 347: System.Private.Xml => 0x79eb68ee => 86
	i32 2048278909, ; 348: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 190
	i32 2055257422, ; 349: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 276
	i32 2060060697, ; 350: System.Windows.dll => 0x7aca0819 => 150
	i32 2066184531, ; 351: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 338
	i32 2070888862, ; 352: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2072397586, ; 353: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 198
	i32 2079903147, ; 354: System.Runtime.dll => 0x7bf8cdab => 114
	i32 2090596640, ; 355: System.Numerics.Vectors => 0x7c9bf920 => 80
	i32 2127167465, ; 356: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 357: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 358: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 158
	i32 2146852085, ; 359: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2158094441, ; 360: Syncfusion.Blazor => 0x80a1e869 => 222
	i32 2159891885, ; 361: Microsoft.Maui => 0x80bd55ad => 217
	i32 2169148018, ; 362: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 346
	i32 2181898931, ; 363: Microsoft.Extensions.Options.dll => 0x820d22b3 => 203
	i32 2192057212, ; 364: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 201
	i32 2193016926, ; 365: System.ObjectModel.dll => 0x82b6c85e => 82
	i32 2201107256, ; 366: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 320
	i32 2201231467, ; 367: System.Net.Http => 0x8334206b => 62
	i32 2207618523, ; 368: it\Microsoft.Maui.Controls.resources => 0x839595db => 348
	i32 2217644978, ; 369: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 303
	i32 2222056684, ; 370: System.Threading.Tasks.Parallel => 0x8471e4ec => 139
	i32 2228745826, ; 371: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 329
	i32 2244775296, ; 372: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 285
	i32 2252106437, ; 373: System.Xml.Serialization.dll => 0x863c6ac5 => 153
	i32 2252897993, ; 374: Microsoft.EntityFrameworkCore => 0x86487ec9 => 182
	i32 2253551641, ; 375: Microsoft.IdentityModel.Protocols => 0x86527819 => 210
	i32 2256313426, ; 376: System.Globalization.Extensions => 0x867c9c52 => 39
	i32 2265110946, ; 377: System.Security.AccessControl.dll => 0x8702d9a2 => 115
	i32 2266799131, ; 378: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 189
	i32 2267999099, ; 379: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 240
	i32 2270573516, ; 380: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 342
	i32 2279755925, ; 381: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 292
	i32 2293034957, ; 382: System.ServiceModel.Web.dll => 0x88acefcd => 129
	i32 2295906218, ; 383: System.Net.Sockets => 0x88d8bfaa => 73
	i32 2298471582, ; 384: System.Net.Mail => 0x88ffe49e => 64
	i32 2303942373, ; 385: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 352
	i32 2305521784, ; 386: System.Private.CoreLib.dll => 0x896b7878 => 168
	i32 2309278602, ; 387: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 327
	i32 2315684594, ; 388: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 244
	i32 2320631194, ; 389: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 139
	i32 2340441535, ; 390: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 104
	i32 2344264397, ; 391: System.ValueTuple => 0x8bbaa2cd => 147
	i32 2353062107, ; 392: System.Net.Primitives => 0x8c40e0db => 68
	i32 2354730003, ; 393: Syncfusion.Licensing => 0x8c5a5413 => 224
	i32 2368005991, ; 394: System.Xml.ReaderWriter.dll => 0x8d24e767 => 152
	i32 2369706906, ; 395: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 209
	i32 2371007202, ; 396: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 188
	i32 2378619854, ; 397: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 119
	i32 2383496789, ; 398: System.Security.Principal.Windows.dll => 0x8e114655 => 125
	i32 2395872292, ; 399: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 347
	i32 2401565422, ; 400: System.Web.HttpUtility => 0x8f24faee => 148
	i32 2403452196, ; 401: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 267
	i32 2411328690, ; 402: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 173
	i32 2421380589, ; 403: System.Threading.Tasks.Dataflow => 0x905355ed => 137
	i32 2423080555, ; 404: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 254
	i32 2427813419, ; 405: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 344
	i32 2435356389, ; 406: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 407: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 408: Microsoft.JSInterop.dll => 0x919672ca => 213
	i32 2454642406, ; 409: System.Text.Encoding.dll => 0x924edee6 => 133
	i32 2458678730, ; 410: System.Net.Sockets.dll => 0x928c75ca => 73
	i32 2459001652, ; 411: System.Linq.Parallel.dll => 0x92916334 => 57
	i32 2465532216, ; 412: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 257
	i32 2471841756, ; 413: netstandard.dll => 0x93554fdc => 163
	i32 2475788418, ; 414: Java.Interop.dll => 0x93918882 => 164
	i32 2480609892, ; 415: FrotixTeste.dll => 0x93db1a64 => 0
	i32 2480646305, ; 416: Microsoft.Maui.Controls => 0x93dba8a1 => 215
	i32 2483903535, ; 417: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 418: System.Net.ServicePoint => 0x94147f61 => 72
	i32 2490993605, ; 419: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 420: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 421: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 279
	i32 2509217888, ; 422: System.Diagnostics.EventLog => 0x958fa060 => 229
	i32 2522472828, ; 423: Xamarin.Android.Glide.dll => 0x9659e17c => 238
	i32 2537015816, ; 424: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 172
	i32 2538310050, ; 425: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 89
	i32 2550873716, ; 426: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 345
	i32 2562349572, ; 427: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 428: System.Text.Encodings.Web => 0x9930ee42 => 236
	i32 2581783588, ; 429: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 280
	i32 2581819634, ; 430: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 302
	i32 2585220780, ; 431: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 132
	i32 2585805581, ; 432: System.Net.Ping => 0x9a20430d => 67
	i32 2585813321, ; 433: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 174
	i32 2589602615, ; 434: System.Threading.ThreadPool => 0x9a5a3337 => 142
	i32 2592341985, ; 435: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 195
	i32 2593496499, ; 436: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 354
	i32 2605712449, ; 437: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 320
	i32 2615233544, ; 438: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 271
	i32 2616218305, ; 439: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 202
	i32 2617129537, ; 440: System.Private.Xml.dll => 0x9bfe3a41 => 86
	i32 2618712057, ; 441: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 94
	i32 2620871830, ; 442: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 261
	i32 2624644809, ; 443: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 266
	i32 2626831493, ; 444: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 349
	i32 2627185994, ; 445: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2628210652, ; 446: System.Memory.Data => 0x9ca74fdc => 233
	i32 2629843544, ; 447: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 43
	i32 2633051222, ; 448: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 275
	i32 2634653062, ; 449: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 184
	i32 2640290731, ; 450: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 209
	i32 2640706905, ; 451: Azure.Core => 0x9d65fd59 => 169
	i32 2660759594, ; 452: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 235
	i32 2663391936, ; 453: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 240
	i32 2663698177, ; 454: System.Runtime.Loader => 0x9ec4cf01 => 107
	i32 2664396074, ; 455: System.Xml.XDocument.dll => 0x9ecf752a => 154
	i32 2665622720, ; 456: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 457: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 458: Azure.Identity.dll => 0x9f9148fa => 170
	i32 2678266992, ; 459: tr\Microsoft.Data.SqlClient.resources => 0x9fa31c70 => 331
	i32 2686887180, ; 460: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 112
	i32 2692077919, ; 461: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 176
	i32 2693849962, ; 462: System.IO.dll => 0xa090e36a => 55
	i32 2701096212, ; 463: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 300
	i32 2715334215, ; 464: System.Threading.Tasks.dll => 0xa1d8b647 => 140
	i32 2717744543, ; 465: System.Security.Claims => 0xa1fd7d9f => 116
	i32 2719963679, ; 466: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 118
	i32 2724373263, ; 467: System.Runtime.Numerics.dll => 0xa262a30f => 108
	i32 2732626843, ; 468: Xamarin.AndroidX.Activity => 0xa2e0939b => 242
	i32 2735172069, ; 469: System.Threading.Channels => 0xa30769e5 => 135
	i32 2735631878, ; 470: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 172
	i32 2737747696, ; 471: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 248
	i32 2740051746, ; 472: Microsoft.Identity.Client => 0xa351df22 => 205
	i32 2740948882, ; 473: System.IO.Pipes.AccessControl => 0xa35f8f92 => 52
	i32 2748088231, ; 474: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 103
	i32 2752995522, ; 475: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 355
	i32 2755098380, ; 476: Microsoft.SqlServer.Server.dll => 0xa437770c => 220
	i32 2755643133, ; 477: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 185
	i32 2758225723, ; 478: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 216
	i32 2764765095, ; 479: Microsoft.Maui.dll => 0xa4caf7a7 => 217
	i32 2765824710, ; 480: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 131
	i32 2770495804, ; 481: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 314
	i32 2778768386, ; 482: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 305
	i32 2779977773, ; 483: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 293
	i32 2785988530, ; 484: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 361
	i32 2788224221, ; 485: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 271
	i32 2801831435, ; 486: Microsoft.Maui.Graphics => 0xa7008e0b => 219
	i32 2803228030, ; 487: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 155
	i32 2804509662, ; 488: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 323
	i32 2806116107, ; 489: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 340
	i32 2810250172, ; 490: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 258
	i32 2819470561, ; 491: System.Xml.dll => 0xa80db4e1 => 159
	i32 2821205001, ; 492: System.ServiceProcess.dll => 0xa8282c09 => 130
	i32 2821294376, ; 493: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 293
	i32 2824502124, ; 494: System.Xml.XmlDocument => 0xa85a7b6c => 157
	i32 2831556043, ; 495: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 353
	i32 2833784645, ; 496: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 178
	i32 2838993487, ; 497: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 282
	i32 2841937114, ; 498: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 325
	i32 2847789619, ; 499: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 184
	i32 2849599387, ; 500: System.Threading.Overlapped.dll => 0xa9d96f9b => 136
	i32 2853208004, ; 501: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 305
	i32 2855708567, ; 502: Xamarin.AndroidX.Transition => 0xaa36a797 => 301
	i32 2861098320, ; 503: Mono.Android.Export.dll => 0xaa88e550 => 165
	i32 2861189240, ; 504: Microsoft.Maui.Essentials => 0xaa8a4878 => 218
	i32 2867946736, ; 505: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 235
	i32 2868557005, ; 506: Syncfusion.Licensing.dll => 0xaafab4cd => 224
	i32 2870099610, ; 507: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 243
	i32 2875164099, ; 508: Jsr305Binding.dll => 0xab5f85c3 => 310
	i32 2875220617, ; 509: System.Globalization.Calendars.dll => 0xab606289 => 38
	i32 2884993177, ; 510: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 269
	i32 2887636118, ; 511: System.Net.dll => 0xac1dd496 => 79
	i32 2891872470, ; 512: cs\Microsoft.Data.SqlClient.resources => 0xac5e78d6 => 321
	i32 2892341533, ; 513: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 175
	i32 2899753641, ; 514: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 54
	i32 2900621748, ; 515: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 516: System.Reflection => 0xacf080de => 95
	i32 2905242038, ; 517: mscorlib.dll => 0xad2a79b6 => 162
	i32 2909740682, ; 518: System.Private.CoreLib => 0xad6f1e8a => 168
	i32 2911054922, ; 519: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 198
	i32 2916838712, ; 520: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 306
	i32 2919462931, ; 521: System.Numerics.Vectors.dll => 0xae037813 => 80
	i32 2921128767, ; 522: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 245
	i32 2936416060, ; 523: System.Resources.Reader => 0xaf06273c => 96
	i32 2940926066, ; 524: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 525: System.Xml.XPath.XDocument => 0xaf624531 => 155
	i32 2944313911, ; 526: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 227
	i32 2959614098, ; 527: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 528: System.Security.Principal.Windows => 0xb0ed41f3 => 125
	i32 2972252294, ; 529: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 117
	i32 2978675010, ; 530: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 265
	i32 2987532451, ; 531: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 296
	i32 2996846495, ; 532: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 278
	i32 3012788804, ; 533: System.Configuration.ConfigurationManager => 0xb3938244 => 227
	i32 3016983068, ; 534: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 298
	i32 3023353419, ; 535: WindowsBase.dll => 0xb434b64b => 161
	i32 3023511517, ; 536: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 330
	i32 3024354802, ; 537: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 273
	i32 3033605958, ; 538: System.Memory.Data.dll => 0xb4d12746 => 233
	i32 3038032645, ; 539: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 368
	i32 3056245963, ; 540: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 295
	i32 3057625584, ; 541: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 286
	i32 3059408633, ; 542: Mono.Android.Runtime => 0xb65adef9 => 166
	i32 3059793426, ; 543: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 544: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 186
	i32 3075834255, ; 545: System.Threading.Tasks => 0xb755818f => 140
	i32 3077302341, ; 546: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 346
	i32 3084678329, ; 547: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 212
	i32 3090735792, ; 548: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 123
	i32 3099732863, ; 549: System.Security.Claims.dll => 0xb8c22b7f => 116
	i32 3103600923, ; 550: System.Formats.Asn1 => 0xb8fd311b => 230
	i32 3111772706, ; 551: System.Runtime.Serialization => 0xb979e222 => 113
	i32 3121463068, ; 552: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 45
	i32 3124832203, ; 553: System.Threading.Tasks.Extensions => 0xba4127cb => 138
	i32 3132293585, ; 554: System.Security.AccessControl => 0xbab301d1 => 115
	i32 3147165239, ; 555: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 556: GoogleGson.dll => 0xbba64c02 => 171
	i32 3158628304, ; 557: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 333
	i32 3159123045, ; 558: System.Reflection.Primitives.dll => 0xbc4c6465 => 93
	i32 3160747431, ; 559: System.IO.MemoryMappedFiles => 0xbc652da7 => 51
	i32 3178803400, ; 560: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 287
	i32 3192346100, ; 561: System.Security.SecureString => 0xbe4755f4 => 127
	i32 3193515020, ; 562: System.Web => 0xbe592c0c => 149
	i32 3195844289, ; 563: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 186
	i32 3204380047, ; 564: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 565: System.Xml.XmlDocument.dll => 0xbf506931 => 157
	i32 3211777861, ; 566: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 264
	i32 3220365878, ; 567: System.Threading => 0xbff2e236 => 144
	i32 3226221578, ; 568: System.Runtime.Handles.dll => 0xc04c3c0a => 102
	i32 3251039220, ; 569: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 87
	i32 3258312781, ; 570: Xamarin.AndroidX.CardView => 0xc235e84d => 252
	i32 3265493905, ; 571: System.Linq.Queryable.dll => 0xc2a37b91 => 58
	i32 3265893370, ; 572: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 138
	i32 3268887220, ; 573: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 324
	i32 3276600297, ; 574: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 329
	i32 3277815716, ; 575: System.Resources.Writer.dll => 0xc35f7fa4 => 98
	i32 3279906254, ; 576: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 577: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 578: System.Security.Cryptography.Encoding => 0xc4251ff9 => 120
	i32 3299363146, ; 579: System.Text.Encoding => 0xc4a8494a => 133
	i32 3303498502, ; 580: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 581: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 341
	i32 3312457198, ; 582: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 208
	i32 3316684772, ; 583: System.Net.Requests.dll => 0xc5b097e4 => 70
	i32 3317135071, ; 584: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 262
	i32 3317144872, ; 585: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 586: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 250
	i32 3343947874, ; 587: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 324
	i32 3345895724, ; 588: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 291
	i32 3346324047, ; 589: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 288
	i32 3357674450, ; 590: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 358
	i32 3358260929, ; 591: System.Text.Json => 0xc82afec1 => 237
	i32 3362336904, ; 592: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 243
	i32 3362522851, ; 593: Xamarin.AndroidX.Core => 0xc86c06e3 => 259
	i32 3366347497, ; 594: Java.Interop => 0xc8a662e9 => 164
	i32 3374879918, ; 595: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 210
	i32 3374999561, ; 596: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 292
	i32 3381016424, ; 597: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 337
	i32 3395150330, ; 598: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 99
	i32 3403906625, ; 599: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 121
	i32 3405233483, ; 600: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 263
	i32 3406629867, ; 601: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 196
	i32 3421170118, ; 602: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 190
	i32 3428513518, ; 603: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 193
	i32 3429136800, ; 604: System.Xml => 0xcc6479a0 => 159
	i32 3430777524, ; 605: netstandard => 0xcc7d82b4 => 163
	i32 3441283291, ; 606: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 266
	i32 3445260447, ; 607: System.Formats.Tar => 0xcd5a809f => 37
	i32 3452344032, ; 608: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 214
	i32 3463511458, ; 609: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 345
	i32 3464190856, ; 610: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 174
	i32 3471940407, ; 611: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 612: Mono.Android => 0xcf3163e6 => 167
	i32 3479583265, ; 613: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 358
	i32 3484440000, ; 614: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 357
	i32 3485117614, ; 615: System.Text.Json.dll => 0xcfbaacae => 237
	i32 3486566296, ; 616: System.Transactions => 0xcfd0c798 => 146
	i32 3493954962, ; 617: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 255
	i32 3500000672, ; 618: Microsoft.JSInterop => 0xd09dc5a0 => 213
	i32 3509114376, ; 619: System.Xml.Linq => 0xd128d608 => 151
	i32 3512826571, ; 620: Microsoft.Bcl.Cryptography.dll => 0xd1617acb => 180
	i32 3515174580, ; 621: System.Security.dll => 0xd1854eb4 => 128
	i32 3530912306, ; 622: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 623: System.Net.HttpListener => 0xd2ff69f1 => 63
	i32 3545306353, ; 624: Microsoft.Data.SqlClient => 0xd35114f1 => 181
	i32 3555084973, ; 625: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 322
	i32 3558648585, ; 626: System.ClientModel => 0xd41cab09 => 226
	i32 3560100363, ; 627: System.Threading.Timer => 0xd432d20b => 143
	i32 3561949811, ; 628: Azure.Core.dll => 0xd44f0a73 => 169
	i32 3570554715, ; 629: System.IO.FileSystem.AccessControl => 0xd4d2575b => 45
	i32 3580758918, ; 630: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 365
	i32 3597029428, ; 631: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 241
	i32 3598340787, ; 632: System.Net.WebSockets.Client => 0xd67a52b3 => 77
	i32 3608519521, ; 633: System.Linq.dll => 0xd715a361 => 59
	i32 3624195450, ; 634: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 104
	i32 3627220390, ; 635: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 290
	i32 3633644679, ; 636: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 245
	i32 3638274909, ; 637: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 47
	i32 3641597786, ; 638: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 276
	i32 3643446276, ; 639: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 362
	i32 3643854240, ; 640: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 287
	i32 3645089577, ; 641: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 642: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 189
	i32 3660523487, ; 643: System.Net.NetworkInformation => 0xda2f27df => 66
	i32 3672681054, ; 644: Mono.Android.dll => 0xdae8aa5e => 167
	i32 3682565725, ; 645: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 251
	i32 3684561358, ; 646: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 255
	i32 3697841164, ; 647: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 367
	i32 3700591436, ; 648: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 207
	i32 3700866549, ; 649: System.Net.WebProxy.dll => 0xdc96bdf5 => 76
	i32 3706696989, ; 650: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 260
	i32 3716563718, ; 651: System.Runtime.Intrinsics => 0xdd864306 => 106
	i32 3718780102, ; 652: Xamarin.AndroidX.Annotation => 0xdda814c6 => 244
	i32 3722202641, ; 653: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 192
	i32 3724971120, ; 654: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 286
	i32 3732100267, ; 655: System.Net.NameResolution => 0xde7354ab => 65
	i32 3732214720, ; 656: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 178
	i32 3733477641, ; 657: Syncfusion.PdfExport.Net.dll => 0xde885909 => 225
	i32 3737834244, ; 658: System.Net.Http.Json.dll => 0xdecad304 => 61
	i32 3748608112, ; 659: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 228
	i32 3751444290, ; 660: System.Xml.XPath => 0xdf9a7f42 => 156
	i32 3758424670, ; 661: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 191
	i32 3786282454, ; 662: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 253
	i32 3792276235, ; 663: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 664: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 214
	i32 3802395368, ; 665: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 666: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 332
	i32 3807198597, ; 667: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 234
	i32 3819260425, ; 668: System.Net.WebProxy => 0xe3a54a09 => 76
	i32 3823082795, ; 669: System.Security.Cryptography.dll => 0xe3df9d2b => 124
	i32 3829621856, ; 670: System.Numerics.dll => 0xe4436460 => 81
	i32 3841636137, ; 671: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 194
	i32 3844307129, ; 672: System.Net.Mail.dll => 0xe52378b9 => 64
	i32 3848348906, ; 673: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 323
	i32 3849253459, ; 674: System.Runtime.InteropServices.dll => 0xe56ef253 => 105
	i32 3870376305, ; 675: System.Net.HttpListener.dll => 0xe6b14171 => 63
	i32 3873536506, ; 676: System.Security.Principal => 0xe6e179fa => 126
	i32 3875112723, ; 677: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 120
	i32 3885497537, ; 678: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 75
	i32 3885922214, ; 679: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 301
	i32 3888767677, ; 680: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 291
	i32 3889960447, ; 681: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 366
	i32 3896106733, ; 682: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 683: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 259
	i32 3901907137, ; 684: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 685: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 42
	i32 3921031405, ; 686: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 304
	i32 3928044579, ; 687: System.Xml.ReaderWriter => 0xea213423 => 152
	i32 3930554604, ; 688: System.Security.Principal.dll => 0xea4780ec => 126
	i32 3931092270, ; 689: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 289
	i32 3945713374, ; 690: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 691: System.Text.Encoding.CodePages => 0xebac8bfe => 131
	i32 3955647286, ; 692: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 247
	i32 3959773229, ; 693: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 278
	i32 3980434154, ; 694: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 361
	i32 3987592930, ; 695: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 343
	i32 4003436829, ; 696: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 697: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 246
	i32 4023392905, ; 698: System.IO.Pipelines => 0xefd01a89 => 232
	i32 4025784931, ; 699: System.Memory => 0xeff49a63 => 60
	i32 4046471985, ; 700: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 216
	i32 4054681211, ; 701: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 88
	i32 4064142224, ; 702: pl/Microsoft.Data.SqlClient.resources.dll => 0xf23de390 => 328
	i32 4068434129, ; 703: System.Private.Xml.Linq.dll => 0xf27f60d1 => 85
	i32 4073602200, ; 704: System.Threading.dll => 0xf2ce3c98 => 144
	i32 4094352644, ; 705: Microsoft.Maui.Essentials.dll => 0xf40add04 => 218
	i32 4099507663, ; 706: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 707: System.Private.Uri => 0xf462c30d => 84
	i32 4101593132, ; 708: Xamarin.AndroidX.Emoji2 => 0xf479582c => 267
	i32 4101842092, ; 709: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 187
	i32 4102112229, ; 710: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 356
	i32 4125707920, ; 711: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 351
	i32 4126470640, ; 712: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 193
	i32 4127667938, ; 713: System.IO.FileSystem.Watcher => 0xf60736e2 => 48
	i32 4130442656, ; 714: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 715: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 88
	i32 4150914736, ; 716: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 363
	i32 4151237749, ; 717: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 718: System.Xml.XmlSerializer => 0xf7e95c85 => 158
	i32 4161255271, ; 719: System.Reflection.TypeExtensions => 0xf807b767 => 94
	i32 4164802419, ; 720: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 48
	i32 4181436372, ; 721: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 111
	i32 4182413190, ; 722: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 283
	i32 4185676441, ; 723: System.Security => 0xf97c5a99 => 128
	i32 4194278001, ; 724: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 185
	i32 4196529839, ; 725: System.Net.WebClient.dll => 0xfa21f6af => 74
	i32 4213026141, ; 726: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 228
	i32 4256097574, ; 727: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 260
	i32 4257443520, ; 728: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 327
	i32 4258378803, ; 729: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 282
	i32 4260525087, ; 730: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 731: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 231
	i32 4265684139, ; 732: Syncfusion.PdfExport.Net => 0xfe412cab => 225
	i32 4271975918, ; 733: Microsoft.Maui.Controls.dll => 0xfea12dee => 215
	i32 4274976490, ; 734: System.Runtime.Numerics => 0xfecef6ea => 108
	i32 4292120959, ; 735: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 283
	i32 4294648842, ; 736: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 197
	i32 4294763496 ; 737: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 269
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [738 x i32] [
	i32 66, ; 0
	i32 65, ; 1
	i32 106, ; 2
	i32 279, ; 3
	i32 313, ; 4
	i32 46, ; 5
	i32 221, ; 6
	i32 78, ; 7
	i32 141, ; 8
	i32 325, ; 9
	i32 326, ; 10
	i32 29, ; 11
	i32 367, ; 12
	i32 122, ; 13
	i32 219, ; 14
	i32 100, ; 15
	i32 297, ; 16
	i32 105, ; 17
	i32 297, ; 18
	i32 135, ; 19
	i32 317, ; 20
	i32 326, ; 21
	i32 75, ; 22
	i32 122, ; 23
	i32 13, ; 24
	i32 253, ; 25
	i32 330, ; 26
	i32 130, ; 27
	i32 299, ; 28
	i32 147, ; 29
	i32 364, ; 30
	i32 365, ; 31
	i32 18, ; 32
	i32 251, ; 33
	i32 26, ; 34
	i32 273, ; 35
	i32 1, ; 36
	i32 57, ; 37
	i32 40, ; 38
	i32 89, ; 39
	i32 173, ; 40
	i32 256, ; 41
	i32 332, ; 42
	i32 143, ; 43
	i32 275, ; 44
	i32 272, ; 45
	i32 336, ; 46
	i32 52, ; 47
	i32 67, ; 48
	i32 364, ; 49
	i32 242, ; 50
	i32 81, ; 51
	i32 220, ; 52
	i32 349, ; 53
	i32 274, ; 54
	i32 348, ; 55
	i32 129, ; 56
	i32 328, ; 57
	i32 53, ; 58
	i32 145, ; 59
	i32 72, ; 60
	i32 141, ; 61
	i32 60, ; 62
	i32 142, ; 63
	i32 368, ; 64
	i32 161, ; 65
	i32 331, ; 66
	i32 360, ; 67
	i32 257, ; 68
	i32 12, ; 69
	i32 270, ; 70
	i32 123, ; 71
	i32 148, ; 72
	i32 111, ; 73
	i32 162, ; 74
	i32 160, ; 75
	i32 272, ; 76
	i32 207, ; 77
	i32 285, ; 78
	i32 82, ; 79
	i32 347, ; 80
	i32 341, ; 81
	i32 204, ; 82
	i32 146, ; 83
	i32 317, ; 84
	i32 58, ; 85
	i32 200, ; 86
	i32 49, ; 87
	i32 101, ; 88
	i32 112, ; 89
	i32 179, ; 90
	i32 38, ; 91
	i32 310, ; 92
	i32 308, ; 93
	i32 197, ; 94
	i32 118, ; 95
	i32 355, ; 96
	i32 50, ; 97
	i32 42, ; 98
	i32 117, ; 99
	i32 262, ; 100
	i32 353, ; 101
	i32 268, ; 102
	i32 79, ; 103
	i32 236, ; 104
	i32 304, ; 105
	i32 249, ; 106
	i32 8, ; 107
	i32 71, ; 108
	i32 223, ; 109
	i32 335, ; 110
	i32 151, ; 111
	i32 319, ; 112
	i32 150, ; 113
	i32 90, ; 114
	i32 314, ; 115
	i32 43, ; 116
	i32 350, ; 117
	i32 234, ; 118
	i32 338, ; 119
	i32 318, ; 120
	i32 107, ; 121
	i32 226, ; 122
	i32 127, ; 123
	i32 222, ; 124
	i32 25, ; 125
	i32 239, ; 126
	i32 70, ; 127
	i32 53, ; 128
	i32 44, ; 129
	i32 359, ; 130
	i32 203, ; 131
	i32 263, ; 132
	i32 177, ; 133
	i32 22, ; 134
	i32 277, ; 135
	i32 84, ; 136
	i32 41, ; 137
	i32 156, ; 138
	i32 69, ; 139
	i32 290, ; 140
	i32 3, ; 141
	i32 40, ; 142
	i32 61, ; 143
	i32 16, ; 144
	i32 51, ; 145
	i32 362, ; 146
	i32 313, ; 147
	i32 103, ; 148
	i32 221, ; 149
	i32 318, ; 150
	i32 311, ; 151
	i32 274, ; 152
	i32 33, ; 153
	i32 154, ; 154
	i32 83, ; 155
	i32 31, ; 156
	i32 12, ; 157
	i32 49, ; 158
	i32 199, ; 159
	i32 54, ; 160
	i32 294, ; 161
	i32 0, ; 162
	i32 35, ; 163
	i32 194, ; 164
	i32 337, ; 165
	i32 312, ; 166
	i32 247, ; 167
	i32 34, ; 168
	i32 56, ; 169
	i32 322, ; 170
	i32 281, ; 171
	i32 206, ; 172
	i32 171, ; 173
	i32 17, ; 174
	i32 315, ; 175
	i32 229, ; 176
	i32 160, ; 177
	i32 191, ; 178
	i32 350, ; 179
	i32 280, ; 180
	i32 202, ; 181
	i32 181, ; 182
	i32 307, ; 183
	i32 183, ; 184
	i32 356, ; 185
	i32 149, ; 186
	i32 195, ; 187
	i32 303, ; 188
	i32 288, ; 189
	i32 180, ; 190
	i32 183, ; 191
	i32 354, ; 192
	i32 249, ; 193
	i32 187, ; 194
	i32 28, ; 195
	i32 50, ; 196
	i32 352, ; 197
	i32 308, ; 198
	i32 5, ; 199
	i32 336, ; 200
	i32 298, ; 201
	i32 302, ; 202
	i32 254, ; 203
	i32 319, ; 204
	i32 246, ; 205
	i32 265, ; 206
	i32 83, ; 207
	i32 321, ; 208
	i32 307, ; 209
	i32 59, ; 210
	i32 110, ; 211
	i32 55, ; 212
	i32 366, ; 213
	i32 294, ; 214
	i32 97, ; 215
	i32 19, ; 216
	i32 258, ; 217
	i32 109, ; 218
	i32 99, ; 219
	i32 100, ; 220
	i32 334, ; 221
	i32 102, ; 222
	i32 311, ; 223
	i32 69, ; 224
	i32 230, ; 225
	i32 31, ; 226
	i32 196, ; 227
	i32 101, ; 228
	i32 71, ; 229
	i32 231, ; 230
	i32 340, ; 231
	i32 9, ; 232
	i32 121, ; 233
	i32 44, ; 234
	i32 248, ; 235
	i32 204, ; 236
	i32 9, ; 237
	i32 41, ; 238
	i32 4, ; 239
	i32 295, ; 240
	i32 344, ; 241
	i32 208, ; 242
	i32 339, ; 243
	i32 199, ; 244
	i32 30, ; 245
	i32 134, ; 246
	i32 90, ; 247
	i32 177, ; 248
	i32 91, ; 249
	i32 359, ; 250
	i32 47, ; 251
	i32 137, ; 252
	i32 223, ; 253
	i32 110, ; 254
	i32 136, ; 255
	i32 170, ; 256
	i32 264, ; 257
	i32 113, ; 258
	i32 333, ; 259
	i32 312, ; 260
	i32 153, ; 261
	i32 74, ; 262
	i32 77, ; 263
	i32 284, ; 264
	i32 36, ; 265
	i32 306, ; 266
	i32 211, ; 267
	i32 192, ; 268
	i32 268, ; 269
	i32 261, ; 270
	i32 62, ; 271
	i32 134, ; 272
	i32 15, ; 273
	i32 176, ; 274
	i32 114, ; 275
	i32 300, ; 276
	i32 309, ; 277
	i32 256, ; 278
	i32 46, ; 279
	i32 68, ; 280
	i32 78, ; 281
	i32 124, ; 282
	i32 182, ; 283
	i32 92, ; 284
	i32 119, ; 285
	i32 316, ; 286
	i32 26, ; 287
	i32 277, ; 288
	i32 95, ; 289
	i32 27, ; 290
	i32 252, ; 291
	i32 357, ; 292
	i32 335, ; 293
	i32 145, ; 294
	i32 232, ; 295
	i32 165, ; 296
	i32 4, ; 297
	i32 96, ; 298
	i32 175, ; 299
	i32 32, ; 300
	i32 91, ; 301
	i32 299, ; 302
	i32 200, ; 303
	i32 21, ; 304
	i32 39, ; 305
	i32 166, ; 306
	i32 351, ; 307
	i32 270, ; 308
	i32 343, ; 309
	i32 205, ; 310
	i32 179, ; 311
	i32 284, ; 312
	i32 315, ; 313
	i32 309, ; 314
	i32 289, ; 315
	i32 2, ; 316
	i32 132, ; 317
	i32 109, ; 318
	i32 201, ; 319
	i32 363, ; 320
	i32 239, ; 321
	i32 360, ; 322
	i32 56, ; 323
	i32 93, ; 324
	i32 211, ; 325
	i32 342, ; 326
	i32 37, ; 327
	i32 250, ; 328
	i32 25, ; 329
	i32 92, ; 330
	i32 87, ; 331
	i32 97, ; 332
	i32 10, ; 333
	i32 85, ; 334
	i32 98, ; 335
	i32 296, ; 336
	i32 188, ; 337
	i32 316, ; 338
	i32 241, ; 339
	i32 212, ; 340
	i32 339, ; 341
	i32 7, ; 342
	i32 281, ; 343
	i32 334, ; 344
	i32 238, ; 345
	i32 206, ; 346
	i32 86, ; 347
	i32 190, ; 348
	i32 276, ; 349
	i32 150, ; 350
	i32 338, ; 351
	i32 32, ; 352
	i32 198, ; 353
	i32 114, ; 354
	i32 80, ; 355
	i32 20, ; 356
	i32 11, ; 357
	i32 158, ; 358
	i32 3, ; 359
	i32 222, ; 360
	i32 217, ; 361
	i32 346, ; 362
	i32 203, ; 363
	i32 201, ; 364
	i32 82, ; 365
	i32 320, ; 366
	i32 62, ; 367
	i32 348, ; 368
	i32 303, ; 369
	i32 139, ; 370
	i32 329, ; 371
	i32 285, ; 372
	i32 153, ; 373
	i32 182, ; 374
	i32 210, ; 375
	i32 39, ; 376
	i32 115, ; 377
	i32 189, ; 378
	i32 240, ; 379
	i32 342, ; 380
	i32 292, ; 381
	i32 129, ; 382
	i32 73, ; 383
	i32 64, ; 384
	i32 352, ; 385
	i32 168, ; 386
	i32 327, ; 387
	i32 244, ; 388
	i32 139, ; 389
	i32 104, ; 390
	i32 147, ; 391
	i32 68, ; 392
	i32 224, ; 393
	i32 152, ; 394
	i32 209, ; 395
	i32 188, ; 396
	i32 119, ; 397
	i32 125, ; 398
	i32 347, ; 399
	i32 148, ; 400
	i32 267, ; 401
	i32 173, ; 402
	i32 137, ; 403
	i32 254, ; 404
	i32 344, ; 405
	i32 20, ; 406
	i32 14, ; 407
	i32 213, ; 408
	i32 133, ; 409
	i32 73, ; 410
	i32 57, ; 411
	i32 257, ; 412
	i32 163, ; 413
	i32 164, ; 414
	i32 0, ; 415
	i32 215, ; 416
	i32 15, ; 417
	i32 72, ; 418
	i32 6, ; 419
	i32 23, ; 420
	i32 279, ; 421
	i32 229, ; 422
	i32 238, ; 423
	i32 172, ; 424
	i32 89, ; 425
	i32 345, ; 426
	i32 1, ; 427
	i32 236, ; 428
	i32 280, ; 429
	i32 302, ; 430
	i32 132, ; 431
	i32 67, ; 432
	i32 174, ; 433
	i32 142, ; 434
	i32 195, ; 435
	i32 354, ; 436
	i32 320, ; 437
	i32 271, ; 438
	i32 202, ; 439
	i32 86, ; 440
	i32 94, ; 441
	i32 261, ; 442
	i32 266, ; 443
	i32 349, ; 444
	i32 30, ; 445
	i32 233, ; 446
	i32 43, ; 447
	i32 275, ; 448
	i32 184, ; 449
	i32 209, ; 450
	i32 169, ; 451
	i32 235, ; 452
	i32 240, ; 453
	i32 107, ; 454
	i32 154, ; 455
	i32 34, ; 456
	i32 22, ; 457
	i32 170, ; 458
	i32 331, ; 459
	i32 112, ; 460
	i32 176, ; 461
	i32 55, ; 462
	i32 300, ; 463
	i32 140, ; 464
	i32 116, ; 465
	i32 118, ; 466
	i32 108, ; 467
	i32 242, ; 468
	i32 135, ; 469
	i32 172, ; 470
	i32 248, ; 471
	i32 205, ; 472
	i32 52, ; 473
	i32 103, ; 474
	i32 355, ; 475
	i32 220, ; 476
	i32 185, ; 477
	i32 216, ; 478
	i32 217, ; 479
	i32 131, ; 480
	i32 314, ; 481
	i32 305, ; 482
	i32 293, ; 483
	i32 361, ; 484
	i32 271, ; 485
	i32 219, ; 486
	i32 155, ; 487
	i32 323, ; 488
	i32 340, ; 489
	i32 258, ; 490
	i32 159, ; 491
	i32 130, ; 492
	i32 293, ; 493
	i32 157, ; 494
	i32 353, ; 495
	i32 178, ; 496
	i32 282, ; 497
	i32 325, ; 498
	i32 184, ; 499
	i32 136, ; 500
	i32 305, ; 501
	i32 301, ; 502
	i32 165, ; 503
	i32 218, ; 504
	i32 235, ; 505
	i32 224, ; 506
	i32 243, ; 507
	i32 310, ; 508
	i32 38, ; 509
	i32 269, ; 510
	i32 79, ; 511
	i32 321, ; 512
	i32 175, ; 513
	i32 54, ; 514
	i32 36, ; 515
	i32 95, ; 516
	i32 162, ; 517
	i32 168, ; 518
	i32 198, ; 519
	i32 306, ; 520
	i32 80, ; 521
	i32 245, ; 522
	i32 96, ; 523
	i32 29, ; 524
	i32 155, ; 525
	i32 227, ; 526
	i32 18, ; 527
	i32 125, ; 528
	i32 117, ; 529
	i32 265, ; 530
	i32 296, ; 531
	i32 278, ; 532
	i32 227, ; 533
	i32 298, ; 534
	i32 161, ; 535
	i32 330, ; 536
	i32 273, ; 537
	i32 233, ; 538
	i32 368, ; 539
	i32 295, ; 540
	i32 286, ; 541
	i32 166, ; 542
	i32 16, ; 543
	i32 186, ; 544
	i32 140, ; 545
	i32 346, ; 546
	i32 212, ; 547
	i32 123, ; 548
	i32 116, ; 549
	i32 230, ; 550
	i32 113, ; 551
	i32 45, ; 552
	i32 138, ; 553
	i32 115, ; 554
	i32 33, ; 555
	i32 171, ; 556
	i32 333, ; 557
	i32 93, ; 558
	i32 51, ; 559
	i32 287, ; 560
	i32 127, ; 561
	i32 149, ; 562
	i32 186, ; 563
	i32 24, ; 564
	i32 157, ; 565
	i32 264, ; 566
	i32 144, ; 567
	i32 102, ; 568
	i32 87, ; 569
	i32 252, ; 570
	i32 58, ; 571
	i32 138, ; 572
	i32 324, ; 573
	i32 329, ; 574
	i32 98, ; 575
	i32 5, ; 576
	i32 13, ; 577
	i32 120, ; 578
	i32 133, ; 579
	i32 27, ; 580
	i32 341, ; 581
	i32 208, ; 582
	i32 70, ; 583
	i32 262, ; 584
	i32 24, ; 585
	i32 250, ; 586
	i32 324, ; 587
	i32 291, ; 588
	i32 288, ; 589
	i32 358, ; 590
	i32 237, ; 591
	i32 243, ; 592
	i32 259, ; 593
	i32 164, ; 594
	i32 210, ; 595
	i32 292, ; 596
	i32 337, ; 597
	i32 99, ; 598
	i32 121, ; 599
	i32 263, ; 600
	i32 196, ; 601
	i32 190, ; 602
	i32 193, ; 603
	i32 159, ; 604
	i32 163, ; 605
	i32 266, ; 606
	i32 37, ; 607
	i32 214, ; 608
	i32 345, ; 609
	i32 174, ; 610
	i32 17, ; 611
	i32 167, ; 612
	i32 358, ; 613
	i32 357, ; 614
	i32 237, ; 615
	i32 146, ; 616
	i32 255, ; 617
	i32 213, ; 618
	i32 151, ; 619
	i32 180, ; 620
	i32 128, ; 621
	i32 19, ; 622
	i32 63, ; 623
	i32 181, ; 624
	i32 322, ; 625
	i32 226, ; 626
	i32 143, ; 627
	i32 169, ; 628
	i32 45, ; 629
	i32 365, ; 630
	i32 241, ; 631
	i32 77, ; 632
	i32 59, ; 633
	i32 104, ; 634
	i32 290, ; 635
	i32 245, ; 636
	i32 47, ; 637
	i32 276, ; 638
	i32 362, ; 639
	i32 287, ; 640
	i32 14, ; 641
	i32 189, ; 642
	i32 66, ; 643
	i32 167, ; 644
	i32 251, ; 645
	i32 255, ; 646
	i32 367, ; 647
	i32 207, ; 648
	i32 76, ; 649
	i32 260, ; 650
	i32 106, ; 651
	i32 244, ; 652
	i32 192, ; 653
	i32 286, ; 654
	i32 65, ; 655
	i32 178, ; 656
	i32 225, ; 657
	i32 61, ; 658
	i32 228, ; 659
	i32 156, ; 660
	i32 191, ; 661
	i32 253, ; 662
	i32 10, ; 663
	i32 214, ; 664
	i32 11, ; 665
	i32 332, ; 666
	i32 234, ; 667
	i32 76, ; 668
	i32 124, ; 669
	i32 81, ; 670
	i32 194, ; 671
	i32 64, ; 672
	i32 323, ; 673
	i32 105, ; 674
	i32 63, ; 675
	i32 126, ; 676
	i32 120, ; 677
	i32 75, ; 678
	i32 301, ; 679
	i32 291, ; 680
	i32 366, ; 681
	i32 8, ; 682
	i32 259, ; 683
	i32 2, ; 684
	i32 42, ; 685
	i32 304, ; 686
	i32 152, ; 687
	i32 126, ; 688
	i32 289, ; 689
	i32 23, ; 690
	i32 131, ; 691
	i32 247, ; 692
	i32 278, ; 693
	i32 361, ; 694
	i32 343, ; 695
	i32 28, ; 696
	i32 246, ; 697
	i32 232, ; 698
	i32 60, ; 699
	i32 216, ; 700
	i32 88, ; 701
	i32 328, ; 702
	i32 85, ; 703
	i32 144, ; 704
	i32 218, ; 705
	i32 35, ; 706
	i32 84, ; 707
	i32 267, ; 708
	i32 187, ; 709
	i32 356, ; 710
	i32 351, ; 711
	i32 193, ; 712
	i32 48, ; 713
	i32 6, ; 714
	i32 88, ; 715
	i32 363, ; 716
	i32 21, ; 717
	i32 158, ; 718
	i32 94, ; 719
	i32 48, ; 720
	i32 111, ; 721
	i32 283, ; 722
	i32 128, ; 723
	i32 185, ; 724
	i32 74, ; 725
	i32 228, ; 726
	i32 260, ; 727
	i32 327, ; 728
	i32 282, ; 729
	i32 7, ; 730
	i32 231, ; 731
	i32 225, ; 732
	i32 215, ; 733
	i32 108, ; 734
	i32 283, ; 735
	i32 197, ; 736
	i32 269 ; 737
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
