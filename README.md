# Simple custom stylish calculator
This calculator is for IPhone 6+ and 6S+ screen resolution.  
It contains a keyboard with buttons for digits and arithmetical operations and display output.

##In this application you can make such operations with numbers as:
* addition  
* subtraction  
* multiplication  
* division
* put decimal point
* toggle positive/negative number  
* clear display output  

##In this app I used:
1. Customizing all buttons in one method with array to set their attributes.
2. Storyboard for making layout and constraints for locating buttons and output screen (UILabel).  
3. Bind every button for its action to allow them make their function in right way.  
4. NSCharacterSet for checking what symbols was used for prventing their repeat (expecially dot symbol).
5. Analyse output screen to not allow user to make nonlogic actions (for examle entering more than one zero in front of number).  
5. NSMutableString and its methods for combining numbers in output screen, showing them in right sequence, add number after every click on digits button and make arithmetical operations with this string.  

##Screenshots:
![Alt text](http://clip2net.com/clip/m496854/5f0e0-clip-90kb.jpg "Optional title")
![Alt text](http://clip2net.com/clip/m496854/848fc-clip-89kb.jpg "Optional title")
