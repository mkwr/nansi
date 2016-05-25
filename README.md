### NANSI:README

**Synopsis**  

Nansi simplifies working with the xterm-256 color palette. Source into your .bash_profile for use within your shell, import into your Sass or Less stylesheet, or load one of the Adobe swatch files into Illustrator, InDesign, or Photoshop.

[DOWNLOAD](https://github.com/mkwr/nansi/archive/gh-pages.zip)
[SOURCE](https://github.com/mkwr/nansi)
[REFERENCE](https://git.io/nansi)

**Formats**  

  nansi.sh — bash/shell  
  nansi.hex.scss — standard hexadecimal format for SCSS.  
  nansi.rgb.scss — rgb format for SCSS.  
  nansi.hex.less — standard hexadecimal format for LESS.  
  nansi.rgb.less — rgb format for LESS.  
  nansi.ai — Adobe Illustrator swatch file.  
  nansi.ase — Adobe Swatch Exchange file.  

**Install**  

  SH/BASH : Source nansi as you would any other dotfile.  
   `source ~/.nansi`

  SCSS : Nansi has hex and rgb versions. Import your preference as usual.  
    `@import ‘nansi.hex.scss‘;`

  LESS : Same for LESS.  
    `@import ‘nansi.rgb.less‘;`

  ASE, AI (Adobe Swatch Exchange)  
    `Swatches panel → Menu → Load Swatches → path/to/nansi.ase`  
    `Swatches → Open swatch → Library → Other → path/to/nansi.ase`

**Usage**

Bash/Sh
```
F(0–255)    # set a foreground color  
B(0–255)    # set a background color  
STOP        # stop a color or style  
UNDR        # set underline  
BOLD        # set bold text  
RVRS        # set reversed text  
ITAL        # set italic text (minimal support)  

$  printf “${F16}hamburgfonstiv${STOP}”
$  printf "${F67}hamburg${UNDR}fonstiv${STOP}"
$  printf “${F42}hamburg${B89}fonstiv${STOP}”
$  printf “${F42}${B89}hamburgfonstiv${STOP}”
$  printf “${F124}hamb${F126}urg${F128}fontstiv${STOP}”
```

Sass/SCSS
```
   .class {
      color: $_120;
      border: 1px solid $_30;
      background-color: rgba($_30, .5);
    }
```

Less
```
    .class {
      color: @_45;
      border: 1px solid @_30;
      background-color: fade(@_30, 50%);
    }
```

**Reference**  
  Nansi is meant to be used with its visual reference here: http://mkwr.github.io/nansi/.
  I’ve taken great care to make it the nicest reference/resource for the xterm-256 palette.
  The keyboard keys [ X, C, V, B ] toggle some features to assist in color selection.

    X -- swatch sizing (small/large).  
    C -- column spacing (on/off).  
    V -- switch number values (ref/hex).  
    B -- change background color (dark/light).  

  If you would rather keep it local, print the complete palette to standard output.

    $ N256           # prints all 256 colors in grid format (6 colors per row)  
    $ N256 -s        # prints all 256 colors in swatch format (1 colors per row)  
    $ N256 --swatch  # verbose alias  

**Further**  
  + For information on the command behind Nansi, in terminal: $ man tput.
  + For your terminals capabilities, in terminal: $ man terminfo or $ man termcap.

**See Also**  
  [The Woolidge Bash Scripting Guide](http://mywiki.wooledge.org/BashGuide)  
  [Advanced Bash Scripting Guide](http://www.tldp.org/LDP/abs/html/abs-guide.html)  

**The Fine Print**  
  Bash Version: 4.3.42(1)-release
  Author: © Mike Warren 2015
  License: MIT