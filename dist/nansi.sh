# ███████████████████████████████████████
# nansi.sh
# workmade.github.io/nansi

STOP=$(tput sgr0)  # reset
BOLD=$(tput bold)  # bold
UNDR=$(tput smul)  # underline
RVRS=$(tput rev)   # reverse
ITAL=$(tput sitm)  # italic [?]

declare -a fg=(
  $(for i in {0..255} ; do
      echo F"$i"=$(tput setaf "$i")
    done)
  )

declare -a bg=(
  $(for i in {0..255} ; do
      echo B"$i"=$(tput setab "$i")
    done)
  )

nansi () {
if [ -x /usr/bin/tput ] ; then
  for i in ${fg[@]}; do
    export "$i" ;
  done
  for i in ${bg[@]}; do
    export "$i" ;
  done
fi
}

nansi
unset nansi

N256 () {
  printf '%s\n' "░░░░░░░░░░░░░░░░░░░░ THE 16 STANDARD COLORS"
  for i in {0..16} ; do
    printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
  done
  printf '%s\n' "░░░░░░░░░░░░░░░░░░░░ THE 6 x 6 x 6 COLORS"
  for i in {17..231} ; do
    printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
  done
  printf '%s\n' "░░░░░░░░░░░░░░░░░░░░ THE 24 GREYSCALE COLORS"
  for i in {232..255} ; do
    printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
  done
}
