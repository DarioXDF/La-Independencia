using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net;
using System.Threading;
using System.ComponentModel;
using System.Windows.Threading;

namespace Launcher
{
    /// <summary>
    /// Interaction logic for MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {

        private static BackgroundWorker backgroundWorker;

        public MainPage()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            /*Microsoft.Win32.SaveFileDialog dlg = new Microsoft.Win32.SaveFileDialog();
            dlg.FileName = "myimage"; // Default file name
            dlg.DefaultExt = ".zip"; // Default file extension
            dlg.Filter = "Zip file (*.zip) | *.zip"; // Filter files by extension

            // Show save file dialog box
            Nullable<bool> result = dlg.ShowDialog();*/

            // Process save file dialog box results
            //if (result == true)
            //{

            //dlg.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            WebClient client = new WebClient();
            client.DownloadProgressChanged += new DownloadProgressChangedEventHandler(client_DownloadProgressChanged);
            client.DownloadFileCompleted += new AsyncCompletedEventHandler(client_DownloadFileCompleted);
            client.DownloadFileAsync(new Uri("https://github.com/DarioXDF/polygon-game-studio/archive/master.zip"), @"C:\Users\Crus0e\Desktop\LauncherDownload\master.zip");
            // Save document
            string filename = "master.zip";
        }
        private void client_DownloadFileCompleted(object sender, AsyncCompletedEventArgs e)
        {
            lblStatus.Content = "Complete!";
        }

        private void client_DownloadProgressChanged(object sender, DownloadProgressChangedEventArgs e)
        {
            downloadProgressBar.Maximum = 38530886;
            lblStatus.Content = e.BytesReceived / 1000000 + "mb / " + 38530886 / 1000000 + "mb";
            downloadProgressBar.Value = e.BytesReceived;
        }

    }
}
