using Xamarin.Forms;
using Xamarin.Forms.Maps;
using System;
using Newtonsoft.Json.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Xamarin.Essentials;

namespace CampusNavigationSystem
{
    public partial class MainPage : ContentPage
    {
        private Position? currentDestination = null; // Holds the active destination for navigation
        private List<Position> routeCoordinates = new List<Position>();
        private System.Timers.Timer locationTimer;
        private bool isRealTimeNavigationActive = true; // Default: active
        public MainPage()
        {
            InitializeComponent();
            InitializeMap();
        }

        private void InitializeMap()
        {
            // Define the default campus location
            var campusPosition = new Position(2.8139471170442976, 101.7582208852036);

            // Center the map on the campus location
            CampusMap.MoveToRegion(MapSpan.FromCenterAndRadius(campusPosition, Distance.FromKilometers(0.07)));

            // Add a marker (Pin) for the campus location
            var campusPin = new Pin
            {
                Label = "INTI International Univeristy",
                Address = "(Click This To Get Direction By Walking)",
                Type = PinType.Place,
                Position = campusPosition
            };
            campusPin.Clicked += OnPinClicked; // Attach click handler
            CampusMap.Pins.Add(campusPin);

            // Add a marker (Pin) for the library location
            var libraryPin = new Pin
            {
                Label = "Perpustakaan Tan Sri Abdul Majid， Library of INTI International Univeristy",
                Address = "Kolej Inti Malaysia, Bandar Baru Nilai, 71800 Nilai, Negeri Sembilan",
                Type = PinType.Place,
                Position = new Position(2.814923, 101.757957) // Replace with actual coordinates
            };
            libraryPin.Clicked += OnPinClicked; // Attach click handler
            CampusMap.Pins.Add(libraryPin);

            // Add a marker (Pin) for the library location
            var bridgePin_Hostel = new Pin
            {
                Label = "Footbridge Entrance -> Campus (From Hostel Area)",
                Address = "Footbridge is on student station (near MPH Tan Yew Sing Multi-Purpose Hall",
                Type = PinType.Place,
                Position = new Position(2.812861, 101.75825)
            };

            // Add a marker (Pin) for the library location
            var bridgePin_Campus = new Pin
            {
                Label = "Footbridge Entrance -> Hostel Area (From Campus)",
                Address = "Footbridge is on 3rd Floor in campus",
                Type = PinType.Place,
                Position = new Position(2.813528, 101.758222)
            };

            // Add a marker (Pin) for the library location
            var MPHPin = new Pin
            {
                Label = "Tan Yew Sing Multi-Purpose Hall (MPH)",
                Address = "INTI INTERNATIONAL UNIVERSITY",
                Type = PinType.Place,
                Position = new Position(2.812233189610501, 101.75852266107304)
            };

            // Add a marker (Pin) for the library location
            var cafeteriaPin = new Pin
            {
                Label = "INTI IU Cafeteria",
                Address = "INTI INTERNATIONAL UNIVERSITY",
                Type = PinType.Place,
                Position = new Position(2.812061, 101.758200)
            };

            // Add a marker (Pin) for the library location
            var ATMPin = new Pin
            {
                Label = "ATM Maybank & ATM CIMB Bank",
                Address = "One Level Down from Student Station Centre",
                Type = PinType.Place,
                Position = new Position(2.81275, 101.758167)
            };

            var basketballPin = new Pin
            {
                Label = "INTI IU Basketball Court",
                Address = "INTI Hostel Area, Beside Swimming Pool",
                Type = PinType.Place,
                Position = new Position(2.811521, 101.758469)
            };

            var hostelAPin = new Pin
            {
                Label = "INTI Hostel Block A",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.811708580185667, 101.7591337501334)
            };

            var collegePin = new Pin
            {
                Label = "INTI College Nilai",
                Address = "Behind INTI Hostel Block A",
                Type = PinType.Place,
                Position = new Position(2.8111944, 101.75897222222223)
            };

            var hostelBPin = new Pin
            {
                Label = "INTI Hostel Block B",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.8112587343584514, 101.75909311839995)
            };

