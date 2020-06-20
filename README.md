# newApp_Chapter4

A new Flutter project.

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