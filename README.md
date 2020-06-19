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

