
# Cat - by Torbjorn Granlund, Richard M. Stallman
## Description
This program can concatenate files, or standard input to standard output.

#### Authors: Torbjorn Granlund, Richard M. Stallman

## Usage
call cat [option] [file] ...

	  -A, --show-all           equivalent to -vET
	  -b, --number-nonblank    number nonblank output lines
	  -e                       equivalent to -vE
	  -E, --show-ends          display $ at end of each line
	  -n, --number             number all output lines
	  -s, --squeeze-blank      never more than one single blank line
	  -t                       equivalent to -vT
	  -T, --show-tabs          display TAB characters as ^I
	  -u                       (ignored)
	  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB
	      --help                display this help and exit
	      --version             output version information and exit

With no FILE, or when FILE is -, read standard input.

	  -B, --binary             use binary writes to the console device.
	  
## Examples

We can use this plugin to concatenate files together and exploit the additional feature of showing the special characters in a file that are usually not visible by default. 

### CONCATENATE FILES

We will demonstrate how the plugin can be used, by concatenating the second file right after the first file without giving any space between them. First, we will call the plugin with just one file name, which returns its contents to STDOUT.

![image](https://user-images.githubusercontent.com/82807654/171324678-3488cf3d-0777-43c4-a3c6-dd07a340208e.png)
![image](https://user-images.githubusercontent.com/82807654/171324696-50a7b04c-e0ad-49cd-a319-6b098dd4d6ad.png)

We can then join these two files and display the joined file, using the cat command as shown below.

`cat file1 file2`

![image](https://user-images.githubusercontent.com/82807654/171325028-4545a265-65f5-4f70-b59e-3805688fb791.png)

### CONCATENATING TWO FILES AND SAVING THEM IN A THIRD FILE

We can also save the concatenated result of two files in a third file, instead of displaying them in CMD. You don't have to create the third file. It will be created automatically, with the name you mention in CMD.

`cat file1 file2 >> newfile`

![image](https://user-images.githubusercontent.com/82807654/171325158-77a9dd4f-64a1-4aaa-9429-932158984d03.png)

### SHOW SPECIAL CHARACTERS

This plugin gives us the switch, -A, that will show all the special characters in a file that are usually hidden. As shown in the example below, it shows $ and ^M at the end of each line.we can also use either -E or -t for displaying these special characters. Likewise, -E is used to show $ at the end of the line, while -t is used to show ^M where a new line is used.

`cat -A/-E/-t file`

![image](https://user-images.githubusercontent.com/82807654/171325555-9557c869-22eb-4d72-83f7-b193d713600d.png)

### NUMBERING THE LINES

We can use this plugin to insert the line number in the relevant line of a file. To number the lines, we have two different types of switches.

#### -n Switch

 This switch will number every line, whether it is blank or used.

`cat -n file`

![image](https://user-images.githubusercontent.com/82807654/171326316-81ac712f-180a-40e5-b70c-8084882f5d6b.png)

#### -b Switch

This switch, unlike -n,  will only number the lines with text, leaving the blank lines. Using this can be helpful when content is indented.

`cat -b file`

![image](https://user-images.githubusercontent.com/82807654/171326538-2959d0bf-cc3c-435a-9d21-b41f23c411dd.png)



## RELATED ARTICLE
https://batch-man.com/join-files-together/

