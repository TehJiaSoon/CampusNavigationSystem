using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using CampusNavigationSystem.Data;

namespace CampusNavigationSystem
{
    public partial class App : Application
    {
        private static DatabaseService _databaseService;
        public static string CurrentUsername { get; set; }
        // Singleton instance of DatabaseService
        public static DatabaseService Database
        {
            get
            {
                if (_databaseService == null)
                {
                    _databaseService = new DatabaseService();
                }
                return _databaseService;
            }
        }
        public App()
        {
            InitializeComponent();
            MainPage = new NavigationPage(new WelcomePage());
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
