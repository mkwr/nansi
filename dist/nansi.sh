# ███████████████████████████████████████
# name: nansi.sh
# url: workmade.github.io/nansi
# author: by Mike Warren

stop=$(tput sgr0)  # reset
bold=$(tput bold)  # bold
undr=$(tput smul)  # underline
rvrs=$(tput rev)   # reverse
ital=$(tput sitm)  # italic [?]

declare -a fg=(
  $(for i in {0..255} ; do
      echo f"$i"=$(tput setaf "$i")
    done)
  )

declare -a bg=(
  $(for i in {0..255} ; do
      echo b"$i"=$(tput setab "$i")
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

n256 () {
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
