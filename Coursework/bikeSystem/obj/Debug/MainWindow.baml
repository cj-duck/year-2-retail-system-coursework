   M S B A M L   `   `   `  ����E  AbikeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:bikeSystem
bikeSystem  5   	       bikeSystem.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:bikeSystem     5   	     � Title$(  "SJC Bikes Ltd - Custom Bike System��5   	   $��441.346��64   $��839.423��6E   .��5	      � .+�5
   
   �� -   5         ��Name$ 
tabControl��5
      $
��Left=�6)   $	��410��6D   $	��Top=�6Q   $	��821��6i   .@�5      �� $��Orders��6   .��5      � ���	#FFE5E5E5$��0,0,0,2q�6.    � ColumnDefinitions 5      �� 5      $
��103* �6+   �� 5      $
��712* �6+   .+�5      �� -   5         ��Name$ 	lbxOrders��5      $
��Left=�61   $	��317��6L   $��	10,29,0,0q�6Y   $	��Top=�6l   $	��188��6�   $��2��6�   5      �� 5      -   5         ��Name$ label��5      $��
Order List��6+   $
��Left=�6@   $��10,3,0,0q�6[   $	��Top=�6m   $
��Bold"�6�   �� 5      -   5         ��Name$ button��5      $��View Selected Order��6-   $
��Left=�6K   $��
10,351,0,0q�6f   $	��Top=�6z   $	��188��6�   $��2��6�   6�   �� 5      -   5        $ label1��5      $��	Order Ref��6,   $
��Left=�6@   $��
110,32,0,0q�6[   $	��Top=�6o   $��1��6�   �� 5      -   5         ��Name$ 
txtViewRef��5      $
��Left=�62   $��23��6M   $��
278,37,0,0q�6Y    �� TextWrapping$
 Wrap=�6m   $	��Top=�6�   $	��120��6�   {�.  $��1��6�   �� 5      -   5        $ label2��5      $��
Frame Size��6,   $
��Left=�6A   $��
110,63,0,0q�6\   $	��Top=�6p   $��1��6�   �� 5      -   5        $ label2_Copy��5      $��Frame Colour��61   $
��Left=�6H   $��
110,94,0,0q�6c   $	��Top=�6w   $��1��6�   �� 5      -	   5        $ label2_Copy1��5      $��Groupset��62   $
��Left=�6E   $��110,125,0,0q�6`   $	��Top=�6u   $��1��6�   �� 5      -
   5        $ label2_Copy2��5      $��Wheels��62   $
