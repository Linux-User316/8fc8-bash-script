# 8fc8-bash-script

## A shell skip to unlock a DELL BIOS file with the suffix-8FC8:


### Using the script:

* **The xxx.bin file to be edited should be stored in the Downloads folder in these instructions.**

* **Start the script by copying and pasting the one-liner:**
```
START=$(find $HOME -iname 8FC8_eng.sh); bash $START
```
* **Select the file to be unlocked.**

* **Now two three or four offset lines appear in the open window. Reduce this window.**

* **The locked.bin was copied to xxx_unlocked.bin.**

* **Now select this file.**

* **A new terminal window opens with the contents of xxx_unlocked.bin**
```
000c30a0 

000c3590 

000c4890 

000c4f00 
```
* **Place both Terminal + Text file windows next to each other.**

* **Press Ctrl + G in the terminal window.**

* **It appears = New position ? 0X**

* **Type the first offset line and press enter.**
```
0000c30a0 
```
* **Behind New position? 0X000c30a0**

* **The line that should be changed now opens.**

* **Navigate here with the right arrow key and change from AA to 00 using the keyboard.**

* **The same process followed with lines 2, 3, 4 from the text file.**
```
000c3590 

000c4890 

000c4f00 
```
* **Everything is saved at the end with Ctrl + W.**

* **Close the terminal window with Ctrl + x**

* **Close the text file window.**

### See my YouTube Video for this script.

[YouTube Video Link](https://www.youtube.com/watch?v=_RIK7jIUEmU)




