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
using System.Windows.Threading;

namespace Launcher
{
    /// <summary>
    /// Interaction logic for MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        int imgIndex;

        public MainPage()
        {
            InitializeComponent();
            //Slider.Source = new BitmapImage(new Uri(@"pack://application:,,,/Images/Slider/SKYR34BG.png"));
            DispatcherTimerSample();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void downloadProgressBar_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {

        }

        public void DispatcherTimerSample()
        {
            InitializeComponent();
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(5000);
            timer.Tick += timer_Tick;
            timer.Start();
        }

        void timer_Tick(object sender, EventArgs e)
        {
            if (imgIndex >= 3) {
                imgIndex = 0;
            }
            switch (imgIndex) {
                case 0:
                    Slider.Opacity = 1;
                    Slider2.Opacity = 0;
                    Slider3.Opacity = 0;
                    break;
                case 1:
                    Slider.Opacity = 0;
                    Slider2.Opacity = 1;
                    Slider3.Opacity = 0;
                    break;
                case 2:
                    Slider.Opacity = 0;
                    Slider2.Opacity = 0;
                    Slider3.Opacity = 1;
                    break;
            }
            imgIndex++;
        }
    }
}
