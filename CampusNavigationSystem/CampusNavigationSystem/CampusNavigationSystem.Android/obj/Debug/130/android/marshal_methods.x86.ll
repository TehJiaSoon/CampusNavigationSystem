; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [290 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 83
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 117
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 24
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 110
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 99
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 99
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 125
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 60
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 101
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 58
	i32 212497893, ; 10: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 111
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 77
	i32 230752869, ; 12: Microsoft.CSharp.dll => 0xdc10265 => 11
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 136
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 63
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 81
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 75
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 50
	i32 319314094, ; 18: Xamarin.Forms.Maps => 0x130858ae => 112
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 39
	i32 330147069, ; 20: Microsoft.SqlServer.Server => 0x13ada4fd => 21
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 79
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 28
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 38
	i32 441335492, ; 24: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 62
	i32 442521989, ; 25: Xamarin.Essentials => 0x1a605985 => 109
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 74
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 23
	i32 469710990, ; 28: System.dll => 0x1bff388e => 34
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 75
	i32 485463106, ; 30: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 15
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 87
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 130
	i32 527452488, ; 33: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 125
	i32 548916678, ; 34: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 10
	i32 573782313, ; 35: CampusNavigationSystem.Android.dll => 0x22333929 => 0
	i32 577335427, ; 36: System.Security.Cryptography.Cng => 0x22697083 => 141
	i32 605376203, ; 37: System.IO.Compression.FileSystem => 0x24154ecb => 134
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 68
	i32 639843206, ; 39: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 73
	i32 662205335, ; 40: System.Text.Encodings.Web.dll => 0x27787397 => 46
	i32 663517072, ; 41: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 106
	i32 666292255, ; 42: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 55
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 49
	i32 691348768, ; 44: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 127
	i32 700284507, ; 45: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 122
	i32 710923952, ; 46: CampusNavigationSystem => 0x2a5fd6b0 => 7
	i32 720511267, ; 47: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 126
	i32 722857257, ; 48: System.Runtime.Loader.dll => 0x2b15ed29 => 43
	i32 723796036, ; 49: System.ClientModel.dll => 0x2b244044 => 31
	i32 748832960, ; 50: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 26
	i32 775507847, ; 51: System.IO.Compression => 0x2e394f87 => 133
	i32 809851609, ; 52: System.Drawing.Common.dll => 0x30455ad9 => 132
	i32 843511501, ; 53: Xamarin.AndroidX.Print => 0x3246f6cd => 94
	i32 928116545, ; 54: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 117
	i32 955402788, ; 55: Newtonsoft.Json => 0x38f24a24 => 24
	i32 956575887, ; 56: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 126
	i32 967690846, ; 57: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 79
	i32 974778368, ; 58: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 1012816738, ; 59: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 98
	i32 1035644815, ; 60: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 54
	i32 1042160112, ; 61: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 114
	i32 1052210849, ; 62: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 84
	i32 1062017875, ; 63: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 14
	i32 1084122840, ; 64: Xamarin.Kotlin.StdLib => 0x409e66d8 => 124
	i32 1098259244, ; 65: System => 0x41761b2c => 34
	i32 1138436374, ; 66: Microsoft.Data.SqlClient.dll => 0x43db2916 => 12
	i32 1175144683, ; 67: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 104
	i32 1178241025, ; 68: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 91
	i32 1204270330, ; 69: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 55
	i32 1264511973, ; 70: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 100
	i32 1267360935, ; 71: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 105
	i32 1275534314, ; 72: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 127
	i32 1292207520, ; 73: SQLitePCLRaw.core.dll => 0x4d0585a0 => 27
	i32 1293217323, ; 74: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 70
	i32 1364015309, ; 75: System.IO => 0x514d38cd => 144
	i32 1365406463, ; 76: System.ServiceModel.Internals.dll => 0x516272ff => 137
	i32 1376866003, ; 77: Xamarin.AndroidX.SavedState => 0x52114ed3 => 98
	i32 1395857551, ; 78: Xamarin.AndroidX.Media.dll => 0x5333188f => 88
	i32 1406073936, ; 79: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 64
	i32 1411638395, ; 80: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 41
	i32 1444281494, ; 81: CampusNavigationSystem.Android => 0x5615fc96 => 0
	i32 1460219004, ; 82: Xamarin.Forms.Xaml => 0x57092c7c => 115
	i32 1460893475, ; 83: System.IdentityModel.Tokens.Jwt => 0x57137723 => 35
	i32 1462112819, ; 84: System.IO.Compression.dll => 0x57261233 => 133
	i32 1469204771, ; 85: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 53
	i32 1498168481, ; 86: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 16
	i32 1530663695, ; 87: Xamarin.Forms.Maps.dll => 0x5b3c130f => 112
	i32 1582305585, ; 88: Azure.Identity => 0x5e501131 => 5
	i32 1582372066, ; 89: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 69
	i32 1592978981, ; 90: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 91: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 86
	i32 1624863272, ; 92: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 108
	i32 1628113371, ; 93: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 19
	i32 1635184631, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 73
	i32 1636350590, ; 95: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 67
	i32 1639515021, ; 96: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 97: System.Runtime => 0x62c6282e => 42
	i32 1658241508, ; 98: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 102
	i32 1658251792, ; 99: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 116
	i32 1670060433, ; 100: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 63
	i32 1698840827, ; 101: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 123
	i32 1711441057, ; 102: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 28
	i32 1726116996, ; 103: System.Reflection.dll => 0x66e27484 => 143
	i32 1729485958, ; 104: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 59
	i32 1766324549, ; 105: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 101
	i32 1776026572, ; 106: System.Core.dll => 0x69dc03cc => 32
	i32 1788241197, ; 107: Xamarin.AndroidX.Fragment => 0x6a96652d => 74
	i32 1794500907, ; 108: Microsoft.Identity.Client.dll => 0x6af5e92b => 13
	i32 1796167890, ; 109: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 10
	i32 1808609942, ; 110: Xamarin.AndroidX.Loader => 0x6bcd3296 => 86
	i32 1813058853, ; 111: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 124
	i32 1813201214, ; 112: Xamarin.Google.Android.Material => 0x6c13413e => 116
	i32 1818569960, ; 113: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 92
	i32 1867746548, ; 114: Xamarin.Essentials.dll => 0x6f538cf4 => 109
	i32 1871986876, ; 115: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 19
	i32 1878053835, ; 116: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 115
	i32 1881862856, ; 117: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 111
	i32 1885316902, ; 118: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 56
	i32 1908813208, ; 119: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 119
	i32 1919157823, ; 120: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 89
	i32 1983156543, ; 121: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 123
	i32 1986222447, ; 122: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 20
	i32 2011961780, ; 123: System.Buffers.dll => 0x77ec19b4 => 30
	i32 2019465201, ; 124: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 84
	i32 2040764568, ; 125: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 14
	i32 2055257422, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 80
	i32 2079903147, ; 127: System.Runtime.dll => 0x7bf8cdab => 42
	i32 2090596640, ; 128: System.Numerics.Vectors => 0x7c9bf920 => 40
	i32 2097448633, ; 129: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 76
	i32 2103459038, ; 130: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 29
	i32 2126786730, ; 131: Xamarin.Forms.Platform.Android => 0x7ec430aa => 113
	i32 2129483829, ; 132: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 118
	i32 2201107256, ; 133: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 128
	i32 2201231467, ; 134: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 135: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 104
	i32 2244775296, ; 136: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 87
	i32 2253551641, ; 137: Microsoft.IdentityModel.Protocols => 0x86527819 => 18
	i32 2256548716, ; 138: Xamarin.AndroidX.MultiDex => 0x8680336c => 89
	i32 2261435625, ; 139: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 78
	i32 2265110946, ; 140: System.Security.AccessControl.dll => 0x8702d9a2 => 44
	i32 2279755925, ; 141: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 96
	i32 2315684594, ; 142: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 51
	i32 2369706906, ; 143: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 17
	i32 2383496789, ; 144: System.Security.Principal.Windows.dll => 0x8e114655 => 45
	i32 2403452196, ; 145: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 72
	i32 2409053734, ; 146: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 93
	i32 2465273461, ; 147: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 26
	i32 2465532216, ; 148: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 62
	i32 2471841756, ; 149: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 150: Java.Interop.dll => 0x93918882 => 9
	i32 2501346920, ; 151: System.Data.DataSetExtensions => 0x95178668 => 131
	i32 2505896520, ; 152: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 83
	i32 2562349572, ; 153: Microsoft.CSharp => 0x98ba5a04 => 11
	i32 2570120770, ; 154: System.Text.Encodings.Web => 0x9930ee42 => 46
	i32 2581819634, ; 155: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 105
	i32 2605712449, ; 156: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 128
	i32 2620871830, ; 157: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 67
	i32 2624644809, ; 158: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 71
	i32 2628210652, ; 159: System.Memory.Data => 0x9ca74fdc => 37
	i32 2633051222, ; 160: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 81
	i32 2640290731, ; 161: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 17
	i32 2640706905, ; 162: Azure.Core => 0x9d65fd59 => 4
	i32 2660759594, ; 163: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 139
	i32 2663698177, ; 164: System.Runtime.Loader => 0x9ec4cf01 => 43
	i32 2677098746, ; 165: Azure.Identity.dll => 0x9f9148fa => 5
	i32 2693849962, ; 166: System.IO.dll => 0xa090e36a => 144
	i32 2701096212, ; 167: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 102
	i32 2719963679, ; 168: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 141
	i32 2732626843, ; 169: Xamarin.AndroidX.Activity => 0xa2e0939b => 50
	i32 2737747696, ; 170: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 53
	i32 2740051746, ; 171: Microsoft.Identity.Client => 0xa351df22 => 13
	i32 2755098380, ; 172: Microsoft.SqlServer.Server.dll => 0xa437770c => 21
	i32 2766581644, ; 173: Xamarin.Forms.Core => 0xa4e6af8c => 110
	i32 2770495804, ; 174: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 122
	i32 2778768386, ; 175: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 107
	i32 2779977773, ; 176: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 97
	i32 2810250172, ; 177: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 64
	i32 2819470561, ; 178: System.Xml.dll => 0xa80db4e1 => 48
	i32 2821294376, ; 179: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 97
	i32 2847418871, ; 180: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 118
	i32 2853208004, ; 181: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 107
	i32 2855708567, ; 182: Xamarin.AndroidX.Transition => 0xaa36a797 => 103
	i32 2867946736, ; 183: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 139
	i32 2901442782, ; 184: System.Reflection => 0xacf080de => 143
	i32 2903344695, ; 185: System.ComponentModel.Composition => 0xad0d8637 => 135
	i32 2905242038, ; 186: mscorlib.dll => 0xad2a79b6 => 23
	i32 2916838712, ; 187: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 108
	i32 2919462931, ; 188: System.Numerics.Vectors.dll => 0xae037813 => 40
	i32 2921128767, ; 189: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 52
	i32 2968338931, ; 190: System.Security.Principal.Windows => 0xb0ed41f3 => 45
	i32 2970759306, ; 191: BCrypt.Net-Next.dll => 0xb112308a => 6
	i32 2978675010, ; 192: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 70
	i32 2996846495, ; 193: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 82
	i32 3016983068, ; 194: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 100
	i32 3017076677, ; 195: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 120
	i32 3024354802, ; 196: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 77
	i32 3033605958, ; 197: System.Memory.Data.dll => 0xb4d12746 => 37
	i32 3044182254, ; 198: FormsViewGroup => 0xb57288ee => 8
	i32 3057625584, ; 199: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 90
	i32 3058099980, ; 200: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 121
	i32 3084678329, ; 201: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 20
	i32 3111772706, ; 202: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3121463068, ; 203: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 36
	i32 3124832203, ; 204: System.Threading.Tasks.Extensions => 0xba4127cb => 138
	i32 3132293585, ; 205: System.Security.AccessControl => 0xbab301d1 => 44
	i32 3204380047, ; 206: System.Data.dll => 0xbefef58f => 129
	i32 3211777861, ; 207: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 69
	i32 3230466174, ; 208: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 119
	i32 3247949154, ; 209: Mono.Security => 0xc197c562 => 142
	i32 3258312781, ; 210: Xamarin.AndroidX.CardView => 0xc235e84d => 59
	i32 3265893370, ; 211: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 138
	i32 3267021929, ; 212: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 57
	i32 3280742109, ; 213: CampusNavigationSystem.dll => 0xc38c26dd => 7
	i32 3286872994, ; 214: SQLite-net.dll => 0xc3e9b3a2 => 25
	i32 3312457198, ; 215: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 16
	i32 3317135071, ; 216: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 68
	i32 3317144872, ; 217: System.Data => 0xc5b79d28 => 129
	i32 3340431453, ; 218: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 56
	i32 3345895724, ; 219: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 95
	i32 3346324047, ; 220: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 91
	i32 3353484488, ; 221: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 76
	i32 3358260929, ; 222: System.Text.Json => 0xc82afec1 => 47
	i32 3360279109, ; 223: SQLitePCLRaw.core => 0xc849ca45 => 27
	i32 3362522851, ; 224: Xamarin.AndroidX.Core => 0xc86c06e3 => 66
	i32 3366347497, ; 225: Java.Interop => 0xc8a662e9 => 9
	i32 3374879918, ; 226: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 18
	i32 3374999561, ; 227: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 96
	i32 3395150330, ; 228: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 41
	i32 3404865022, ; 229: System.ServiceModel.Internals => 0xcaf21dfe => 137
	i32 3429136800, ; 230: System.Xml => 0xcc6479a0 => 48
	i32 3430777524, ; 231: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 232: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 71
	i32 3472012038, ; 233: BCrypt.Net-Next => 0xcef2b306 => 6
	i32 3476120550, ; 234: Mono.Android => 0xcf3163e6 => 22
	i32 3485117614, ; 235: System.Text.Json.dll => 0xcfbaacae => 47
	i32 3486566296, ; 236: System.Transactions => 0xcfd0c798 => 130
	i32 3493954962, ; 237: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 61
	i32 3501239056, ; 238: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 57
	i32 3509114376, ; 239: System.Xml.Linq => 0xd128d608 => 49
	i32 3515174580, ; 240: System.Security.dll => 0xd1854eb4 => 140
	i32 3536029504, ; 241: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 113
	i32 3545306353, ; 242: Microsoft.Data.SqlClient => 0xd35114f1 => 12
	i32 3558648585, ; 243: System.ClientModel => 0xd41cab09 => 31
	i32 3561949811, ; 244: Azure.Core.dll => 0xd44f0a73 => 4
	i32 3567349600, ; 245: System.ComponentModel.Composition.dll => 0xd4a16f60 => 135
	i32 3570554715, ; 246: System.IO.FileSystem.AccessControl => 0xd4d2575b => 36
	i32 3618140916, ; 247: Xamarin.AndroidX.Preference => 0xd7a872f4 => 93
	i32 3627220390, ; 248: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 94
	i32 3632359727, ; 249: Xamarin.Forms.Platform => 0xd881692f => 114
	i32 3633644679, ; 250: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 52
	i32 3641597786, ; 251: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 80
	i32 3672681054, ; 252: Mono.Android.dll => 0xdae8aa5e => 22
	i32 3676310014, ; 253: System.Web.Services.dll => 0xdb2009fe => 136
	i32 3682565725, ; 254: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 58
	i32 3684561358, ; 255: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 61
	i32 3689375977, ; 256: System.Drawing.Common => 0xdbe768e9 => 132
	i32 3700591436, ; 257: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 15
	i32 3706696989, ; 258: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 65
	i32 3718780102, ; 259: Xamarin.AndroidX.Annotation => 0xdda814c6 => 51
	i32 3724971120, ; 260: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 90
	i32 3748608112, ; 261: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 33
	i32 3754567612, ; 262: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 29
	i32 3758932259, ; 263: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 78
	i32 3786282454, ; 264: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 60
	i32 3822602673, ; 265: Xamarin.AndroidX.Media => 0xe3d849b1 => 88
	i32 3829621856, ; 266: System.Numerics.dll => 0xe4436460 => 39
	i32 3876362041, ; 267: SQLite-net => 0xe70c9739 => 25
	i32 3885922214, ; 268: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 103
	i32 3888767677, ; 269: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 95
	i32 3896760992, ; 270: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 66
	i32 3920810846, ; 271: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 134
	i32 3921031405, ; 272: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 106
	i32 3931092270, ; 273: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 92
	i32 3945713374, ; 274: System.Data.DataSetExtensions.dll => 0xeb2ecede => 131
	i32 3955647286, ; 275: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 54
	i32 3959773229, ; 276: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 82
	i32 3970018735, ; 277: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 121
	i32 4025784931, ; 278: System.Memory => 0xeff49a63 => 38
	i32 4101593132, ; 279: Xamarin.AndroidX.Emoji2 => 0xf479582c => 72
	i32 4105002889, ; 280: Mono.Security.dll => 0xf4ad5f89 => 142
	i32 4151237749, ; 281: System.Core => 0xf76edc75 => 32
	i32 4182413190, ; 282: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 85
	i32 4185676441, ; 283: System.Security => 0xf97c5a99 => 140
	i32 4213026141, ; 284: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 33
	i32 4256097574, ; 285: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 65
	i32 4260525087, ; 286: System.Buffers => 0xfdf2741f => 30
	i32 4263231520, ; 287: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 35
	i32 4278134329, ; 288: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 120
	i32 4292120959 ; 289: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 85
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [290 x i32] [
	i32 83, i32 117, i32 24, i32 110, i32 99, i32 99, i32 125, i32 60, ; 0..7
	i32 101, i32 58, i32 111, i32 77, i32 11, i32 136, i32 63, i32 81, ; 8..15
	i32 75, i32 50, i32 112, i32 39, i32 21, i32 79, i32 28, i32 38, ; 16..23
	i32 62, i32 109, i32 74, i32 23, i32 34, i32 75, i32 15, i32 87, ; 24..31
	i32 130, i32 125, i32 10, i32 0, i32 141, i32 134, i32 68, i32 73, ; 32..39
	i32 46, i32 106, i32 55, i32 49, i32 127, i32 122, i32 7, i32 126, ; 40..47
	i32 43, i32 31, i32 26, i32 133, i32 132, i32 94, i32 117, i32 24, ; 48..55
	i32 126, i32 79, i32 8, i32 98, i32 54, i32 114, i32 84, i32 14, ; 56..63
	i32 124, i32 34, i32 12, i32 104, i32 91, i32 55, i32 100, i32 105, ; 64..71
	i32 127, i32 27, i32 70, i32 144, i32 137, i32 98, i32 88, i32 64, ; 72..79
	i32 41, i32 0, i32 115, i32 35, i32 133, i32 53, i32 16, i32 112, ; 80..87
	i32 5, i32 69, i32 3, i32 86, i32 108, i32 19, i32 73, i32 67, ; 88..95
	i32 2, i32 42, i32 102, i32 116, i32 63, i32 123, i32 28, i32 143, ; 96..103
	i32 59, i32 101, i32 32, i32 74, i32 13, i32 10, i32 86, i32 124, ; 104..111
	i32 116, i32 92, i32 109, i32 19, i32 115, i32 111, i32 56, i32 119, ; 112..119
	i32 89, i32 123, i32 20, i32 30, i32 84, i32 14, i32 80, i32 42, ; 120..127
	i32 40, i32 76, i32 29, i32 113, i32 118, i32 128, i32 2, i32 104, ; 128..135
	i32 87, i32 18, i32 89, i32 78, i32 44, i32 96, i32 51, i32 17, ; 136..143
	i32 45, i32 72, i32 93, i32 26, i32 62, i32 1, i32 9, i32 131, ; 144..151
	i32 83, i32 11, i32 46, i32 105, i32 128, i32 67, i32 71, i32 37, ; 152..159
	i32 81, i32 17, i32 4, i32 139, i32 43, i32 5, i32 144, i32 102, ; 160..167
	i32 141, i32 50, i32 53, i32 13, i32 21, i32 110, i32 122, i32 107, ; 168..175
	i32 97, i32 64, i32 48, i32 97, i32 118, i32 107, i32 103, i32 139, ; 176..183
	i32 143, i32 135, i32 23, i32 108, i32 40, i32 52, i32 45, i32 6, ; 184..191
	i32 70, i32 82, i32 100, i32 120, i32 77, i32 37, i32 8, i32 90, ; 192..199
	i32 121, i32 20, i32 3, i32 36, i32 138, i32 44, i32 129, i32 69, ; 200..207
	i32 119, i32 142, i32 59, i32 138, i32 57, i32 7, i32 25, i32 16, ; 208..215
	i32 68, i32 129, i32 56, i32 95, i32 91, i32 76, i32 47, i32 27, ; 216..223
	i32 66, i32 9, i32 18, i32 96, i32 41, i32 137, i32 48, i32 1, ; 224..231
	i32 71, i32 6, i32 22, i32 47, i32 130, i32 61, i32 57, i32 49, ; 232..239
	i32 140, i32 113, i32 12, i32 31, i32 4, i32 135, i32 36, i32 93, ; 240..247
	i32 94, i32 114, i32 52, i32 80, i32 22, i32 136, i32 58, i32 61, ; 248..255
	i32 132, i32 15, i32 65, i32 51, i32 90, i32 33, i32 29, i32 78, ; 256..263
	i32 60, i32 88, i32 39, i32 25, i32 103, i32 95, i32 66, i32 134, ; 264..271
	i32 106, i32 92, i32 131, i32 54, i32 82, i32 121, i32 38, i32 72, ; 272..279
	i32 142, i32 32, i32 85, i32 140, i32 33, i32 65, i32 30, i32 35, ; 280..287
	i32 120, i32 85 ; 288..289
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
