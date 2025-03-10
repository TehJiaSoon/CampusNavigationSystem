using Xamarin.Forms;
using Xamarin.Essentials;
using System.Collections.Generic;
using System;

namespace CampusNavigationSystem
{
    public partial class ContactPage : ContentPage
    {
        public ContactPage()
        {
            InitializeComponent();
        }

        // Email button handler
        private async void OnEmailButtonClicked(object sender, EventArgs e)
        {
            try
            {
                var message = new EmailMessage
                {
                    Subject = "Inquiry about Campus Navigation System",
                    Body = "Hello, I would like to inquire about...",
                    To = new List<string> { "darrick7765@gmail.com" }
                };

                System.Diagnostics.Debug.WriteLine("Attempting to compose email...");
                await Email.ComposeAsync(message);
                System.Diagnostics.Debug.WriteLine("Email composed successfully.");
            }
            catch (FeatureNotSupportedException ex)
            {
                System.Diagnostics.Debug.WriteLine($"Feature not supported: {ex.Message}");
                await DisplayAlert("Error", "Email is not supported on this device.", "OK");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error sending email: {ex.Message}");
                await DisplayAlert("Error", $"Unable to send email: {ex.Message}", "OK");
            }
        }

        // Call button handler
        private void OnCallButtonClicked(object sender, EventArgs e)
        {
            try
            {
                string phoneNumber = "+60176206990"; // Replace with your number
                System.Diagnostics.Debug.WriteLine($"Attempting to call: {phoneNumber}");
                PhoneDialer.Open(phoneNumber);
                System.Diagnostics.Debug.WriteLine("Phone dialer opened successfully.");
            }
            catch (FeatureNotSupportedException ex)
            {
                System.Diagnostics.Debug.WriteLine($"Feature not supported: {ex.Message}");
                DisplayAlert("Error", "Phone calls are not supported on this device.", "OK");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error making phone call: {ex.Message}");
                DisplayAlert("Error", $"Unable to make a call: {ex.Message}", "OK");
            }
        }

    }
}
