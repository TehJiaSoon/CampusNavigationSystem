using Xamarin.Forms;
using CampusNavigationSystem.Models;
using System.Collections.Generic;
using System.Threading.Tasks;
using System;

namespace CampusNavigationSystem
{
    public partial class AdminRequestPage : ContentPage
    {
        public AdminRequestPage()
        {
            InitializeComponent();
            LoadRequests();
        }

        private async void LoadRequests()
        {
            var requests = await App.Database.GetAdminRequestsAsync();
            RequestsListView.ItemsSource = requests;
        }

        private async void OnApproveClicked(object sender, EventArgs e)
        {
            if (sender is Button button && button.CommandParameter is int requestId)
            {
                await App.Database.ApproveAdminRequestAsync(requestId);
                await DisplayAlert("Success", "Admin privilege granted.", "OK");

                // Refresh the list
                LoadRequests();
            }
        }
    }
}
