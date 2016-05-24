## ⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼
## nansi.sh
## mkwr.github.io/nansi
## https://github.com/mkwr/nansi
## © 2106 Mike Warren
## License: MIT

STOP=$(tput sgr0)    # reset
BOLD=$(tput bold)    # bold
UNDR=$(tput smul)    # underline
RVRS=$(tput rev)     # reverse
ITAL=$(tput sitm)    # italic [?]
HIDE=$(tput civis)   # hide cursor
SHOW=$(tput cnorm)   # show cursor

# the number array (global)
declare -ag NUMS=(
   $(echo {0..255})
)

# the foreground array
declare -a F=(
   $(for i in ${NUMS[@]}; do
      echo F"$i"=$(tput setaf "$i")
   done)
)

# the background array
declare -a B=(
   $(for i in ${NUMS[@]}; do
      echo B"$i"=$(tput setab "$i")
   done)
)

nansi () {
   if [ -x /usr/bin/tput ]; then
      for i in ${F[@]} ; do
         export -n "$i"
      done
      for i in ${B[@]} ; do
         export -n "$i"
      done
   fi
}

nansi
unset nansi

N16 () {
   echo
   for i in ${NUMS[@]:0:16}; do
      printf "\e[38;5;%sm %4s \e[0m" "${i}" "${i}"
      if [ $((($i + 1) % 6)) == 0 ]; then
         echo
      fi
   done
}
N216 () {
   echo
   for i in ${NUMS[@]:16:216}; do
      printf "\e[38;5;%sm %4s \e[0m" "${i}" "${i}"
      if [ $((($i + 1) % 6)) == 4 ]; then
         echo
      fi
   done
}
N24 () {
   echo
   for i in ${NUMS[@]:232:24}; do
      printf "\e[38;5;%sm %4s \e[0m" "${i}" "${i}"
      if [ $((($i + 1) % 6)) == 4 ]; then
         echo
      fi
   done
}

N256 () {
   # N256 prints multi-column no swatch
   if [[ -z $1 ]]; then
      printf '%s\n'
      printf '%s\n' "16 STANDARD COLORS"
      N16
      printf '%s\n'
      printf '%s\n'
      printf '%s\n' "6 x 6 x 6 COLORS"
      N216
      printf '%s\n'
      printf '%s\n' "24 GREYSCALE COLORS"
      N24
   fi

   # N256 [-s or --swatch] prints single column + swatch
   if [[ $1 == "-s" || $1 == "--swatch" ]]; then
      printf '%s\n' ; printf '%s\n' " 16 STANDARD COLORS" ; printf '%s\n'
      for i in ${NUMS[@]:0:16}; do
         printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
      done
      printf '%s\n' ; printf '%s\n' "  6 x 6 x 6 COLORS " ; printf '%s\n'
      for i in ${NUMS[@]:16:216}; do
         printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
      done
      printf '%s\n' ; printf '%s\n' "24 GREYSCALE COLORS" ; printf '%s\n'
      for i in ${NUMS[@]:232:24}; do
         printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
      done
   fi
}
