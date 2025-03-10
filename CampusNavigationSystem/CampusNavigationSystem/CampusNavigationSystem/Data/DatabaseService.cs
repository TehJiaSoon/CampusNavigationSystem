using System.IO;
using System.Threading.Tasks;
using SQLite;
using Xamarin.Essentials;
using CampusNavigationSystem.Models; // Assuming your models are stored in a Models folder
using System.Collections.Generic;
using System;
using System.Linq;

namespace CampusNavigationSystem.Data
{
    public class DatabaseService
    {
        private readonly SQLiteAsyncConnection _database;

        public DatabaseService()
        {
            var dbPath = Path.Combine(FileSystem.AppDataDirectory, "CampusNavigation.db");
            _database = new SQLiteAsyncConnection(dbPath);

            // Initialize tables
            _database.CreateTableAsync<User>().Wait();
            _database.CreateTableAsync<Models.Location>().Wait();
            _database.CreateTableAsync<AdminRequest>().Wait(); // Create AdminRequest table
        }

        // Add an admin request
        public Task<int> AddAdminRequestAsync(AdminRequest request)
        {
            return _database.InsertAsync(request);
        }

        // Get all admin requests
        public Task<List<AdminRequest>> GetAdminRequestsAsync()
        {
            return _database.Table<AdminRequest>().ToListAsync();
        }
        // Approve an admin request
        public async Task ApproveAdminRequestAsync(int requestId)
        {
            var request = await _database.FindAsync<AdminRequest>(requestId);
            if (request != null)
            {
                request.IsApproved = true;
                await _database.UpdateAsync(request);

                // Update user to grant admin privileges
                var user = await _database.FindAsync<User>(request.UserId);
                if (user != null)
                {
                    user.IsAdmin = true;
                    await _database.UpdateAsync(user);
                }
            }
        }

        // User CRUD(Create, Read, Update, Delete) Operations

        // Add a new user
        public Task<int> AddUserAsync(User user)
        {
            return _database.InsertAsync(user);
        }

        // Optionally add methods to retrieve, update, and delete users
        public Task<User> GetUserByUsernameAsync(string username)
        {
            return _database.Table<User>().Where(u => u.Username == username).FirstOrDefaultAsync();
        }

        // Method to check if an email is registered
        public async Task<User> GetUserByEmailAsync(string email)
        {
            return await _database.Table<User>().FirstOrDefaultAsync(u => u.Email == email);
        }

        // Update an existing user
        public Task<int> UpdateUserAsync(User user)
        {
            return _database.UpdateAsync(user);
        }
        public async Task UpdateUserAsync2(User user)
        {
            await _database.UpdateAsync(user);
        }

        // Delete a user by ID
        public Task<int> DeleteUserAsync(int id)
        {
            return _database.DeleteAsync<User>(id);
        }

        // Location CRUD Operations

        // Add a new location
        public Task<int> AddLocationAsync(Models.Location location)
        {
            return _database.InsertAsync(location);
        }

        // Retrieve all locations
        public Task<List<Models.Location>> GetAllLocationsAsync()
        {
            return _database.Table<Models.Location>().ToListAsync();
        }

        // Update an existing location
        public Task<int> UpdateLocationAsync(Models.Location location)
        {
            return _database.UpdateAsync(location);
        }

        // Delete a location by ID
        public Task<int> DeleteLocationAsync(int id)
        {
            return _database.DeleteAsync<Models.Location>(id);
        }

        // Method to fetch all users
        public Task<List<User>> GetAllUsersAsync()
        {
            return _database.Table<User>().ToListAsync();
        }

        // Method to save a password reset token
        // Save the reset token
        public Task<int> SavePasswordResetTokenAsync(string email, string resetToken)
        {
            return _database.ExecuteAsync("UPDATE User SET ResetToken = ? WHERE Email = ?", resetToken, email);
        }

        // Retrieve user by reset token
        public Task<User> GetUserByResetTokenAsync(string resetToken)
        {
            return _database.Table<User>().Where(u => u.ResetToken == resetToken).FirstOrDefaultAsync();
        }
        public Task<User> GetUserByUsernameOrEmailAsync(string username, string email)
        {
            return _database.Table<User>()
                            .Where(u => u.Username == username || u.Email == email)
                            .FirstOrDefaultAsync();
        }
        public Task<User> GetUserByUsernameOrEmailAsync_identifier(string identifier)
        {
            return _database.Table<User>()
                     .Where(u => u.Username == identifier || u.Email == identifier)
                     .FirstOrDefaultAsync();
        }
        public async Task<int> DeleteUsersByEmailAsync(string email)
        {
            return await _database.Table<User>().DeleteAsync(u => u.Email == email);
        }
        public async Task<bool> DeleteAccountAsync(string identifier)
        {
            var user = await GetUserByUsernameOrEmailAsync_identifier(identifier);
            if (user != null)
            {
                await _database.DeleteAsync(user);
                return true; // Successfully deleted
            }
            return false; // User not found
        }


    }
}







