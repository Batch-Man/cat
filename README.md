
# Cat - by Torbjorn Granlund, Richard M. Stallman
## Description
This program can concatenate files, or standard input to standard output.

Author: Torbjorn Granlund, Richard M. Stallman

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


Report bugs to <bug-textutils@gnu.org>.

Example: 
`call Cat 1.txt 2.txt`

[batch-man.com](https://batch-man.com)
