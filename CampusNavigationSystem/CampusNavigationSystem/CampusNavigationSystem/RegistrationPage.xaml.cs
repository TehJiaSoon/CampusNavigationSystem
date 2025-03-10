using System;
using Xamarin.Forms;
using System.Data.SqlClient;
using CampusNavigationSystem.Helpers;
using System.Threading.Tasks;
using CampusNavigationSystem.Models;

namespace CampusNavigationSystem
{
    public partial class RegistrationPage : ContentPage
    {
        public RegistrationPage()
        {
            InitializeComponent();
        }

        private async void OnRegisterClicked(object sender, EventArgs e)
        {
            string email = EmailEntry.Text?.Trim();
            string username = UserNameEntry.Text?.Trim();
            string password = PasswordEntry.Text?.Trim();
            string confirmPassword = ConfirmPasswordEntry.Text?.Trim();

            // Validate email
            if (!IsValidEmail(email))
            {
                await DisplayAlert("Invalid Email", "Please enter a valid Gmail or INTI Campus email address", "OK");
                return;
            }

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            {
                await DisplayAlert("Error", "All fields are required.", "OK");
                return;
            }

            if (password != confirmPassword)
            {
                await DisplayAlert("Error", "Passwords do not match", "OK");
                return;
            }

            // Check if the email already exists
            var existingUser = await App.Database.GetUserByUsernameOrEmailAsync(username, email);
            if (existingUser != null)
            {
                if (existingUser.Username == username)
                {
                    await DisplayAlert("Error", "This username is already taken. Please choose a different one.", "OK");
                }
                else if (existingUser.Email == email)
                {
                    await DisplayAlert("Error", "This email is already registered. Please use a different email.", "OK");
                }
                return;
            }

            // Register the new user
            var newUser = new User
            {
                Username = username,
                Email = email,
                PasswordHash = PasswordHelper.HashPassword(password)
            };

            await App.Database.AddUserAsync(newUser);
            await DisplayAlert("Registration", "User registered successfully!", "OK");
            await Navigation.PopAsync();
        }

        private async void OnLoginTapped(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }
        private bool IsValidEmail(string email)
        {
            // Regular expression for validating Gmail and INTI Campus emails
            string emailPattern = @"^[a-zA-Z0-9._%+-]+@(gmail\.com|student\.newinti\.edu\.my)$";
            return System.Text.RegularExpressions.Regex.IsMatch(email, emailPattern);
        }

    }
}