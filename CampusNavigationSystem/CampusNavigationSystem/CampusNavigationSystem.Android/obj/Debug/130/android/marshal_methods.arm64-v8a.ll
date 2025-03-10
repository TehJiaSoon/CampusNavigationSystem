; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [290 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 71
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 22
	i64 187974757501212315, ; 2: CampusNavigationSystem => 0x29bd20bc799969b => 7
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 60
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 98
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 99
	i64 316157742385208084, ; 6: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 65
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 83
	i64 670564002081277297, ; 8: Microsoft.Identity.Client.dll => 0x94e526837380571 => 13
	i64 687654259221141486, ; 9: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 118
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 132
	i64 720058930071658100, ; 11: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 76
	i64 870603111519317375, ; 12: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 28
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 70
	i64 937459790420187032, ; 14: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 21
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 130
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 114
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 142
	i64 1060858978308751610, ; 18: Azure.Core.dll => 0xeb8ed9ebee080fa => 4
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 116
	i64 1301485588176585670, ; 20: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 27
	i64 1315114680217950157, ; 21: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 55
	i64 1425944114962822056, ; 22: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1518315023656898250, ; 23: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 29
	i64 1559087064654078745, ; 24: BCrypt.Net-Next.dll => 0x15a2fd6cc69ce319 => 6
	i64 1624659445732251991, ; 25: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 53
	i64 1628611045998245443, ; 26: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 85
	i64 1636321030536304333, ; 27: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 77
	i64 1731380447121279447, ; 28: Newtonsoft.Json => 0x18071957e9b889d7 => 24
	i64 1743969030606105336, ; 29: System.Memory.dll => 0x1833d297e88f2af8 => 38
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 54
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 98
	i64 1865037103900624886, ; 32: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 10
	i64 1875917498431009007, ; 33: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 51
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 84
	i64 2040001226662520565, ; 35: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 138
	i64 2064708342624596306, ; 36: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 125
	i64 2133195048986300728, ; 37: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 24
	i64 2136356949452311481, ; 38: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 89
	i64 2165725771938924357, ; 39: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 58
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 70
	i64 2284400282711631002, ; 41: System.Web.Services => 0x1fb3d1f42fd4249a => 136
	i64 2304837677853103545, ; 42: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 97
	i64 2316229908869312383, ; 43: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 19
	i64 2329709569556905518, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 80
	i64 2335503487726329082, ; 45: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 46
	i64 2337758774805907496, ; 46: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 41
	i64 2470498323731680442, ; 47: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 64
	i64 2479423007379663237, ; 48: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 104
	i64 2497223385847772520, ; 49: System.Runtime => 0x22a7eb7046413568 => 42
	i64 2547086958574651984, ; 50: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 50
	i64 2592350477072141967, ; 51: System.Xml.dll => 0x23f9e10627330e8f => 48
	i64 2612152650457191105, ; 52: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 20
	i64 2624866290265602282, ; 53: mscorlib.dll => 0x246d65fbde2db8ea => 23
	i64 2694427813909235223, ; 54: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 93
	i64 2783046991838674048, ; 55: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 41
	i64 2787234703088983483, ; 56: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 100
	i64 2789714023057451704, ; 57: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 16
	i64 2815524396660695947, ; 58: System.Security.AccessControl => 0x2712c0857f68238b => 44
	i64 2960931600190307745, ; 59: Xamarin.Forms.Core => 0x2917579a49927da1 => 110
	i64 3017704767998173186, ; 60: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 116
	i64 3063847325783385934, ; 61: System.ClientModel.dll => 0x2a84f8e8eb59674e => 31
	i64 3289520064315143713, ; 62: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 79
	i64 3303437397778967116, ; 63: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 52
	i64 3311221304742556517, ; 64: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 40
	i64 3344514922410554693, ; 65: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 128
	i64 3402534845034375023, ; 66: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 35
	i64 3411255996856937470, ; 67: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 119
	i64 3493805808809882663, ; 68: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 102
	i64 3522470458906976663, ; 69: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 101
	i64 3531994851595924923, ; 70: System.Numerics => 0x31042a9aade235bb => 39
	i64 3571415421602489686, ; 71: System.Runtime.dll => 0x319037675df7e556 => 42
	i64 3716579019761409177, ; 72: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 73: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 96
	i64 3772598417116884899, ; 74: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 71
	i64 3966267475168208030, ; 75: System.Memory => 0x370b03412596249e => 38
	i64 4201423742386704971, ; 76: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 65
	i64 4247996603072512073, ; 77: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 121
	i64 4337444564132831293, ; 78: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 26
	i64 4525561845656915374, ; 79: System.ServiceModel.Internals => 0x3ece06856b710dae => 137
	i64 4636684751163556186, ; 80: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 106
	i64 4759461199762736555, ; 81: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 82
	i64 4782108999019072045, ; 82: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 57
	i64 4794310189461587505, ; 83: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 50
	i64 4795410492532947900, ; 84: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 101
	i64 4853321196694829351, ; 85: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 43
	i64 5142919913060024034, ; 86: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 113
	i64 5203618020066742981, ; 87: Xamarin.Essentials => 0x4836f704f0e652c5 => 109
	i64 5205316157927637098, ; 88: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 87
	i64 5256995213548036366, ; 89: Xamarin.Forms.Maps.Android.dll => 0x48f4994b4175a10e => 111
	i64 5290786973231294105, ; 90: System.Runtime.Loader => 0x496ca6b869b72699 => 43
	i64 5348796042099802469, ; 91: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 88
	i64 5376510917114486089, ; 92: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 104
	i64 5408338804355907810, ; 93: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 103
	i64 5451019430259338467, ; 94: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 63
	i64 5507995362134886206, ; 95: System.Core.dll => 0x4c705499688c873e => 32
	i64 5692067934154308417, ; 96: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 108
	i64 5757522595884336624, ; 97: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 61
	i64 5814345312393086621, ; 98: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 93
	i64 5896680224035167651, ; 99: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 81
	i64 6085203216496545422, ; 100: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 114
	i64 6086316965293125504, ; 101: FormsViewGroup.dll => 0x5476f10882baef80 => 8
	i64 6183170893902868313, ; 102: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 26
	i64 6222399776351216807, ; 103: System.Text.Json.dll => 0x565a67a0ffe264a7 => 47
	i64 6319713645133255417, ; 104: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 83
	i64 6401687960814735282, ; 105: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 80
	i64 6504860066809920875, ; 106: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 58
	i64 6548213210057960872, ; 107: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 68
	i64 6591024623626361694, ; 108: System.Web.Services.dll => 0x5b7805f9751a1b5e => 136
	i64 6659513131007730089, ; 109: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 76
	i64 6876862101832370452, ; 110: System.Xml.Linq => 0x5f6f85a57d108914 => 49
	i64 6894844156784520562, ; 111: System.Numerics.Vectors => 0x5faf683aead1ad72 => 40
	i64 7036436454368433159, ; 112: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 78
	i64 7103753931438454322, ; 113: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 75
	i64 7141281584637745974, ; 114: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 120
	i64 7338192458477945005, ; 115: System.Reflection => 0x65d67f295d0740ad => 143
	i64 7348123982286201829, ; 116: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 37
	i64 7488575175965059935, ; 117: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 49
	i64 7496222613193209122, ; 118: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 35
	i64 7635363394907363464, ; 119: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 110
	i64 7637365915383206639, ; 120: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 109
	i64 7654504624184590948, ; 121: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7735176074855944702, ; 122: Microsoft.CSharp => 0x6b58dda848e391fe => 11
	i64 7735352534559001595, ; 123: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 124
	i64 7791074099216502080, ; 124: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 36
	i64 7820441508502274321, ; 125: System.Data => 0x6c87ca1e14ff8111 => 129
	i64 7836164640616011524, ; 126: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 53
	i64 8044118961405839122, ; 127: System.ComponentModel.Composition => 0x6fa2739369944712 => 135
	i64 8083354569033831015, ; 128: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 79
	i64 8087206902342787202, ; 129: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 33
	i64 8103644804370223335, ; 130: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 131
	i64 8167236081217502503, ; 131: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 9
	i64 8187640529827139739, ; 132: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 127
	i64 8234598844743906698, ; 133: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 14
	i64 8398329775253868912, ; 134: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 62
	i64 8400357532724379117, ; 135: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 92
	i64 8426919725312979251, ; 136: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 82
	i64 8476828615142258695, ; 137: BCrypt.Net-Next => 0x75a3beb69b6bb807 => 6
	i64 8513291706828295435, ; 138: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 21
	i64 8598790081731763592, ; 139: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 73
	i64 8601935802264776013, ; 140: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 103
	i64 8626175481042262068, ; 141: Java.Interop => 0x77b654e585b55834 => 9
	i64 8638972117149407195, ; 142: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 11
	i64 8639588376636138208, ; 143: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 91
	i64 8684531736582871431, ; 144: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 134
	i64 8725526185868997716, ; 145: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 33
	i64 8853378295825400934, ; 146: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 123
	i64 8951477988056063522, ; 147: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 95
	i64 8955323522379913726, ; 148: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 13
	i64 9052662452269567435, ; 149: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 18
	i64 9312692141327339315, ; 150: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 108
	i64 9324707631942237306, ; 151: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 54
	i64 9427266486299436557, ; 152: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 17
	i64 9584643793929893533, ; 153: System.IO.dll => 0x85037ebfbbd7f69d => 144
	i64 9662334977499516867, ; 154: System.Numerics.dll => 0x8617827802b0cfc3 => 39
	i64 9678050649315576968, ; 155: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 64
	i64 9711637524876806384, ; 156: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 88
	i64 9808709177481450983, ; 157: Mono.Android.dll => 0x881f890734e555e7 => 22
	i64 9819168441846169364, ; 158: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 18
	i64 9825649861376906464, ; 159: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 61
	i64 9834056768316610435, ; 160: System.Transactions.dll => 0x8879968718899783 => 130
	i64 9875200773399460291, ; 161: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 118
	i64 9907349773706910547, ; 162: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 73
	i64 9998632235833408227, ; 163: Mono.Security => 0x8ac2470b209ebae3 => 142
	i64 10038780035334861115, ; 164: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10089571585547156312, ; 165: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 36
	i64 10226222362177979215, ; 166: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 125
	i64 10229024438826829339, ; 167: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 68
	i64 10321854143672141184, ; 168: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 122
	i64 10376576884623852283, ; 169: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 102
	i64 10406448008575299332, ; 170: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 128
	i64 10430153318873392755, ; 171: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 66
	i64 10447083246144586668, ; 172: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 10
	i64 10775409704848971057, ; 173: Xamarin.Forms.Maps => 0x9589f20936d1d531 => 112
	i64 10847732767863316357, ; 174: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 55
	i64 10880012950675522561, ; 175: CampusNavigationSystem.Android.dll => 0x96fd922244aa0401 => 0
	i64 10889380495983713167, ; 176: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 12
	i64 11023048688141570732, ; 177: System.Core => 0x98f9bc61168392ac => 32
	i64 11037814507248023548, ; 178: System.Xml => 0x992e31d0412bf7fc => 48
	i64 11162124722117608902, ; 179: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 107
	i64 11340910727871153756, ; 180: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 67
	i64 11392833485892708388, ; 181: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 94
	i64 11444370155346000636, ; 182: Xamarin.Forms.Maps.Android => 0x9ed292057b7afafc => 111
	i64 11517440453979132662, ; 183: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 15
	i64 11529969570048099689, ; 184: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 107
	i64 11578238080964724296, ; 185: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 78
	i64 11580057168383206117, ; 186: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 51
	i64 11591352189662810718, ; 187: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 100
	i64 11597940890313164233, ; 188: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11615417929980986559, ; 189: CampusNavigationSystem.dll => 0xa1324110f23844bf => 7
	i64 11672361001936329215, ; 190: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 75
	i64 11739066727115742305, ; 191: SQLite-net.dll => 0xa2e98afdf8575c61 => 25
	i64 11806260347154423189, ; 192: SQLite-net => 0xa3d8433bc5eb5d95 => 25
	i64 12011556116648931059, ; 193: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 139
	i64 12063623837170009990, ; 194: System.Security => 0xa76a99f6ce740786 => 140
	i64 12102847907131387746, ; 195: System.Buffers => 0xa7f5f40c43256f62 => 30
	i64 12137774235383566651, ; 196: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 105
	i64 12145679461940342714, ; 197: System.Text.Json => 0xa88e1f1ebcb62fba => 47
	i64 12198439281774268251, ; 198: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 19
	i64 12279246230491828964, ; 199: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 29
	i64 12439275739440478309, ; 200: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 16
	i64 12451044538927396471, ; 201: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 74
	i64 12466513435562512481, ; 202: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 86
	i64 12487638416075308985, ; 203: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 69
	i64 12493213219680520345, ; 204: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 12
	i64 12538491095302438457, ; 205: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 59
	i64 12550732019250633519, ; 206: System.IO.Compression => 0xae2d28465e8e1b2f => 133
	i64 12700543734426720211, ; 207: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 60
	i64 12708238894395270091, ; 208: System.IO => 0xb05cbbf17d3ba3cb => 144
	i64 12828192437253469131, ; 209: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 126
	i64 12963446364377008305, ; 210: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 132
	i64 13129914918964716986, ; 211: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 72
	i64 13370592475155966277, ; 212: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 213: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 105
	i64 13404347523447273790, ; 214: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 62
	i64 13454009404024712428, ; 215: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 117
	i64 13465488254036897740, ; 216: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 124
	i64 13491513212026656886, ; 217: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 56
	i64 13572454107664307259, ; 218: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 96
	i64 13647894001087880694, ; 219: System.Data.dll => 0xbd670f48cb071df6 => 129
	i64 13710614125866346983, ; 220: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 44
	i64 13742054908850494594, ; 221: Azure.Identity => 0xbeb596218df25c82 => 5
	i64 13828521679616088467, ; 222: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 123
	i64 13959074834287824816, ; 223: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 74
	i64 13967638549803255703, ; 224: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 113
	i64 14124974489674258913, ; 225: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 59
	i64 14133218958863279949, ; 226: CampusNavigationSystem.Android => 0xc42347c317dca74d => 0
	i64 14172845254133543601, ; 227: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 89
	i64 14212104595480609394, ; 228: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 141
	i64 14261073672896646636, ; 229: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 94
	i64 14327695147300244862, ; 230: System.Reflection.dll => 0xc6d632d338eb4d7e => 143
	i64 14486659737292545672, ; 231: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 81
	i64 14495724990987328804, ; 232: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 97
	i64 14551742072151931844, ; 233: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 46
	i64 14644440854989303794, ; 234: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 87
	i64 14648804764802849406, ; 235: Azure.Identity.dll => 0xcb4b0252261f9a7e => 5
	i64 14792063746108907174, ; 236: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 117
	i64 14852515768018889994, ; 237: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 67
	i64 14912225920358050525, ; 238: System.Security.Principal.Windows => 0xcef2de7759506add => 45
	i64 14987728460634540364, ; 239: System.IO.Compression.dll => 0xcfff1ba06622494c => 133
	i64 14988210264188246988, ; 240: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 69
	i64 15138356091203993725, ; 241: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 15
	i64 15150743910298169673, ; 242: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 95
	i64 15279429628684179188, ; 243: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 127
	i64 15370334346939861994, ; 244: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 66
	i64 15383240894167415497, ; 245: System.Memory.Data => 0xd57c4016df1c7ac9 => 37
	i64 15582737692548360875, ; 246: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 85
	i64 15609085926864131306, ; 247: System.dll => 0xd89e9cf3334914ea => 34
	i64 15777549416145007739, ; 248: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 99
	i64 15810740023422282496, ; 249: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 115
	i64 15930129725311349754, ; 250: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 121
	i64 15937190497610202713, ; 251: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 141
	i64 15963349826457351533, ; 252: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 138
	i64 16154507427712707110, ; 253: System => 0xe03056ea4e39aa26 => 34
	i64 16337011941688632206, ; 254: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 45
	i64 16423015068819898779, ; 255: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 126
	i64 16565028646146589191, ; 256: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 135
	i64 16621146507174665210, ; 257: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 63
	i64 16677317093839702854, ; 258: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 92
	i64 16755018182064898362, ; 259: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 27
	i64 16822611501064131242, ; 260: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 131
	i64 16833383113903931215, ; 261: mscorlib => 0xe99c30c1484d7f4f => 23
	i64 16945858842201062480, ; 262: Azure.Core => 0xeb2bc8d57f4e7c50 => 4
	i64 17006954551347072385, ; 263: System.ClientModel => 0xec04d70ec8414d81 => 31
	i64 17024911836938395553, ; 264: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 52
	i64 17031351772568316411, ; 265: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 90
	i64 17037200463775726619, ; 266: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 77
	i64 17137864900836977098, ; 267: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 20
	i64 17197986060146327831, ; 268: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 14
	i64 17523946658117960076, ; 269: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 139
	i64 17544493274320527064, ; 270: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 57
	i64 17704177640604968747, ; 271: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 86
	i64 17710060891934109755, ; 272: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 84
	i64 17790600151040787804, ; 273: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 17
	i64 17816041456001989629, ; 274: Xamarin.Forms.Maps.dll => 0xf73f4b4f90a1bbfd => 112
	i64 17838668724098252521, ; 275: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 30
	i64 17882897186074144999, ; 276: FormsViewGroup => 0xf82cd03e3ac830e7 => 8
	i64 17891337867145587222, ; 277: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 122
	i64 17892495832318972303, ; 278: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 115
	i64 17928294245072900555, ; 279: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 134
	i64 17969331831154222830, ; 280: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 120
	i64 17986907704309214542, ; 281: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 119
	i64 18116111925905154859, ; 282: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 56
	i64 18121036031235206392, ; 283: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 90
	i64 18129453464017766560, ; 284: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 137
	i64 18260797123374478311, ; 285: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 72
	i64 18305135509493619199, ; 286: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 91
	i64 18318849532986632368, ; 287: System.Security.dll => 0xfe39a097c37fa8b0 => 140
	i64 18370042311372477656, ; 288: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 28
	i64 18380184030268848184 ; 289: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 106
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [290 x i32] [
	i32 71, i32 22, i32 7, i32 60, i32 98, i32 99, i32 65, i32 83, ; 0..7
	i32 13, i32 118, i32 132, i32 76, i32 28, i32 70, i32 21, i32 130, ; 8..15
	i32 114, i32 142, i32 4, i32 116, i32 27, i32 55, i32 3, i32 29, ; 16..23
	i32 6, i32 53, i32 85, i32 77, i32 24, i32 38, i32 54, i32 98, ; 24..31
	i32 10, i32 51, i32 84, i32 138, i32 125, i32 24, i32 89, i32 58, ; 32..39
	i32 70, i32 136, i32 97, i32 19, i32 80, i32 46, i32 41, i32 64, ; 40..47
	i32 104, i32 42, i32 50, i32 48, i32 20, i32 23, i32 93, i32 41, ; 48..55
	i32 100, i32 16, i32 44, i32 110, i32 116, i32 31, i32 79, i32 52, ; 56..63
	i32 40, i32 128, i32 35, i32 119, i32 102, i32 101, i32 39, i32 42, ; 64..71
	i32 1, i32 96, i32 71, i32 38, i32 65, i32 121, i32 26, i32 137, ; 72..79
	i32 106, i32 82, i32 57, i32 50, i32 101, i32 43, i32 113, i32 109, ; 80..87
	i32 87, i32 111, i32 43, i32 88, i32 104, i32 103, i32 63, i32 32, ; 88..95
	i32 108, i32 61, i32 93, i32 81, i32 114, i32 8, i32 26, i32 47, ; 96..103
	i32 83, i32 80, i32 58, i32 68, i32 136, i32 76, i32 49, i32 40, ; 104..111
	i32 78, i32 75, i32 120, i32 143, i32 37, i32 49, i32 35, i32 110, ; 112..119
	i32 109, i32 2, i32 11, i32 124, i32 36, i32 129, i32 53, i32 135, ; 120..127
	i32 79, i32 33, i32 131, i32 9, i32 127, i32 14, i32 62, i32 92, ; 128..135
	i32 82, i32 6, i32 21, i32 73, i32 103, i32 9, i32 11, i32 91, ; 136..143
	i32 134, i32 33, i32 123, i32 95, i32 13, i32 18, i32 108, i32 54, ; 144..151
	i32 17, i32 144, i32 39, i32 64, i32 88, i32 22, i32 18, i32 61, ; 152..159
	i32 130, i32 118, i32 73, i32 142, i32 2, i32 36, i32 125, i32 68, ; 160..167
	i32 122, i32 102, i32 128, i32 66, i32 10, i32 112, i32 55, i32 0, ; 168..175
	i32 12, i32 32, i32 48, i32 107, i32 67, i32 94, i32 111, i32 15, ; 176..183
	i32 107, i32 78, i32 51, i32 100, i32 1, i32 7, i32 75, i32 25, ; 184..191
	i32 25, i32 139, i32 140, i32 30, i32 105, i32 47, i32 19, i32 29, ; 192..199
	i32 16, i32 74, i32 86, i32 69, i32 12, i32 59, i32 133, i32 60, ; 200..207
	i32 144, i32 126, i32 132, i32 72, i32 3, i32 105, i32 62, i32 117, ; 208..215
	i32 124, i32 56, i32 96, i32 129, i32 44, i32 5, i32 123, i32 74, ; 216..223
	i32 113, i32 59, i32 0, i32 89, i32 141, i32 94, i32 143, i32 81, ; 224..231
	i32 97, i32 46, i32 87, i32 5, i32 117, i32 67, i32 45, i32 133, ; 232..239
	i32 69, i32 15, i32 95, i32 127, i32 66, i32 37, i32 85, i32 34, ; 240..247
	i32 99, i32 115, i32 121, i32 141, i32 138, i32 34, i32 45, i32 126, ; 248..255
	i32 135, i32 63, i32 92, i32 27, i32 131, i32 23, i32 4, i32 31, ; 256..263
	i32 52, i32 90, i32 77, i32 20, i32 14, i32 139, i32 57, i32 86, ; 264..271
	i32 84, i32 17, i32 112, i32 30, i32 8, i32 122, i32 115, i32 134, ; 272..279
	i32 120, i32 119, i32 56, i32 90, i32 137, i32 72, i32 91, i32 140, ; 280..287
	i32 28, i32 106 ; 288..289
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
