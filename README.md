# 8fc8-bash-script

## Ein Shell Skipt um ein Unlock einer DELL BIOS File mit dem Suffix-8FC8 durchzuführen:

Using the script:

The xxx.bin file to be edited should be stored in the Downloads folder in these instructions.

1. Start the script by copying and pasting the one-liner:

START=$(find $HOME -iname 8FC8_eng.sh); bash $START


1.1 Select the file to be unlocked.

1.2 Now two three or four offset lines appear in the open window. Reduce this window.

1.3 The locked.bin was copied to xxx_unlocked.bin.

1.4 Now select this file. 0000c30a0 000c3590 000c4890 000c4f00

1.5 A new terminal window opens with the contents of xxx_unlocked.bin
      0000c30a0 
      000c3590 
      000c4890 
      000c4f00 

1.6 Place both Terminal + Text file windows next to each other.

1.7 Press Ctrl + G in the terminal window.
      It appears = New position ? 0X 
      Type the first offset line and press enter. 
      0000c30a0 
      Behind New position? 0X000c30a0 

1.8 The line that should be changed now opens.
      Navigate here with the right arrow key and change from AA to 00 using the keyboard. 

1.9 The same process followed with lines 2, 3, 4 from the text file.
      000c3590 
      000c4890 
      000c4f00 

2.0 Everything is saved at the end with Ctrl + W.
      Close the terminal window with Ctrl + x

2.1 Close the text file window.

