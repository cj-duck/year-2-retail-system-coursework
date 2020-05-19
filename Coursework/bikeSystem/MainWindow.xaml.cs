using Business;
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

namespace bikeSystem
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        // Create lists for the orders and the customers
        private CustomerList customers = new CustomerList();
        private OrderList orders = new OrderList();

        // Set first order number
        int firstOrderRef = 1;
        
        double totalCost;

        public MainWindow()
        {
            InitializeComponent();
            txtOrderNum.Text = firstOrderRef.ToString();
        }

        private void btnClearOrder_Click(object sender, RoutedEventArgs e)
        {
            // Clear all the entries and selections
            txtName.Clear();
            txtEmail.Clear();
            txtTelephone.Clear();
            txtAddress.Clear();
            cboFrame.SelectedIndex = -1;
            cboFrameColor.SelectedIndex = -1;
            cboGroupSet.SelectedIndex = -1;
            cboWheels.SelectedIndex = -1;
            cboFinishingSet.SelectedIndex = -1;
            chbWarranty.IsChecked = false;
            txtCost.Clear();
            dpDelivery.SelectedDate = null;
            txtDeposit.Clear();
            chbValidateDetails.IsChecked = false;
            chbDeposit.IsChecked = false;
            txtName.IsEnabled = true;
            txtEmail.IsEnabled = true;
            txtTelephone.IsEnabled = true;
            txtAddress.IsEnabled = true;
        }

        private void btnValidateDetails_Click(object sender, RoutedEventArgs e)
        {
            // Check there are no blanks
            if (txtName.Text.Length > 0 && txtEmail.Text.Length > 0 && txtTelephone.Text.Length > 0 && txtAddress.Text.Length > 0)
            {
                chbValidateDetails.IsChecked = true;
                txtName.IsEnabled = false;
                txtEmail.IsEnabled = false;
                txtTelephone.IsEnabled = false;
                txtAddress.IsEnabled = false;

                chbDeposit.IsEnabled = true;
            }
            else
            {
                MessageBox.Show("Details must not be blank!");
            }
        }

        private void btnCalc_Click(object sender, RoutedEventArgs e)
        {
            // Get slection and calculate costs
            int frameCost = cboFrame.SelectedIndex * 10;
            int colorCost = 30;
            int groupCost = cboGroupSet.SelectedIndex * 20;
            int wheelsCost = cboWheels.SelectedIndex * 20;
            int finishCost = cboFinishingSet.SelectedIndex * 20;
            int warrantyCost = 0;
            if (chbWarranty.IsChecked == true)
            {
                warrantyCost = 50;
            }

            totalCost = frameCost + colorCost + groupCost + wheelsCost + finishCost + warrantyCost + 100;
            string depositCost = (totalCost / 10).ToString("0.00");

            txtCost.Text = "£" + totalCost;
            txtDeposit.Text = "£" + depositCost;

            dpDelivery.SelectedDate = DateTime.Now;
            DateTime dt = new DateTime();
            dt = Convert.ToDateTime(dpDelivery.SelectedDate);
            dt = dt.AddDays(7);
            dpDelivery.SelectedDate = dt;
        }

        private void btnConfirm_Click(object sender, RoutedEventArgs e)
        {
            //  If details are validated and deposit is paid:
            if (chbValidateDetails.IsChecked == true && chbDeposit.IsChecked == true)
            {
                Customer newCustomer = new Customer();
                Order newOrder = new Order();
                   
                // Create new customer and order and add to corresponding list
                try
                {
                    newCustomer.customerRef = Convert.ToInt32(txtOrderNum.Text);
                    newCustomer.customerName = txtName.Text;
                    newCustomer.customerEmail = txtEmail.Text;
                    newCustomer.customerTelephone = Convert.ToInt32(txtTelephone.Text);
                    newCustomer.customerAddress = txtAddress.Text;

                    customers.addCustomer(newCustomer);
                    
                    newOrder.orderRef = Convert.ToInt32(txtOrderNum.Text);                   
                    newOrder.orderFrame = Convert.ToInt32(cboFrame.SelectedIndex);
                    newOrder.orderFrameColor = Convert.ToInt32(cboFrame.SelectedIndex);
                    newOrder.orderGroupset = Convert.ToInt32(cboGroupSet.SelectedIndex);
                    newOrder.orderFinishing = Convert.ToInt32(cboFinishingSet.SelectedIndex);
                    newOrder.orderWheels = Convert.ToInt32(cboWheels.SelectedIndex);
                    newOrder.orderWarranty = (bool)chbWarranty.IsChecked;                
                    newOrder.orderPrice = totalCost;
                    newOrder.orderDelivery = (DateTime)dpDelivery.SelectedDate;
                    
                    orders.addOrder(newOrder);
                    customers.addCustomer(newCustomer);

                    lbxOrders.Items.Add(txtOrderNum.Text);
                    firstOrderRef = firstOrderRef + 1;
                    txtOrderNum.Text = firstOrderRef.ToString();

                    txtName.Clear();
                    txtEmail.Clear();
                    txtTelephone.Clear();
                    txtAddress.Clear();
                    cboFrame.SelectedIndex = -1;
                    cboFrameColor.SelectedIndex = -1;
                    cboGroupSet.SelectedIndex = -1;
                    cboWheels.SelectedIndex = -1;
                    cboFinishingSet.SelectedIndex = -1;
                    chbWarranty.IsChecked = false;
                    txtCost.Clear();
                    dpDelivery.SelectedDate = null;
                    txtDeposit.Clear();
                    chbValidateDetails.IsChecked = false;
                    chbDeposit.IsChecked = false;
                    txtName.IsEnabled = true;
                    txtEmail.IsEnabled = true;
                    txtTelephone.IsEnabled = true;
                    txtAddress.IsEnabled = true;
                }
                catch
                {
                    MessageBox.Show("Erorr");
                }
            }
        }

        private void chbDeposit_Checked(object sender, RoutedEventArgs e)
        {
            btnConfirm.IsEnabled = true;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            // Find the order and customer
            int selectedOrder = Convert.ToInt32(lbxOrders.SelectedItem.ToString());
            Order foundOrder = new Order();
            foundOrder = orders.findOrder(selectedOrder);

            Customer foundCustomer = new Customer();

            // Display order details
            if(foundOrder.orderRef == selectedOrder)
            {
                int customerRef = Convert.ToInt32(foundOrder.orderRef);
                foundCustomer = customers.find(customerRef);
                txtViewRef.Text = foundOrder.orderRef.ToString();
                cboViewFrame.SelectedIndex = foundOrder.orderFrame;
                cboViewColor.SelectedIndex = foundOrder.orderFrameColor;
                cboViewGroupset.SelectedIndex = foundOrder.orderGroupset;
                cboViewWheels.SelectedIndex = foundOrder.orderWheels;
                cboViewSet.SelectedIndex = foundOrder.orderFinishing;
                chkViewWarranty.IsChecked = foundOrder.orderWarranty;
                chkViewDeposit.IsChecked = true;
                txtViewPrice.Text = foundOrder.orderPrice.ToString();
                txtTBP.Text = (foundOrder.orderPrice * 0.9).ToString();
                txtViewName.Text = foundCustomer.customerName;
                txtViewEmail.Text = foundCustomer.customerEmail;
                txtViewAddress.Text = foundCustomer.customerAddress;
                txtViewTele.Text = foundCustomer.customerTelephone.ToString();
            }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            int delOrderRef = Convert.ToInt32(txtViewRef.Text);
            orders.deleteOrder(delOrderRef);
            lbxOrders.Items.Remove(delOrderRef.ToString());

            txtViewRef.Clear();
            txtViewPrice.Clear();
            txtViewAddress.Clear();
            txtViewEmail.Clear();
            txtViewName.Clear();
            txtViewTele.Clear();
            txtTBP.Clear();
            cboViewColor.SelectedIndex = -1;
            cboViewFrame.SelectedIndex = -1;
            cboViewGroupset.SelectedIndex = -1;
            cboViewSet.SelectedIndex = -1;
            cboViewWheels.SelectedIndex = -1;
            cboWheels.SelectedIndex = -1;
            chkViewDeposit.IsChecked = false;
            chkViewWarranty.IsChecked = false;
        }
    }
}


