using System;
using Xamarin.Forms;
using CampusNavigationSystem.Helpers;
using CampusNavigationSystem.Data;
using CampusNavigationSystem.Models;

namespace CampusNavigationSystem
{
    public partial class ResetPassword : ContentPage
    {
        public ResetPassword()
        {
            InitializeComponent();
        }

        private async void OnResetPasswordClicked(object sender, EventArgs e)
        {
            string resetCode = ResetCodeEntry.Text?.Trim();
            string newPassword = NewPasswordEntry.Text;
            string confirmPassword = ConfirmPasswordEntry.Text;

            if (string.IsNullOrEmpty(resetCode) || string.IsNullOrEmpty(newPassword) || string.IsNullOrEmpty(confirmPassword))
            {
                await DisplayAlert("Error", "Please fill out all fields.", "OK");
                return;
            }

            if (newPassword != confirmPassword)
            {
                await DisplayAlert("Error", "Passwords do not match.", "OK");
                return;
            }

            // Verify the reset code
            var user = await App.Database.GetUserByResetTokenAsync(resetCode);
            if (user == null)
            {
                await DisplayAlert("Error", "Invalid or expired reset code. Please request a new one.", "OK");
                return;
            }

            // Hash the new password and update the user record
            string hashedPassword = PasswordHelper.HashPassword(newPassword);
            user.PasswordHash = hashedPassword;
            user.ResetToken = null; // Clear the reset token

            await App.Database.UpdateUserAsync(user);

            await DisplayAlert("Success", "Your password has been reset successfully.", "OK");
            await Navigation.PopToRootAsync(); // Go back to login page
        }
    }
}
