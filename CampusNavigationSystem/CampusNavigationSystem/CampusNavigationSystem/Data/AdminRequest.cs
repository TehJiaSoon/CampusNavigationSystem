using SQLite;
using System;

namespace CampusNavigationSystem.Models
{
    public class AdminRequest
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public DateTime RequestDate { get; set; }
        public bool IsApproved { get; set; } = false; // Default to not approved
    }
}