��Left=�6C   $��110,156,0,0q�6^   $	��Top=�6s   $��1��6�   �� 5      -   5        $ label2_Copy3��5      $��Finishing Set��62   $
��Left=�6J   $��110,187,0,0q�6e   $	��Top=�6z   $��1��6�   �� 5      -   5        $ label2_Copy4��5      $��Price��62   $
��Left=�6B   $��110,248,0,0q�6]   $	��Top=�6r   $��1��6�   �� 5      -   5        $ label2_Copy5��5      $��Deposit Paid��62   $
��Left=�6I   $��110,279,0,0q�6d   $	��Top=�6y   $��1��6�   �� 5      -   5        $ label2_Copy6��5      $��To be paid on collection��62   $
��Left=�6U   $��110,310,0,0q�6p   $	��Top=�6�   $��1��6�   �� 5      -   5        $ label2_Copy7��5      $��Order Status��62   $
��Left=�6I   $��110,341,0,0q�6d   $	��Top=�6y   $��1��6�   �� 5       -   5        $ txtViewPrice��5       $
��Left=�64   $��23��6O   $��278,252,0,0q�6[   $
 Wrap=�6p   $	��Top=�6�   $	��120��6�   {�.  $��1��6�   �� 5!      -   5        $ txtTBP��5!      $
��Left=�6.   $��23��6I   $��278,314,0,0q�6U   $
 Wrap=�6j   $	��Top=�6~   $	��120��6�   {�.  $��1��6�   �� 5"      -   5         ��Name$ chkViewDeposit��5"      $�� ��67   $
��Left=�6B   $��278,285,0,0q�6]   $	��Top=�6r   {�.  $��1��6�   �� 5#      -   5        $ label3��5#      $��In Production��6,   $
��Left=�6D   $��278,341,0,0q�6_   $	��Top=�6t   $
��Bold"�6�   $��1��6�   �� 5$      -   5        $ button1��5$      $+��%Cancel Order (Requires Manager Login)��6.   $
��Left=�6^   $��448,351,0,0q�6y   $	��Top=�6�   $	��233��6�   $��1��6�   6�   �� 5%      -   5        $ label4��5%      $��Order Details��6,   $
��Left=�6D   $��	110,3,0,0q�6_   $	��Top=�6r   $
��Bold"�6�   $��1��6�   �� 5&      -   5        $ label4_Copy��5&      $��Customer Details��61   $
��Left=�6L   $��	412,3,0,0q�6g   $	��Top=�6z   $
��Bold"�6�   $��1��6�   �� 5'      -   5        $ label5��5'      $
��Name��6,   $
��Left=�6;   $��
412,32,0,0q�6V   $	��Top=�6j   $��1��6�   �� 5(      -   5        $ label6��5(      $��Email��6,   $
��Left=�6<   $��
412,63,0,0q�6W   $	��Top=�6k   $��1��6�   �� 5)      -   5        $ label7��5)      $��	Telephone��6,   $
��Left=�6@   $��
412,94,0,0q�6[   $	��Top=�6o   $��1��6�   �� 5*      -   5        $ label7_Copy��5*      $��Address��61   $
��Left=�6C   $��412,125,0,0q�6^   $	��Top=�6s   $��1��6�   �� 5+      -   5        $ txtViewName��5+      $
��Left=�63   $��23��6N   $��
518,36,0,0q�6Z   $
 Wrap=�6n   $	��Top=�6�   $	��163��6�   {�.  $��1��6�   �� 5,      -   5        $ txtViewEmail��5,      $
��Left=�64   $��23��6O   $��
518,70,0,0q�6[   $
 Wrap=�6o   $	��Top=�6�   $	��163��6�   {�.  $��1��6�   �� 5-      -   5        $ txtViewTele��5-      $
��Left=�63   $��23��6N   $��
518,98,0,0q�6Z   $
 Wrap=�6n   $	��Top=�6�   $	��163��6�   {�.  $��1��6�   �� 5.      -   5        $ txtViewAddress��5.      $
��Left=�66   $	��115��6Q   $��518,129,0,0q�6^   $
 Wrap=�6s   $	��Top=�6�   $	��163��6�   {�.  $��1��6�   �� 5/      -   5        $ label9��5/      $��Extended Warranty��6,   $
��Left=�6H   $��110,218,0,0q�6c   $	��Top=�6x   $��1��6�   �� 50      -    5        $ chkViewWarranty��50      $�� ��68   $
��Left=�6C   $��278,225,0,0q�6^   $	��Top=�6s   {�.  $��1��6�   �� 51      -!   5        	 ��Name$	 cboViewFrame��51      $��1��65   $
��Left=�6E   $��
278,71,0,0q�6`   $	��Top=�6t   $	��120��6�   {�.  .@�52      �� .��6'   
XX-Small61   �� 53      .��6'   	X-Small60   �� 54      .��6'   Small6.   �� 55      .��6'   Medium6/   �� 56      .��6'   Large6.   �� 57      .��6'   	X-Large60   �� 58      .��6'   
XX-large61   59      �� 5:      -"   5        $	 cboViewColor��5:      $��1��65   $
��Left=�6E   $��
278,99,0,0q�6`   $	��Top=�6t   $	��120��6�   {�.  .@�5;      �� .��6'   Black6.   �� 5<      .��6'   White6.   �� 5=      .��6'   Red6,   �� 5>      .��6'   Orange6/   �� 5?      .��6'   Yellow6/   �� 5@      .��6'   Green6.   �� 5A      .��6'   Blue6-   �� 5B      .��6'   Purple6/   �� 5C      .��6'   Pink6-   �� 5D      .��6'   Gold6-   �� 5E      .��6'   Silver6/   5F      �� 5G      -#   5        $	 cboViewGroupset��5G      $��1��68   $
��Left=�6H   $��278,129,0,0q�6c   $	��Top=�6x   $	��120��6�   {�.  .@�5H      �� .��6'   
Standard61   �� 5I      .��6'   Road6-   �� 5J      .��6'   Racing6/   �� 5K      .��6'   	Extreme60   5L      �� 5M      -$   5        $	 cboViewWheels��5M      $��1��66   $
��Left=�6F   $��278,160,0,0q�6a   $	��Top=�6v   $	��120��6�   {�.  .@�5N      �� .��6'   
Standard61   �� 5O      .��6'   Road6-   �� 5P      .��6'   Racing6/   �� 5Q      .��6'   	Extreme60   5R      �� 5S      -%   5        $	 
cboViewSet��5S      $��1��63   $
��Left=�6C   $��278,191,0,0q�6^   $	��Top=�6s   $	��120��6�   {�.  .@�5T      �� .��6'   
Standard61   �� 5U      .��6'   Road6-   �� 5V      .��6'   Racing6/   �� 5W      .��6'   	Extreme60   5X      5Y      5Z      �� 5[      $��	New Order��6   .��5\      � ���	#FFE5E5E5 5]      �� 5^      $��8* �6+   �� 5_      $
��807* �6+   .+�5a      �� -&   5        $ label1_Copy��5a      $��Order Number��61   $
��Left=�6H   $��
295,40,0,0q�6c   $	��Top=�6w   $��1��6�   �� 5b      -'   5        $ txtOrderNum��5b      $
��Left=�63   $��23��6N   $��
463,45,0,0q�6Z   $
 Wrap=�6n   $	��Top=�6�   $	��120��6�   {�.  $��1��6�   $��1��6�   �� 5c      -(   5        $ label2_Copy8��5c      $��
Frame Size��62   $
��Left=�6G   $��
295,71,0,0q�6b   $	��Top=�6v   $��1��6�   �� 5d      -)   5        $ label2_Copy9��5d      $��Frame Colour��62   $
��Left=�6I   $��295,102,0,0q�6d   $	��Top=�6y   $��1��6�   �� 5e      -*   5        $ label2_Copy10��5e      $��Groupset��63   $
��Left=�6F   $��295,133,0,0q�6a   $	��Top=�6v   $��1��6�   �� 5f      -+   5        $ label2_Copy11��5f      $��Wheels��63   $
��Left=�6D   $��295,164,0,0q�6_   $	��Top=�6t   $��1��6�   �� 5g      -,   5        $ label2_Copy12��5g      $��Finishing Set��63   $
��Left=�6K   $��295,195,0,0q�6f   $	��Top=�6{   $��1��6�   �� 5h      --   5        $ label2_Copy14��5h      $
��Cost��63   $
��Left=�6B   $��295,287,0,0q�6]   $	��Top=�6r   $��1��6�   �� 5i      -.   5        $ label2_Copy15��5i      $��Delivery Date��63   $
��Left=�6K   $��295,313,0,0q�6f   $	��Top=�6{   $��1��6�   �� 5j      -/   5        $ label4_Copy1��5j      $��Order Details��62   $
��Left=�6J   $��
295,11,0,0q�6e   $	��Top=�6y   $
��Bold"�6�   $��1��6�   �� 5k      -0   5        $ label4_Copy2��5k      $��Customer Details��62   $
��Left=�6M   $��2,11,0,0q�6h   $	��Top=�6z   $
��Bold"�6�   $��1��6�   �� 5l      -1   5        $ label5_Copy��5l      $
��Name��61   $
��Left=�6@   $��2,40,0,0q�6[   $	��Top=�6m   $��1��6�   �� 5m      -2   5        $ label6_Copy��5m      $��Email��61   $
��Left=�6A   $��2,71,0,0q�6\   $	��Top=�6n   $��1��6�   �� 5n      -3   5        $ label7_Copy1��5n      $��	Telephone��62   $
��Left=�6F   $��	2,102,0,0q�6a   $	��Top=�6t   $��1��6�   �� 5o      -4   5        $ label7_Copy2��5o      $��Address��62   $
��Left=�6D   $��	2,133,0,0q�6_   $	��Top=�6r   $��1��6�   �� 5p      -5   5        $ txtName��5p      $
��Left=�6/   $��23��6J   $��
108,44,0,0q�6V   $
 Wrap=�6j   $	��Top=�6~   $	��163��6�   $��1��6�   �� 5q      -6   5        $ txtEmail��5q      $
��Left=�60   $��23��6K   $��
108,75,0,0q�6W   $
 Wrap=�6k   $	��Top=�6   $	��163��6�   $��1��6�   �� 5r      -7   5        $ txtTelephone��5r      $
��Left=�64   $��23��6O   $��108,106,0,0q�6[   $
 Wrap=�6p   $	��Top=�6�   $	��163��6�   $��1��6�   �� 5s      -8   5        $ 
txtAddress��5s      $
��Left=�62   $	��115��6M   $��108,137,0,0q�6Z   $
 Wrap=�6o   $	��Top=�6�   $	��163��6�   $��1��6�   �� 5t      -9   5        $ btnValidateDetails��5t      $��Validate Details��69   $
��Left=�6T   $��165,260,0,0q�6o   $	��Top=�6�   $	��106��6�   $��1��6�   �� 5u      -:   5        $	 cboFrame��5u      $
��Left=�61   $��
463,75,0,0q�6L   $	��Top=�6`   $	��120��6x   $��1��6�   .@�5v      �� .��6'   
XX-Small61   �� 5w      .��6'   	X-Small60   �� 5x      .��6'   Small6.   �� 5y      .��6'   Medium6/   �� 5z      .��6'   Large6.   �� 5{      .��6'   	X-Large60   �� 5|      .��6'   
XX-large61   5}      �� 5~      -;   5        $	 cboFrameColor��5~      $
��Left=�66   $��463,106,0,0q�6Q   $	��Top=�6f   $	��120��6~   $��1��6�   .@�5      �� .��6'   Black6.   �� 5�      .��6'   White6.   �� 5�      .��6'   Red6,   �� 5�      .��6'   Orange6/   �� 5�      .��6'   Yellow6/   �� 5�      .��6'   Green6.   �� 5�      .��6'   Blue6-   �� 5�      .��6'   Purple6/   �� 5�      .��6'   Pink6-   �� 5�      .��6'   Gold6-   �� 5�      .��6'   Silver6/   5�      �� 5�      -<   5        $	 cboGroupSet��5�      $
��Left=�64   $��463,137,0,0q�6O   $	��Top=�6d   $	��120��6|   $��1��6�   .@�5�      �� .��6'   
Standard61   �� 5�      .��6'   Road6-   �� 5�      .��6'   Racing6/   �� 5�      .��6'   	Extreme60   5�      �� 5�      -=   5        $	 	cboWheels��5�      $
��Left=�62   $��463,168,0,0q�6M   $	��Top=�6b   $	��120��6z   $��1��6�   .@�5�      �� .��6'   
Standard61   �� 5�      .��6'   Road6-   �� 5�      .��6'   Racing6/   �� 5�      .��6'   	Extreme60   5�      �� 5�      ->   5        $	 cboFinishingSet��5�      $
��Left=�68   $��463,199,0,0q�6S   $	��Top=�6h   $	��120��6�   $��1��6�   .@�5�      �� .��6'   
Standard61   �� 5�      .��6'   Road6-   �� 5�      .��6'   Racing6/   �� 5�      .��6'   	Extreme60   5�      �� 5�      -?   5        $ btnCalc��5�      $&�� Calculate Cost and Delivery Date��6.   $
��Left=�6Y   $��295,262,0,0q�6t   $	��Top=�6�   $	��288��6�   $��1��6�   6�   �� 5�      -@   5        $ txtCost��5�      $
��Left=�6/   $��23��6J   $��463,291,0,0q�6V   $
 Wrap=�6k   $	��Top=�6   $	��120��6�   {�.  $��1��6�   (  "System.Windows.Controls.DatePicker  5�      -A   5        
  Name$
 
dpDelivery��5�   !   $
��Left=�65   $��463,322,0,0q�6P   $	��Top=�6e   $	��120��6}   {�.     DisplayDate$ 
2018-05-13��6�   $��1��6�   �� 5�      -B   5        $ label8��5�      $��Deposit to be paid��6,   $
��Left=�6I   $��295,344,0,0q�6d   $	��Top=�6y   $��1��6�   �� 5�      -C   5        $ 
txtDeposit��5�      $
��Left=�62   $��23��6M   $��463,351,0,0q�6Y   $
 Wrap=�6n   $	��Top=�6�   $	��120��6�   {�.  $��1��6�   �� 5�      -D   5        $ 
btnConfirm��5�      $'��!Confirm Deposit Payment and Order��61   $
��Left=�6]   $��594,354,0,0q�6x   $	��Top=�6�   $	��213��6�   {�.  $��1��6�   6�   �� 5�      -E   5        $ label10��5�      $��Extended Warranty��6-   $
��Left=�6I   $��295,226,0,0q�6d   $	��Top=�6y   $��1��6�   �� 5�      -F   5        $ chbWarranty��5�      $�� ��64   $
��Left=�6?   $��463,233,0,0q�6Z   $	��Top=�6o   $��1��6�   �� 5�      -G   5        $ label11��5�      $����REMEMBER:
- Deposit must be paid before an
   order can be placed
- Inform the customer that they
   will lose their deposit if they 
   cancel their order��6-   $
��Left=�6   $��
594,40,0,0q�6  $	��Top=�6/  $	��119��6G  $	��203��6T  $
��Bold"�6`  $��1��6r  �� 5�      -H   5        $ 
chbDeposit��5�      $��Deposit Paid��63   $
��Left=�6J   $��594,331,0,0q�6e   $	��Top=�6z   $��1��6�   {�.  6�   �� 5�      -I   5        $ chbValidateDetails��5�      $��Details Validated��6;   $
��Left=�6W   $��695,331,0,0q�6r   $	��Top=�6�   {�.  $��1��6�   �� 5�      -J   5        $ btnClearOrder��5�      $��
Clear Form��64   $
��Left=�6I   $��	2,352,0,0q�6d   $	��Top=�6w   $��75��6�   $��1��6�   5�      5�      5�      5�      5�      