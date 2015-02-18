DOWNLOAD: https://github.com/workmade/nansi/archive/gh-pages.zip
SOURCE: http://github.com/workmade/nansi
REFERENCE: http://workmade.github.io/nansi


N A N S I

Nansi simplifies working with the xterm-256 color palette. Designed and written in/for Bash, adapted to Sass and Less, and available in Adobe Stack Exchange format (.ase).


§ FORMATS 
nansi.sh : bash/shell
nansi.hex.scss : hexadecimal format in scss
nansi.rgb.scss : rgb format for scss
nansi.hex.less : hexadecimal format in less
nansi.rgb.less : rgb format for less
nansi.ase : (Adobe Swatch Exchange) file


§ REFERENCE
ONLINE
The keyboard numbers 1 through 4 will toggle the following options. Switch between a DARK/LIGHT background, REFERENCE/HEX values, SMALL/LARGE swatch size, and turn column
spacing OFF/ON, respectively.


SHELL
If you have the nansi.sh file installed (see below), you can print the reference palette
to standard output with the following command:

	$ N256


§ INSTALL
Source into your .bashrc or dotfile of choice, import the partial into your Sass/Less stylesheet, or load into your Adobe Swatch Panel, or any program supporting the ASE (Adobe Swatch Exchange) format.

	// inside your bash.rc
	source ~/.nansi.sh

	// as a partial in your stylesheet
	@import “_nansi.hex.scss”;
        
	// within Illustrator, InDesign, etc.
	Swatches Panel → Menu → Load Swatches → nansi.ase


§ USAGE
SH/BASH
The syntax is direct: F0–255 to set a foreground color, and B0–255 to set a background color; respectively. To set text bold use: BOLD. To set reversed text (foreground becomes background),
use RVRS. To underline text use UNDR, and finally to end a color/style use STOP.

	# set the foreground then the background 
	$ printf "${F42}hamburg${B89}fonstiv${STOP}"

	# set the foreground and the background 
	$ printf "${F42}${B89}hamburgfonstiv${STOP}"

	# set multiple foreground colors 
	$ printf "${F124}hamb${F126}urg${F128}fontstiv${STOP}"
	

SCSS + LESS
Nansi is composed of basic color variables, no matter which version you use (hex, hsl, rgb), or which pre-processor SCSS or LESS. For SCSS it's the dollar sign, and for LESS, the at sign.

	h4 { color: $_132; } // scss
	h5 { color: @_133; } // less


NOTE: Should you want to work with rgba, both Sass and Less have built-in color functions to convert a color to rgba and change the transparency/opacity:

	h4 { color: rgba($_86, 50%); } // scss
	h5 { color: fade(@_72, 50%); } // less


§ FURTHER
For information on the command behind Nansi (tput), or, your specific terminals capabilities, try the following commands: 

	$ man tput
	$ man terminfo
	$ man termcap


§ SEE ALSO
http://mywiki.wooledge.org/bashguide
http://mywiki.wooledge.org/bashfaq/037