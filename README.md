# newApp_Chapter4

#######################################################################################
###################################### Chapter 4 ######################################
#######################################################################################

## Getting Started

###################################################################################
#Building the flutter app as being guided and taught by Maximilian Schwarzmuller
 
#The application is for adding/noting down all the transactions that we do on daily basis.

#Step 1 - Built two cards. One kept as it and used second to display all the transactions. 

#Step 2 - Created one List of Maps to store the transactions. By using map method, 
displayed these transactions separately on the invidual cards.

#Step 3 - Developed two Text fields and set controllers for them to handle input data.

#Step 4 - Split the widgets for clearing the Widget tree and complexity.

#Step 5 - Add new items to list using Stateful Widget in UserTransactions file.

#Step 6 - Add Scroll View for Home Screen.

#Step 7 - Use ViewList.builder() for optimized list view for the items.

#Step 8 - Numerical mode keyboard for amount field using TextInputType property.

#Step 9 - On keyboard submit/done button adds item to list. Used onPressed property.

#step 10 - Validation for submit. Amount value zero and/or empty text field will 
not  add item to the list

#step 11 - Round off amount on submission for upto 2 digits after decimial point by 
using toStringAsFixed(2) property.

#Step 12 - Additing two buttons. One on the appbar and one at the bottom of the screen to add new item.

Step 13 - Shift card for adding new item to a modal which will appear after tapping the addd button previously added.

Step 14 - On submitting new item, modal must automatically close. This was implemented by using Navigator() provided by flutter in Dart.

Step 15 - Add ThemeData to Material App.

Step 16 -  Adding new Fonts. Downloaded fonts data from given sources. Copied the font files in "assets/fonts/" directory. Made changes in pubspec.yaml file- added information about new founts. Used "Open Sans" font in project from ThemeData property, and for app bar- used "" font.

Step 16 - Used Open Sans for Entire Texts on Screen by globally declaring it and then using them by using style arguement.

Step 17 - Add a Text and an image if there are no transactions added. Used Image widget for inserting an image from "assets/images/" directory and making it's entry in assets section present in pubspec.yaml file.

Step 18 - Implement Chart Bar which will be representing the week's expenses using bar chart in which there are 7 bars representing each week day. This is implemented by using stacked(overlayed) containers (One container and one FractionallySizedBox). Where one container is used to show body of bar and one container (FractionallySizedBox) is used to represent expense compared to other week days. This height is controlled using parameter "heightFactor" in FractionallySizedBox widget.

Step 19 - Used ListTile widget for improved UI of Transaction List

Step 20 - Add DatePicket widget to select date manually for each item.

Step 21 - Add Delete button and respective login to delete an item from list by clicking the delete button provided on each ViewTile.

#######################################################################################

All of the above steps are completed and the application is implemented successfully. Completed Chapter 4 here ##############################################################

#######################################################################################
###################################### Chapter 5 ######################################
#######################################################################################

## Responsiveness and Adaptiveness 

Step 1 - [Responsiveness]For fixing the bug and improving scrolling of Chart and item list, we will use MediaQuery to set size details dynamically based on device size. Set ratio to 3:7 :: chart:itemList.

Step 2 - Set dynamic values for the widgets in ChartBar. Used LayoutBuilder with gives the information about the widget and it's properties(Constraints) which can be used for respective modifications.

Step 3 - Temporary solution to avoid bugs on Landscape mode, set app the to be in Potrait state only. This can be done by importing services.dart, then using WidgetsFlutterBinding.ensureInitialized() and setting up SystemChrome.setPreferredOrientation method.

Step 4 - Add switch button. Which will result in - either we can see a Chart Bar or the list of items. [again creates a bug, this time for Potrait mode].

Step 5 - If in Landscape mode (checking using boolean variable) then show Switch button and render respective content. If in Potraid mode, then hide Switch button and show whole content i.e. Chart + List. This will make application Responsive for all type of device sizes as well as orientation mode i.e. Landscape and Potrait.

