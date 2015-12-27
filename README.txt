NANSI — README
⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼

SYNOPSIS

Nansi simplifies working with the xterm-256 color palette. Source into your .bash_profile for use within your shell, import into your Sass or Less stylesheet, or load one of the Adobe swatch files into Illustrator, InDesign, or Photoshop.

  ➝  DOWNLOAD:   https://github.com/mkwr/nansi/archive/gh-pages.zip
  ➝  SOURCE:     https://github.com/mkwr/nansi
  ➝  REFERENCE:  https://git.io/nansi

FILE FORMATS
  nansi.sh          bash/shell
  nansi.hex.scss    standard hexadecimal format for SCSS.
  nansi.rgb.scss    rgb format for SCSS.
  nansi.hex.less    standard hexadecimal format for LESS.
  nansi.rgb.less    rgb format for LESS.
  nansi.ase         Adobe Swatch Exchange file.

INSTALL
  SH/BASH — Source nansi as you would any other dotfile.
    >  source ~/.nansi

  SCSS — Nansi comes in hex, hsl and rgb. Import your preference as usual.
    >  @import ‘nansi.hex.scss‘;

  LESS — Same for LESS.
    >  @import ‘nansi.rgb.less‘;

  ASE, AI (ADOBE SWATCH EXCHANGE)
    Swatches panel → Menu → Load Swatches → path/to/nansi.ase
    Swatches → Open swatch → Library → Other → path/to/nansi.ase

USAGE
  SH/BASH — The syntax is simple; a number 0–255 preceded by f(oreground), or b(ackground).
  In addition to the colors, there’s a few control styles needed which are outlined below:
    F(0–255)    set a foreground color
    B(0–255)    set a background color
    STOP        stop a color or style
    UNDR        set underline
    BOLD        set bold text
    RVRS        set reversed text
    ITAL        set italic text (minimal support)

    $  printf “${F16}hamburgfonstiv${STOP}”
    $  printf "${F67}hamburg${UNDR}fonstiv${STOP}"
    $  printf “${F42}hamburg${B89}fonstiv${STOP}”
    $  printf “${F42}${B89}hamburgfonstiv${STOP}”
    $  printf “${F124}hamb${F126}urg${F128}fontstiv${STOP}”

  SCSS — Nansi is just variables. $_<0–255>.

    .class {
      color: $_30;
      border: 1px solid $_30;
      background-color: rgba($_30, .5);
    }

  LESS — Again, just variables. @_<0–255>.

    .class {
      color: @_30;
      border: 1px solid @_30;
      background-color: fade(@_30, 50%);
    }

REFERENCE
  BROWSER
    Nansi is meant to be used with its visual reference here: http://workmade.github.io/nansi.
    I’ve taken great care to make it the nicest reference/resource for the xterm-256 palette.

    The keyboard keys [ X, C, V, B ] toggle some features to assist in color selection:

      X  swatch sizing (small/large).
      C  column spacing (on/off).
      V  switch number values (ref/hex).
      B  change background color (dark/light).

  CLI
    If you would rather keep it local, print the complete palette to standard output.
    Note: f/b = f OR b, not both.

    $  N256           #  prints all 256 colors in grid format (6 colors per row)
    $  N256 -g        #  alias
    $  N256 --grid    #  verbose alias

    $  N256 -s        #  prints all 256 colors in swatch format (1 colors per row)
    $  N256 --swatch  #  verbose alias

FURTHER
  +  For information on the command behind Nansi, in terminal: $ man tput.
  +  For your terminals capabilities, in terminal: $ man terminfo or $ man termcap.

SEE ALSO
  The Woolidge Bash Scripting Guide — http://mywiki.wooledge.org/BashGuide
  Advanced Bash Scripting Guide — http://www.tldp.org/LDP/abs/html/abs-guide.html

THE FINE PRINT
  OS: OSX 10.11.1
  Bash Version: 4.3.42(1)-release
  Author: © Mike Warren 2015
  License: MIT
