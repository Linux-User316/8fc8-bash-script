# 8fc8-bash-script

## A shell script to unlock a DELL BIOS file with the Suffix : GFT5XXX-8FC8


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
for example:

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
for example:

0000c30a0 
```
* **Behind New position? 0X000c30a0**

* **The line that should be changed now opens.**

* **Navigate here with the right arrow key and change from AA to 00 using the keyboard.**

* **The same process followed with lines 2, 3, 4 from the text file.**
```
for example:

000c3590 

000c4890 

000c4f00 
```
* **Everything is saved at the end with Ctrl + w**

* **Close the terminal window with Ctrl + x**

* **Close the text file window.**

# Very important to know

* **This is very important for analyzing the 2nd, 3rd or 4th correct offset lines, as an example**


* **Correct scheme of bytes distribution: The 4th Byte is a random number 5th to 8th are 00 Bytes numbers**

```

000470a0: 00        FC         AA         81        00        00        00        00
      	  └──1.Byte └──2.Byte  └──3.Byte  └──4.Byte └──5.Byte └──6.Byte └──7.Byte └──8.Byte

```

* **Wrong scheme of byte distribution: The Bytes from 4th to 8th are random numbers or letters**

```

001d5290: 00        FC         AA         3F        81        3C        A3        0C
      	  └──1.Byte └──2.Byte  └──3.Byte  └──4.Byte └──5.Byte └──6.Byte └──7.Byte └──8.Byte

```

### See my YouTube Video for this script.

[YouTube Video Link](https://www.youtube.com/watch?v=_RIK7jIUEmU)




