using System;
using Xamarin.Forms;

namespace CampusNavigationSystem
{
    public partial class WelcomePage : ContentPage
    {
        public WelcomePage()
        {
            InitializeComponent();
        }

        // Navigate to LoginPage
        private async void OnLoginClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new LoginPage());
        }

        // Navigate to RegistrationPage
        private async void OnRegisterClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegistrationPage());
        }
        private async void OnContactUsClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ContactPage());
        }
        private async void OnApplyAdminPrivilegeClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ApplyAdminPrivilegePage());
        }

    }
}
