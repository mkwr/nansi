NANSI — README
⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼

SYNOPSIS

Nansi simplifies working with the xterm-256 color palette. Originally designed for shell, Nansi has since been adapted for Sass and Less, and is also available in ASE, ‘Adobe Swatch Exchange’ format.

	➝	DOWNLOAD: 	https://github.com/mkwr/nansi/archive/gh-pages.zip
	➝	SOURCE:			https://github.com/mkwr/nansi
	➝	REFERENCE:	https://git.io/nansi

FILE FORMATS
	nansi.sh					bash/shell
	nansi.hex.scss		standard hexadecimal format for SCSS.
	nansi.rgb.scss		rgb format for SCSS.
	nansi.hex.less		standard hexadecimal format for LESS.
	nansi.rgb.less		rgb format for LESS.
	nansi.ase					Adobe Swatch Exchange file.

INSTALL
	SH/BASH — Source nansi as you would any other dotfile. Make sure you do so before any file, 		script, function, etc, you plan to use Nansi within.

		>	source ~/.nansi

	SCSS — Nansi comes in standard hex format or rgb. Import your preference as usual.

		>	@import ‘nansi.hex.scss‘;

	LESS — Same for LESS.

		>	@import ‘nansi.rgb.less‘;

	ASE (ADOBE SWATCH EXCHANGE) -- The Nansi swatch file can be imported into any program
	that supports the .ase format. Below illustrating the user flow in InDesign/Photoshop
	and Illustrator.

		Swatches panel → Menu → Load Swatches → path/to/nansi.ase
		Swatches → Open swatch → Library → Other → path/to/nansi.ase

USAGE
	SH/BASH — The syntax is simple; a number 0–255 preceded by f(oreground), or b(ackground).
	In addition to the colors, there’s a few control styles needed which are outlined below:
		F(0–255)		set a foreground color
		B(0–255)		set a background color
		STOP				stop a color or style
		UNDR				set underline
		BOLD				set bold text
		RVRS				set reversed text
		ITAL				set italic text (minimal support)

		$  printf “${F16}hamburgfonstiv${STOP}”
		$  printf "${F67}hamburg${UNDR}fonstiv${STOP}"
		$  printf “${F42}hamburg${B89}fonstiv${STOP}”
		$  printf “${F42}${B89}hamburgfonstiv${STOP}”
		$  printf “${F124}hamb${F126}urg${F128}fontstiv${STOP}”

	SCSS — Again, the syntax is simple; A dollar sign, followed by an underscore,
	then a reference number 0–255.

	>	.class {
	>		color: $_30;
	>		border: 1px solid $_30;
	>		background-color: rgba($_30, .5);
	>		}

	LESS — Same as above, aside from the variable declaration. In this case an at-sign, followed
	by an underscore, then a reference number 0–255.

	>	.class {
	>		color: @_30;
	>		border: 1px solid @_30;
	>		background-color: fade(@_30, 50%);
	>		}

	TIP: Should you want to work with rgba, both SASS and LESS have built-in color functions to
	convert a color to rgba and change the transparency; shown above (background-color property).

REFERENCE
	BROWSER
		Nansi is meant to be used with its visual reference here: http://workmade.github.io/nansi.
		I’ve taken great care to make it the ideal reference/resource for the xterm-256 palette.
		The keyboard numbers 1–4 toggle some features to assist in color selection:

			1	change the background from dark (default) to light.
			2	switch between the reference numbers (default) to hex values.
			3	change the color visibility from border (default) to background.
			4	turn column spacing off (default) and on.

	CLI
	If you would rather keep it local, Nansi has some functions to print the complete
	palette to standard output. Note: f/b = f OR b, not both.

	 	$  N256 					#  prints all 256 colors in grid format (6 colors per row)
	 	$  N256 -g 				#  alias
	 	$  N256 --grid 		#  verbose alias

	 	$  N256 -s 				#  prints all 256 colors in swatch format (1 colors per row)
	 	$  N256 --swatch	#  verbose alias

FURTHER
	+  	For information on the command behind Nansi, in terminal: $ man tput.
	+  	For your terminals capabilities, in terminal: $ man terminfo or $ man termcap.
	+  	To see if your current shell supports 256 colors, in terminal: $ tput colors. If a number
			other than 256 is returned, all hope is not lost, you may be able to change/declare terminal
			type to xterm-256 from your terminal application.

SEE ALSO
	The Woolidge Bash Scripting Guide — http://mywiki.wooledge.org/BashGuide
 	Advanced Bash Scripting Guide — http://www.tldp.org/LDP/abs/html/abs-guide.html

THE FINE PRINT
	OS: OSX 10.11.1
	Bash Version: 4.3.42(1)-release
	Author: © Mike Warren 2015
	License: MIT
