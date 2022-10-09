To run the program along with the test input, use the following commandline arguement: `ruby menu.rb input.txt` This will take every line from the `input.txt` file and run it. To add more inputs simply add lines to the `input.txt` and end the file with q to automatically quit the program, or replace the `input.txt` in the ruby command with another text file for input.

The implimentation should be done using a decorator design pattern to allow for easy expandability for new menu items, however when I was implimenting it, making the output string match the way the example was set up proved to be unreasonable given that the duplicated items that get called by the decorator would output their part of the string twice. For example given `Breakfast 1,2,3,3` the program would output `Breakfast: Eggs, Toast, Coffee(2) Coffee(2)` This proved beyond my ability to get around. 