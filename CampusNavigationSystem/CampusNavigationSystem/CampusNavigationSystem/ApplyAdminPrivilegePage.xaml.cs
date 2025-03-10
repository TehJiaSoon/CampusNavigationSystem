using Xamarin.Forms;
using System.Threading.Tasks;
using CampusNavigationSystem.Models;
using System;

namespace CampusNavigationSystem
{
    public partial class ApplyAdminPrivilegePage : ContentPage
    {
        public ApplyAdminPrivilegePage()
        {
            InitializeComponent();
        }

        private async void OnSubmitApplicationClicked(object sender, EventArgs e)
        {
            string identifier = UsernameOrEmailEntry.Text?.Trim();
            if (string.IsNullOrEmpty(identifier))
            {
                await DisplayAlert("Error", "Please enter a valid username or email.", "OK");
                return;
            }

            // Fetch the user from the database
            var user = await App.Database.GetUserByUsernameOrEmailAsync(identifier, identifier);
            if (user == null)
            {
                await DisplayAlert("Error", "No account found with the given username or email.", "OK");
                return;
            }

            // Check if the user is already an admin
            if (user.IsAdmin)
            {
                await DisplayAlert("Info", "You already have admin privileges.", "OK");
                return;
            }

            // Process the application (e.g., store in a separate table or send a notification)
            await ProcessAdminRequestAsync(user);

            await DisplayAlert("Success", "Your request for admin privileges has been submitted. Please wait for approval.", "OK");
            await Navigation.PopAsync();
        }

        private async Task ProcessAdminRequestAsync(User user)
        {
            // Example: Adding the request details to the database
            var request = new AdminRequest
            {
                UserId = user.Id,
                Username = user.Username,
                Email = user.Email,
                RequestDate = DateTime.Now
            };

            await App.Database.AddAdminRequestAsync(request);
        }
    }
}
