using SQLite;
using System;
using Xamarin.Forms;

public class User
{
    [PrimaryKey, AutoIncrement]
    public int Id { get; set; }
    public string Username { get; set; }
    public string Email { get; set; }
    public string PasswordHash { get; set; }
    public bool IsAdmin { get; set; } // New property to mark admin users

    // New fields for password reset
    public string ResetToken { get; set; }
    public DateTime? ResetTokenExpiration { get; set; }

    // Command to toggle admin privileges
    [Ignore] // Exclude from the database
    public Command<User> ToggleAdminPrivilegeCommand { get; set; }
}
