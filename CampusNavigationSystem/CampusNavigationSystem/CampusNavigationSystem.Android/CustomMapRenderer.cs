using Android.Gms.Maps;
using Android.Gms.Maps.Model;
using CampusNavigationSystem;
using CampusNavigationSystem.Droid;
using Kotlin.Collections;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Forms.Maps.Android;
using Xamarin.Forms.Platform.Android;
using Android.Views;
using Android.Widget;
using AndroidX.Core.Content;
using Android;
using Android.Content.PM;
using Android.Graphics;
using static CampusNavigationSystem.PedestrianRoutePage;


[assembly: ExportRenderer(typeof(CustomMap), typeof(CustomMapRenderer))]
namespace CampusNavigationSystem.Droid
{
    public class CustomMapRenderer : MapRenderer, GoogleMap.IInfoWindowAdapter
    {
        private readonly Android.Content.Context _context;
        public CustomMapRenderer(Android.Content.Context context) : base(context)
        {
            _context = context;
        }
        protected override void OnMapReady(GoogleMap map)
        {
            base.OnMapReady(map);

            // Set the custom InfoWindowAdapter
            map.SetInfoWindowAdapter(this);

            // Enable user location
            if (ContextCompat.CheckSelfPermission(Context, Manifest.Permission.AccessFineLocation) == Permission.Granted)
            {
                map.MyLocationEnabled = true;
            }
        }

        protected override MarkerOptions CreateMarker(Pin pin)
        {
            var markerOptions = new MarkerOptions();
            markerOptions.SetPosition(new LatLng(pin.Position.Latitude, pin.Position.Longitude));
            markerOptions.SetTitle(pin.Label);
            markerOptions.SetSnippet(pin.Address);
            
            // Set marker color based on the label
            if (pin.Label == "INTI International Univeristy")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.INTI_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 150, 150, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Perpustakaan Tan Sri Abdul Majid， Library of INTI International Univeristy")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.library_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 90, 90, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Footbridge Entrance -> Campus (From Hostel Area)" || pin.Label == "Footbridge Entrance -> Hostel Area (From Campus)")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.footbridge_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 150, 150, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Tan Yew Sing Multi-Purpose Hall (MPH)")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.MPH);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 150, 150, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI IU Cafeteria")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.cafeteria_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 90, 130, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "ATM Maybank & ATM CIMB Bank")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.ATM_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 90, 90, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI IU Basketball Court")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.basketball_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 110, 110, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Address == "INTI IU Hostel Area")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.hostel_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 80, 80, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI College Nilai")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.INTI_college);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 250, 130, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI Hostel Mosque")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.mosque_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 200, 130, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Dining Hall")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.dining_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 110, 110, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI IU Sports Court")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.sports_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 200, 130, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI Campus Block A")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Campus_blockA);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 220, 220, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI Campus Block B")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Campus_blockB);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 220, 220, false); // Adjust size as     needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI Campus Block C")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Campus_blockC);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 220, 220, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI Campus Block D")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Campus_blockD);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 220, 220, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI Campus Block E")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Campus_blockE);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 90, 70, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Front Desk/Reception of INTI IU")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.FrontDesk_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 150, 150, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "SideWalk Cafe in INTI Campus/ Mini Stall")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.SideWalk_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 150, 150, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTI Campus Block LRC")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.LRC_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 130, 130, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "中间档（Middle-Restaurant) | Restoran Ka Yuen & Kedai Kopi Fatty Yang")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.middle_restaurant);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 130, 130, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Starz Valley Apartment")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.starzvalley_icon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 130, 130, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "7-11 Convenience Store")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.SevenEleven);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 130, 130, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "7-11 Cafe & Convenience Store")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.SevenEleven_Cafe);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 190, 190, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if(pin.Label == "KK Super Mart")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.KK_Mart);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 300, 300, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if(pin.Label == "Bluemoon Pizza Stall")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Bluemoon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 200, 200, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if(pin.Label == "Uncle Soon Fried Rice")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.UncleSoon);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 200, 200, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if(pin.Label == "蜀鱼川菜 Su Yie")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.SuYie);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 200, 200, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if(pin.Address == "Mamak Restaurants around INTI Campus")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.mamak);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 200, 200, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Nasi Lemak Stall")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.nasilemak);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 200, 200, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Faculty of Data Science and Information Technology(FDSIT Office)" || pin.Label == "Faculty of Business Office" || pin.Label == "Faculty of Liberal Arts")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.faculty);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 110, 110, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "OAR Office, Office of Admissions and Records (OAR) , INTI Student Related Office in Campus")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.OAR);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 90, 90, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "Student Station Centre, Inquiries Centre for INTI Students")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.Student_Centre);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 200, 200, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin.Label == "INTIMA Office, Student Government & Event Manager Office")
            {
                var originalBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.INTIMA);
                var resizedBitmap = Bitmap.CreateScaledBitmap(originalBitmap, 150, 150, false); // Adjust size as needed
                markerOptions.SetIcon(BitmapDescriptorFactory.FromBitmap(resizedBitmap));
            }
            else if (pin is CustomPin customPin && !string.IsNullOrEmpty(customPin.PinColor))
            {
                switch (customPin.PinColor.ToLower())
                {
                    case "red":
                        markerOptions.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueRed));
                        break;
                    case "green":
                        markerOptions.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueGreen));
                        break;
                    case "blue":
                        markerOptions.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueBlue));
                        break;
                    // Add more colors as needed
                    default:
                        markerOptions.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueYellow));
                        break;
                }
            }
            else
            {
                markerOptions.SetIcon(BitmapDescriptorFactory.DefaultMarker(BitmapDescriptorFactory.HueRed)); // Default color for others
            }

            return markerOptions;
        }

        public Android.Views.View GetInfoContents(Marker marker)
        {
            var inflater = LayoutInflater.From(_context);
            var view = inflater.Inflate(Resource.Layout.custom_info_window, null);

            var title = view.FindViewById<TextView>(Resource.Id.infoWindowTitle);
            var snippet = view.FindViewById<TextView>(Resource.Id.infoWindowSnippet);

            // Set title and snippet text
            title.Text = marker.Title;
            snippet.Text = marker.Snippet;

            // Set text colors programmatically
            title.SetTextColor(Android.Graphics.Color.ParseColor("#FF0000")); // Change to red as an example
            snippet.SetTextColor(Android.Graphics.Color.ParseColor("#555555")); // Dark gray

            return view;
        }
        public Android.Views.View GetInfoWindow(Marker marker)
        {
            // Use GetInfoContents for customization
            return null;
        }
    }
}
