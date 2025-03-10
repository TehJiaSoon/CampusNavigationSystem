using Xamarin.Forms;
using System.Collections.Generic;
using CampusNavigationSystem.Models;
using System;
using System.Threading.Tasks;
using System.Linq;

namespace CampusNavigationSystem
{
    public partial class AdminPage : ContentPage
    {
        private List<User> allUsers; // Holds the complete user list
        public AdminPage()
        {
            InitializeComponent();
            LoadData();
        }
        private async void OnSearchTextChanged(object sender, TextChangedEventArgs e)
        {
            // Ensure that the user list has been loaded before attempting to filter
            if (allUsers == null || !allUsers.Any())
            {
                // Reload the user data if it's not initialized
                await LoadUserDataAsync();
            }

            string searchText = e.NewTextValue?.ToLower() ?? string.Empty;

            // Filter the user list based on the search text
            var filteredUsers = allUsers.Where(u =>
                (!string.IsNullOrEmpty(u.Username) && u.Username.ToLower().Contains(searchText)) ||
                (!string.IsNullOrEmpty(u.Email) && u.Email.ToLower().Contains(searchText))).ToList();

            UsersListView.ItemsSource = filteredUsers;
        }
        private async void LoadData()
        {
            allUsers = await App.Database.GetAllUsersAsync(); // Fetch all users
            UsersListView.ItemsSource = allUsers; // Display all users initially
            var users = await App.Database.GetAllUsersAsync();
            foreach (var user in users)
            {
                // Assign a command to toggle admin privileges
                user.ToggleAdminPrivilegeCommand = new Command<User>(async (u) => await ToggleAdminPrivilegeAsync(u));
            }
            UsersListView.ItemsSource = users;
        }
        private async Task ToggleAdminPrivilegeAsync(User user)
        {
            if (user == null)
            {
                await DisplayAlert("Error", "User not found", "OK");
                return;
            }

            // Toggle the IsAdmin property
            user.IsAdmin = !user.IsAdmin;

            // Update the user in the database
            await App.Database.UpdateUserAsync2(user);

            // Refresh the data in the ListView
            await LoadUserDataAsync();

            await DisplayAlert("Success", $"Admin privileges for '{user.Username}' updated to '{user.IsAdmin}'.", "OK");
        }

        private async void OnDeleteAccountClicked(object sender, EventArgs e)
        {
            string identifier = IdentifierEntry.Text?.Trim();
            if (string.IsNullOrEmpty(identifier))
            {
                await DisplayAlert("Error", "Please enter a valid username or email.", "OK");
                return;
            }

            // Delete the account
            bool isDeleted = await App.Database.DeleteAccountAsync(identifier);

            if (isDeleted)
            {
                await DisplayAlert("Success", $"Account with identifier '{identifier}' has been deleted.", "OK");
            }
            else
            {
                await DisplayAlert("Error", $"No account found with identifier '{identifier}'.", "OK");
            }

            // Refresh the user list to reflect the changes
            await LoadUserDataAsync();
        }
        private async Task LoadUserDataAsync()
        {
            var users = await App.Database.GetAllUsersAsync();
            foreach (var user in users)
            {
                user.ToggleAdminPrivilegeCommand = new Command<User>(async (u) => await ToggleAdminPrivilegeAsync(u));
            }
            UsersListView.ItemsSource = users;
        }
        private async void OnApplyAdminRequestPageClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new AdminRequestPage());
        }
    }
}
