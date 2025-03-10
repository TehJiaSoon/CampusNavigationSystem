using System;
using Xamarin.Forms;
using System.Data.SqlClient;
using CampusNavigationSystem.Helpers;
using CampusNavigationSystem.Models;
using System.Threading.Tasks;

namespace CampusNavigationSystem
{
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private async void OnLoginClicked(object sender, EventArgs e)
        {
            string identifier = UsernameEntry.Text;  // This will be either username or email
            string password = PasswordEntry.Text;

            // Check if login is successful
            bool isValid = await LoginUser(identifier, password);

            if (isValid)
            {
                // Set the logged-in identifier (username or email)
                App.CurrentUsername = identifier;
                await DisplayAlert("Success", "Login successful!", "OK");
                await Navigation.PushAsync(new MainPage());
            }
            else
            {
                await DisplayAlert("Error", "Invalid username/email or password", "OK");
            }
        }

        private async void OnRegisterTapped(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegistrationPage());
        }

        public async Task<bool> LoginUser(string identifier, string password)
        {
            // Get user by username or email
            var user = await App.Database.GetUserByUsernameOrEmailAsync(identifier, identifier); // Pass the identifier for both parameters

            if (user != null)
            {
                // Verify the entered password with the stored hash
                return PasswordHelper.VerifyPassword(password, user.PasswordHash);
            }
            else
            {
                return false; // User not found
            }
        }
        private async void OnForgetPasswordTapped(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ForgetPassword());
        }

    }
}