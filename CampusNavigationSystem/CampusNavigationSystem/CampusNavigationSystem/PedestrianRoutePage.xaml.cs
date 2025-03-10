using Xamarin.Forms;
using Xamarin.Forms.Maps;
using System.Collections.Generic;
using System;
using Xamarin.Essentials;

namespace CampusNavigationSystem
{
    public partial class PedestrianRoutePage : ContentPage
    {
        public PedestrianRoutePage()
        {
            InitializeComponent();
            InitializePedestrianRoute();
        }
        public class CustomPin : Pin
        {
            public string PinColor { get; set; } // Add a property to define pin color
        }

        private void InitializePedestrianRoute()
        {
            // Define the starting and ending points of the route
            var startPosition = new Position(2.809525, 101.758673);
            var endPosition = new Position(2.814185715122707, 101.75824109561272);

            // Define the fixed pedestrian route
            var pedestrianRoute = new List<Position>
            {
                startPosition,
                new Position(2.811952, 101.758691),
                new Position(2.811950, 101.758531),
                new Position(2.812231, 101.758513),
                new Position(2.812279, 101.758420),
                new Position(2.812440, 101.758418),
                new Position(2.812448, 101.758231),
                new Position(2.812861, 101.75825),  // Footbridge near MPH
                new Position(2.813528, 101.758222), // Footbridge to Campus
                endPosition
            };

            // Add the polyline to represent the route
            var routeLine = new Polyline
            {
                StrokeColor = Color.Green,
                StrokeWidth = 10
            };

            foreach (var position in pedestrianRoute)
            {
                routeLine.Geopath.Add(position);
            }

            // Add the polyline to the map
            PedestrianMap.MapElements.Add(routeLine);

            // Set the map region to show the route
            var centerPosition = new Position(
                (startPosition.Latitude + endPosition.Latitude) / 2,
                (startPosition.Longitude + endPosition.Longitude) / 2
            );

            // Dynamically calculate the zoom level based on route distance
            double routeDistance = CalculateDistance(startPosition, endPosition);
            PedestrianMap.MoveToRegion(MapSpan.FromCenterAndRadius(
                centerPosition,
                Distance.FromMeters(routeDistance / 2) // Adjust the divisor to control zoom
            ));


            PedestrianMap.Pins.Add(new CustomPin
            {
                Label = "Footbridge Entrance",
                Address = "Entry point to the campus via footbridge",
                Position = new Position(2.812861, 101.75825),
                PinColor = "Yellow"
            });

            PedestrianMap.Pins.Add(new CustomPin
            {
                Label = "INTI International University Campus",
                Address = "Destination",
                Position = new Position(2.814185715122707, 101.75824109561272),
                PinColor = "Red"
            });

            PedestrianMap.Pins.Add(new CustomPin
            {
                Label = "MPH Multi-Purpose Hall",
                Address = "Turn Right In Front Of MPH",
                Position = new Position(2.812279, 101.758420),
                PinColor = "Blue"
            });

            PedestrianMap.Pins.Add(new CustomPin
            {
                Label = "Go To The Second Highest Level, You Would See Student Station",
                Address = "",
                Position = new Position(2.812448, 101.758231),
                PinColor = "Blue"
            });
            
            
        }
        private async void OnVirtualTourButtonClicked(object sender, EventArgs e)
        {
            string url = "https://newinti.edu.my/virtualtour/virtualtour.php?campus=nilai"; // Replace with the actual URL of the virtual tour
            if (Uri.IsWellFormedUriString(url, UriKind.Absolute))
            {
                await Launcher.OpenAsync(new Uri(url)); // Opens the URL in the default browser
            }
            else
            {
                await DisplayAlert("Error", "Invalid URL. Please try again later.", "OK");
            }
        }
        private void OnToggleMapTypeClicked(object sender, EventArgs e)
        {
            if (PedestrianMap.MapType == MapType.Street)
            {
                PedestrianMap.MapType = MapType.Satellite;
                ToggleMapTypeButton.Text = "Switch to Street View";
            }
            else
            {
                PedestrianMap.MapType = MapType.Street;
                ToggleMapTypeButton.Text = "Switch to Satellite View";
            }
        }
        private double CalculateDistance(Position start, Position end)
        {
            var earthRadiusKm = 6371.0;

            var dLat = DegreesToRadians(end.Latitude - start.Latitude);
            var dLon = DegreesToRadians(end.Longitude - start.Longitude);

            var lat1 = DegreesToRadians(start.Latitude);
            var lat2 = DegreesToRadians(end.Latitude);

            var a = Math.Sin(dLat / 2) * Math.Sin(dLat / 2) +
                    Math.Sin(dLon / 2) * Math.Sin(dLon / 2) * Math.Cos(lat1) * Math.Cos(lat2);
            var c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));
            return earthRadiusKm * c * 1000; // Convert to meters
        }

        private double DegreesToRadians(double degrees)
        {
            return degrees * Math.PI / 180;
        }
    }
}