            var hostelCPin = new Pin
            {
                Label = "INTI Hostel Block C",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.810970671773093, 101.75926045300436)
            };

            var hostelDPin = new Pin
            {
                Label = "INTI Hostel Block D",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.810398974575667, 101.75881946316629)
            };

            var hostelEPin = new Pin
            {
                Label = "INTI Hostel Block E",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.81005601011332, 101.75887596123508)
            };

            var hostelFPin = new Pin
            {
                Label = "INTI Hostel Block F",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.809680863763893, 101.75881097890006)
            };

            var hostelGPin = new Pin
            {
                Label = "INTI Hostel Block G",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.809380817444938, 101.75882975436217)
            };

            var hostelHPin = new Pin
            {
                Label = "INTI Hostel Block H",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.8090545367811357, 101.75885362669045)
            };

            var hostelJPin = new Pin
            {
                Label = "INTI Hostel Block J",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.808845575851782, 101.75931764882894)
            };

            var hostelKPin = new Pin
            {
                Label = "INTI Hostel Block K",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.8084464067865613, 101.75933105987482)
            };

            var hostelLPin = new Pin
            {
                Label = "INTI Hostel Block L",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.8083098999835148, 101.75936616903276)
            };

            var hostelMPin = new Pin
            {
                Label = "INTI Hostel Block M",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.8079201739628146, 101.7593413589745)
            };

            var hostelNPin = new Pin
            {
                Label = "INTI Hostel Block N",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.808806296425129, 101.75891022373186)
            };

            var hostelRPin = new Pin
            {
                Label = "INTI Hostel Block R",
                Address = "INTI IU Hostel Area",
                Type = PinType.Place,
                Position = new Position(2.808275637863284, 101.75885723036701)
            };

            var hostel_MosquePin = new Pin
            {
                Label = "INTI Hostel Mosque",
                Address = "Area in INTI IU Hostel",
                Type = PinType.Place,
                Position = new Position(2.8096529607745806, 101.75840080936054)
            };

            var diningPin = new Pin
            {
                Label = "Dining Hall",
                Address = "Recommended FoodCourt from INTI Hostel Residences",
                Type = PinType.Place,
                Position = new Position(2.8102916208595365, 101.75835432807996)
            };

            var INTI_courtPin = new Pin
            {
                Label = "INTI IU Sports Court",
                Address = "Behind INTI Campus Library",
                Type = PinType.Place,
                Position = new Position(2.8156971358253826, 101.7580153268646)
            };

            var Campus_blockD = new Pin
            {
                Label = "INTI Campus Block D",
                Address = "INTI Campus Area",
                Type = PinType.Place,
                Position = new Position(2.8136667, 101.75786111111111)
            };

            var Campus_blockC = new Pin
            {
                Label = "INTI Campus Block C",
                Address = "INTI Campus Area",
                Type = PinType.Place,
                Position = new Position(2.8136667, 101.75858333333333)
            };

            var Campus_blockA = new Pin
            {
                Label = "INTI Campus Block A",
                Address = "INTI Campus Area",
                Type = PinType.Place,
                Position = new Position(2.8143889, 101.75786111111111)
            };

            var Campus_blockB = new Pin
            {
                Label = "INTI Campus Block B",
                Address = "INTI Campus Area",
                Type = PinType.Place,
                Position = new Position(2.8143889, 101.75858333333333)
            };

            var Campus_blockE = new Pin
            {
                Label = "INTI Campus Block E",
                Address = "INTI Campus Area",
                Type = PinType.Place,
                Position = new Position(2.8139933814003273, 101.75895940053877)
            };

            var Front_Desk = new Pin
            {
                Label = "Front Desk/Reception of INTI IU",
                Address = "INTI Campus Area",
                Type = PinType.Place,
                Position = new Position(2.814, 101.7576663888889)
            };

            var LRC = new Pin
            {
                Label = "INTI Campus Block LRC",
                Address = "Above Library, INTI Campus Area",
                Type = PinType.Place,
                Position = new Position(2.8148889, 101.75822222222222)
            };

            var SideWalk = new Pin
            {
                Label = "SideWalk Cafe in INTI Campus/ Mini Stall",
                Address = "Lowest Level on Block A, INTI Campus Area",
                Type = PinType.Place,
                Position = new Position(2.8144167, 101.75805555555556)
            };

            var Middile_Restaurant = new Pin
            {
                Label = "中间档（Middle-Restaurant) | Restoran Ka Yuen & Kedai Kopi Fatty Yang",
                Address = "Recommended Kopitiam From INTI Students",
                Type = PinType.Place,
                Position = new Position(2.812792, 101.760286)
            };

            var Starz_Valley = new Pin
            {
                Label = "Starz Valley Apartment",
                Address = "Well-Known Apartment Nearby INTI IU Campus",
                Type = PinType.Place,
                Position = new Position(2.811372, 101.757387)
            };

            var Seven_Eleven = new Pin
            {
                Label = "7-11 Convenience Store",
                Address = "Convenience Store",
                Type = PinType.Place,
                Position = new Position(2.81278956067804, 101.75748470887623)
            };

            var SevenEleven_Cafe = new Pin
            {
                Label = "7-11 Cafe & Convenience Store",
                Address = "Convenience Store",
                Type = PinType.Place,
                Position = new Position(2.8127578876245076, 101.7608065551206)
            };

            var KK_Mart = new Pin
            {
                Label = "KK Super Mart",
                Address = "Convenience Store",
                Type = PinType.Place,
                Position = new Position(2.812832789542757, 101.76181834742988)
            };

            var Bluemoon = new Pin
            {
                Label = "Bluemoon Pizza Stall",
                Address = "Recommended to Valued Pizza Lover From INTI Students",
                Type = PinType.Place,
                Position = new Position(2.8104844503592745, 101.75991978490924)
            };

            var UncleSoon = new Pin
            {
                Label = "Uncle Soon Fried Rice",
                Address = "Recommended Egg Fried Rice From INTI Students",
                Type = PinType.Place,
                Position = new Position(2.8127817489566294, 101.76003533641482)
            };

            var SuYie = new Pin
            {
                Label = "蜀鱼川菜 Su Yie",
                Address = "Recommended Chinese Food, Sichuan and Fujian Cuisine From INTI Students",
                Type = PinType.Place,
                Position = new Position(2.8127723258645925, 101.76075725118437)
            };

            var Mamak1 = new Pin
            {
                Label = "HR One Bistro",
                Address = "Mamak Restaurants around INTI Campus",
                Type = PinType.Place,
                Position = new Position(2.811738105330893, 101.75763563290091)
            };

            var Mamak2 = new Pin
            {
                Label = "RESTORAN HAJI TAPAH NASI KANDAR",
                Address = "Mamak Restaurants around INTI Campus",
                Type = PinType.Place,
                Position = new Position(2.8122041348482703, 101.75761730944336)
            };

            var Mamak3 = new Pin
            {
                Label = "Nasi Kandar Mahmud Restaurant",
                Address = "Mamak Restaurants around INTI Campus",
                Type = PinType.Place,
                Position = new Position(2.8127603091272704, 101.75973720155937)
            };

            var nasilemak = new Pin
            {
                Label = "Nasi Lemak Stall",
                Address = "Nasi Lemak Stall around INTI Campus",
                Type = PinType.Place,
                Position = new Position(2.813069110969732, 101.75901321488911)
            };

            var faculty = new Pin
            {
                Label = "Faculty of Data Science and Information Technology(FDSIT Office)",
                Address = "3rd Level at Block A",
                Type = PinType.Place,
                Position = new Position(2.8140519633938714, 101.75789174048144)
            };

            var faculty2 = new Pin
            {
                Label = "Faculty of Business Office",
                Address = "3rd Level at Block B",
                Type = PinType.Place,
                Position = new Position(2.8141857693216488, 101.75854562937084)
            };

            var faculty3 = new Pin
            {
                Label = "Faculty of Liberal Arts",
                Address = "3rd Level at Block D",
                Type = PinType.Place,
                Position = new Position(2.813661696015133, 101.7580065697499)
            };

            var OAR = new Pin
            {
                Label = "OAR Office, Office of Admissions and Records (OAR) , INTI Student Related Office in Campus",
                Address = "2nd Level, Block C",
                Type = PinType.Place,
                Position = new Position(2.8138124554700483, 101.75788359734563)
            };

            var student_station = new Pin
            {
                Label = "Student Station Centre, Inquiries Centre for INTI Students",
                Address = "Nearby the Footbridge",
                Type = PinType.Place,
                Position = new Position(2.812634, 101.758365)
            };

            var INTIMA = new Pin
            {
                Label = "INTIMA Office, Student Government & Event Manager Office",
                Address = "Nearby the Footbridge",
                Type = PinType.Place,
                Position = new Position(2.812572, 101.758122)
            };

            CampusMap.Pins.Add(libraryPin);
            CampusMap.Pins.Add(campusPin);
            CampusMap.Pins.Add(bridgePin_Hostel);
            CampusMap.Pins.Add(bridgePin_Campus);
            CampusMap.Pins.Add(MPHPin);
            CampusMap.Pins.Add(cafeteriaPin);
            CampusMap.Pins.Add(ATMPin);
            CampusMap.Pins.Add(basketballPin);
            CampusMap.Pins.Add(hostelAPin);
            CampusMap.Pins.Add(collegePin);
            CampusMap.Pins.Add(hostelBPin);
            CampusMap.Pins.Add(hostelCPin);
            CampusMap.Pins.Add(hostelDPin);
            CampusMap.Pins.Add(hostelEPin);
            CampusMap.Pins.Add(hostelFPin);
            CampusMap.Pins.Add(hostelGPin);
            CampusMap.Pins.Add(hostelHPin);
            CampusMap.Pins.Add(hostelJPin);
            CampusMap.Pins.Add(hostelKPin);
            CampusMap.Pins.Add(hostelLPin);
            CampusMap.Pins.Add(hostelMPin);
            CampusMap.Pins.Add(hostelNPin);
            CampusMap.Pins.Add(hostelRPin);
            CampusMap.Pins.Add(hostel_MosquePin);
            CampusMap.Pins.Add(diningPin);
            CampusMap.Pins.Add(INTI_courtPin);
            CampusMap.Pins.Add(Campus_blockA);
            CampusMap.Pins.Add(Campus_blockB);
            CampusMap.Pins.Add(Campus_blockC);
            CampusMap.Pins.Add(Campus_blockD);
            CampusMap.Pins.Add(Campus_blockE);
            CampusMap.Pins.Add(Front_Desk);
            CampusMap.Pins.Add(SideWalk);
            CampusMap.Pins.Add(LRC);
            CampusMap.Pins.Add(Middile_Restaurant);
            CampusMap.Pins.Add(Seven_Eleven);
            CampusMap.Pins.Add(SevenEleven_Cafe);
            CampusMap.Pins.Add(Starz_Valley);
            CampusMap.Pins.Add(KK_Mart);
            CampusMap.Pins.Add(Bluemoon);
            CampusMap.Pins.Add(UncleSoon);
            CampusMap.Pins.Add(SuYie);
            CampusMap.Pins.Add(Mamak1);
            CampusMap.Pins.Add(Mamak2);
            CampusMap.Pins.Add(Mamak3);
            CampusMap.Pins.Add(nasilemak);
            CampusMap.Pins.Add(faculty);
            CampusMap.Pins.Add(faculty2);
            CampusMap.Pins.Add(OAR);
            CampusMap.Pins.Add(student_station);
            CampusMap.Pins.Add(INTIMA);
        }

        private async void OnGetCampusDirectionsClicked(object sender, EventArgs e)
        {
            isRealTimeNavigationActive = true; // Enable real-time tracking
            // Set the fixed campus destination and start real-time navigation
            currentDestination = new Position(2.814185715122707, 101.75824109561272);
            await StartRealTimeNavigation();  // Call this only after setting currentDestination
        }

        private async void OnGetCustomDirectionsClicked(object sender, EventArgs e)
        {
            string destination = DestinationEntry.Text;
            if (string.IsNullOrWhiteSpace(destination))
            {
                await DisplayAlert("Input Error", "Please enter a destination", "OK");
                return;
            }

            Position? destinationPosition = await GetCoordinatesFromAddress(destination);
            if (destinationPosition == null)
            {
                await DisplayAlert("Location Error", "Unable to find the destination. Please try again.", "OK");
                return;
            }

            // Set current destination and start real-time navigation
            currentDestination = destinationPosition;
            await StartRealTimeNavigation();  // Call this only after setting currentDestination
        }

        private async Task<Position?> GetCoordinatesFromAddress(string address)
        {
            try
            {
                string apiKey = "AIzaSyDHapPHb80r4eSPuC6Q9o9ECOP8FcoE9fo"; // Replace with your actual API key
                string url = $"https://maps.googleapis.com/maps/api/geocode/json?address={Uri.EscapeDataString(address)}&key={apiKey}";

                using (var httpClient = new HttpClient())
                {
                    var response = await httpClient.GetStringAsync(url);
                    var json = JObject.Parse(response);

                    if (json["status"].ToString() == "OK")
                    {
                        var location = json["results"][0]["geometry"]["location"];
                        double lat = (double)location["lat"];
                        double lng = (double)location["lng"];
                        return new Position(lat, lng);
                    }
                    else
                    {
                        await DisplayAlert("Error", "Location not found or API issue", "OK");
                        return null;
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An error occurred: {ex.Message}", "OK");
                return null;
            }
        }


        private void OnToggleMapTypeClicked(object sender, EventArgs e)
        {
            if (CampusMap.MapType == MapType.Street)
            {
                CampusMap.MapType = MapType.Satellite;
                ToggleMapTypeButton.Text = "Switch to Street View";
            }
            else
            {
                CampusMap.MapType = MapType.Street;
                ToggleMapTypeButton.Text = "Switch to Satellite View";
            }
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            // Call the async method without blocking
            _ = StartRealTimeNavigationAsync();
            var loggedInUser = await App.Database.GetUserByUsernameOrEmailAsync_identifier(App.CurrentUsername);
            if (loggedInUser != null && loggedInUser.IsAdmin)
            {
                AdminPanelButton.IsVisible = true;
            }
            else
            {
                AdminPanelButton.IsVisible = false; // Ensure it's hidden if not an admin
            }
        }   

        private async Task StartRealTimeNavigationAsync()
        {
            if (currentDestination.HasValue)
            {
                await StartRealTimeNavigation();
            }
        }

        private async Task StartRealTimeNavigation()
        {
            if (currentDestination == null)
            {
                await DisplayAlert("Destination Error", "No destination selected", "OK");
                return;
            }

            while (isRealTimeNavigationActive)
            {
                var location = await Xamarin.Essentials.Geolocation.GetLastKnownLocationAsync();
                if (location != null)
                {
                    Position currentPosition = new Position(location.Latitude, location.Longitude);

                    // Calculate distance to current destination
                    double distanceToDestination = GetDistanceInMeters(currentPosition, currentDestination.Value);
                    if (distanceToDestination < 20) // Stop updating once close to destination
                    {
                        await DisplayAlert("Arrived", "You have arrived at your destination", "OK");
                        break;
                    }

                    // Clear previous route on the map
                    CampusMap.MapElements.Clear();

                    // Fetch and draw the updated route from current position to destination
                    await GetDirectionsAsync(currentPosition, currentDestination.Value);
                }

                await Task.Delay(5000); // Delay to reduce the number of updates
            }
        }


        private async Task CheckLocationAsync()
        {
            var location = await Geolocation.GetLastKnownLocationAsync();
            if (location != null)
            {
                Position userPosition = new Position(location.Latitude, location.Longitude);
                double distanceFromRoute = CalculateDistanceFromRoute(userPosition);

                // Re-route if the user is 50+ meters off the route
                if (distanceFromRoute > 50)
                {
                    await RerouteToDestination(userPosition);
                }
            }
        }
        private double CalculateDistanceFromRoute(Position currentLocation)
        {
            double shortestDistance = double.MaxValue;

            foreach (var routePoint in routeCoordinates)
            {
                double distance = GetDistanceInMeters(currentLocation, routePoint);
                if (distance < shortestDistance)
                {
                    shortestDistance = distance;
                }
            }

            return shortestDistance;
        }
        private double GetDistanceInMeters(Position pos1, Position pos2)
        {
            var earthRadiusKm = 6371.0;
            var dLat = DegreesToRadians(pos2.Latitude - pos1.Latitude);
            var dLon = DegreesToRadians(pos2.Longitude - pos1.Longitude);
            var lat1 = DegreesToRadians(pos1.Latitude);
            var lat2 = DegreesToRadians(pos2.Latitude);

            var a = Math.Sin(dLat / 2) * Math.Sin(dLat / 2) +
                    Math.Sin(dLon / 2) * Math.Sin(dLon / 2) * Math.Cos(lat1) * Math.Cos(lat2);
            var c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));
            return earthRadiusKm * c * 1000; // Convert to meters
        }

        private double DegreesToRadians(double degrees)
        {
            return degrees * Math.PI / 180;
        }
        private async Task RerouteToDestination(Position currentLocation)
        {
            Position destinationPosition = new Position(2.814185715122707, 101.75824109561272); // Update as needed

            // Fetch new route from current location to destination
            await GetDirectionsAsync(currentLocation, destinationPosition);

            // Clear only the previous route line
            CampusMap.MapElements.Clear();
            DrawRoute(routeCoordinates);
        }

        private async Task GetDirectionsAsync(Position origin, Position destination)
        {
            string apiKey = "AIzaSyDHapPHb80r4eSPuC6Q9o9ECOP8FcoE9fo"; // Replace with actual API key
            string url = $"https://maps.googleapis.com/maps/api/directions/json?origin={origin.Latitude},{origin.Longitude}&destination={destination.Latitude},{destination.Longitude}&key={apiKey}";

            using (var httpClient = new HttpClient())
            {
                var response = await httpClient.GetStringAsync(url);
                var json = JObject.Parse(response);

                if (json["status"].ToString() == "OK")
                {
                    var points = json["routes"][0]["overview_polyline"]["points"].ToString();
                    var routeCoordinates = DecodePolyline(points);

                    DrawRoute(routeCoordinates);
                }
                else
                {
                    await DisplayAlert("Directions Error", "Unable to fetch directions", "OK");
                }
            }
        }
        private List<Position> DecodePolyline(string encodedPoints)
        {
            var poly = new List<Position>();
            if (string.IsNullOrWhiteSpace(encodedPoints)) return poly;

            int index = 0, lat = 0, lng = 0;
            while (index < encodedPoints.Length)
            {
                int b, shift = 0, result = 0;
                do
                {
                    b = encodedPoints[index++] - 63;
                    result |= (b & 0x1f) << shift;
                    shift += 5;
                } while (b >= 0x20);
                int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
                lat += dlat;

                shift = 0;
                result = 0;
                do
                {
                    b = encodedPoints[index++] - 63;
                    result |= (b & 0x1f) << shift;
                    shift += 5;
                } while (b >= 0x20);
                int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
                lng += dlng;

                Position p = new Position((lat / 1E5), (lng / 1E5));
                poly.Add(p);
            }
            return poly;
        }
        private void DrawRoute(List<Position> routeCoordinates)
        {
            // Clear any existing routes
            CampusMap.MapElements.Clear();

            // Customize the polyline appearance
            var routeLine = new Polyline
            {
                StrokeColor = Color.FromHex("#FF0000"), // Custom color (Orange-ish)
                StrokeWidth = 8 // Increase width for better visibility
            };


            // Add coordinates to the polyline
            foreach (var position in routeCoordinates)
            {
                routeLine.Geopath.Add(position);
            }

            // Add the customized polyline to the map
            CampusMap.MapElements.Add(routeLine);
        }
        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            locationTimer?.Stop();
        }
        private async void OnAdminPanelClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new AdminPage());
        }
        private async void OnPinClicked(object sender, EventArgs e)
        {
            if (sender is Pin clickedPin)
            {
                bool startNavigation = await DisplayAlert(
                    $"Navigate to {clickedPin.Label}",
                    "Would you like to get WALKING directions to this location?",
                    "Yes",
                    "No"
                );

                if (startNavigation)
                {
                    await NavigateToPin(clickedPin.Position);
                }
            }
        }
        private async Task NavigateToPin(Position destinationPosition)
        {
            // Disable real-time navigation
            isRealTimeNavigationActive = false;

            // Get user's current location
            var userLocation = await GetCurrentLocationAsync();
            if (userLocation == default)
            {
                await DisplayAlert("Location Error", "Unable to fetch your location", "OK");
                return;
            }

            // Draw the route
            CampusMap.MapElements.Clear(); // Clear existing routes
            var walkingRoute = new List<Position>
            {
                userLocation,
                new Position(2.812861, 101.75825),  // Example waypoint: Footbridge
                new Position(2.813528, 101.758222), // Example waypoint: Footbridge
                destinationPosition                 // Target destination
            };

            var routeLine = new Polyline
            {
                StrokeColor = Color.Green, // Green for walking
                StrokeWidth = 5
            };

            foreach (var position in walkingRoute)
            {
                routeLine.Geopath.Add(position);
            }

            CampusMap.MapElements.Add(routeLine);

            await DisplayAlert("Navigation Started", "Follow the green path to your destination.", "OK");
        }
        private async Task<Position> GetCurrentLocationAsync()
        {
            try
            {
                var location = await Xamarin.Essentials.Geolocation.GetLastKnownLocationAsync();
                if (location != null)
                {
                    return new Position(location.Latitude, location.Longitude);
                }
                else
                {
                    await DisplayAlert("Error", "Could not fetch current location", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An error occurred: {ex.Message}", "OK");
            }

            return default;
        }
        private async void OnPedestrianRouteClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PedestrianRoutePage());
        }


    }
}
