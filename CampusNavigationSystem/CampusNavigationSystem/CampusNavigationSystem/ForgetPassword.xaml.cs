using System;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using CampusNavigationSystem.Data;
using CampusNavigationSystem.Models;

namespace CampusNavigationSystem
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ForgetPassword : ContentPage
    {
        public ForgetPassword()
        {
            InitializeComponent();
        }

        private async void OnSendEmailClicked(object sender, EventArgs e)
        {
            var email = EmailEntry.Text?.Trim();
            if (string.IsNullOrEmpty(email))
            {
                await DisplayAlert("Error", "Please enter a valid email address", "OK");
                return;
            }

            var user = await App.Database.GetUserByEmailAsync(email);
            if (user == null)
            {
                await DisplayAlert("Error", "This email is not registered", "OK");
                return;
            }

            // Generate a reset code (e.g., a 6-digit code)
            string resetCode = new Random().Next(100000, 999999).ToString();
            await App.Database.SavePasswordResetTokenAsync(email, resetCode);

            await SendResetEmail(email, resetCode);
            await DisplayAlert("Success", "Password reset email sent with reset code", "OK");
        }
        private async Task SendResetEmail(string email, string resetCode)
        {
            try
            {
                // Configure email details
                MailMessage mail = new MailMessage
                {
                    From = new MailAddress("yukiakiitsukasan@gmail.com"),
                    Subject = "Password Reset Code",
                    Body = $"Use this code to reset your password: {resetCode}"
                };
                mail.To.Add(email);

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587)
                {
                    Credentials = new NetworkCredential("yukiakiitsukasan@gmail.com", "kxem oadd zgcp drht"),
                    EnableSsl = true
                };

                await Task.Run(() => client.Send(mail));
                await DisplayAlert("Email Sent", "Please check your email for the reset code.", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Failed to send email: {ex.Message}", "OK");
            }
        }
        private async void OnNavigateToResetPasswordClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ResetPassword());
        }
    }
}