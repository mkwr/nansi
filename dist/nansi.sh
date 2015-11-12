# ███████████████████████████████████████
# nansi.sh
# workmade.github.io/nansi

STOP=$(tput sgr0)  # reset
BOLD=$(tput bold)  # bold
UNDR=$(tput smul)  # underline
RVRS=$(tput rev)   # reverse
ITAL=$(tput sitm)  # italic [?]

declare -a fg=(
  $(for i in {0..255}; do
      echo F"$i"=$(tput setaf "$i")
  done)
)

declare -a bg=(
  $(for i in {0..255}; do
      echo B"$i"=$(tput setab "$i")
  done)
)

nansi () {
  if [ -x /usr/bin/tput ]; then
    for i in ${fg[@]}; do
      export "$i"
    done
    for i in ${bg[@]}; do
      export "$i"
    done
  fi
}

nansi
unset nansi

N16 ()	{
  echo;for i in {0..15}; do
    printf "\e[38;5;%sm %4s \e[0m" "${i}" "${i}"
    if [ $((($i + 1) % 6)) == 0 ]; then
      echo
    fi
  done
}
N216 ()	{
  echo;for i in {16..231}; do
    printf "\e[38;5;%sm %4s \e[0m" "${i}" "${i}"
    if [ $((($i + 1) % 6)) == 4 ]; then
      echo
    fi
  done
}
N24 ()	{
  echo;for i in {232..255}; do
    printf "\e[38;5;%sm %4s \e[0m" "${i}" "${i}"
    if [ $((($i + 1) % 6)) == 4 ]; then
      echo
    fi
  done
}

N256 () {
  if [[ $1 == "-g" || $1 == "--grid" ]]; then
    printf '%s\n'
    printf '%s\n' "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 16 STANDARD COLORS"
    N16
    printf '%s\n'
    printf '%s\n' "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 6 x 6 x 6 COLORS"
    N216
    printf '%s\n'
    printf '%s\n' "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 24 GREYSCALE COLORS"
    N24
  fi

  if [[ $1 == "-s" || $1 == "--swatch" ]]; then
    printf '%s\n'
    printf '%s\n' "░░░░░░░░░░░░░░░░░░░░"
    printf '%s\n' " 16 STANDARD COLORS "
    printf '%s\n' "░░░░░░░░░░░░░░░░░░░░"
    for i in {0..16}; do
      printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
    done
    printf '%s\n' "░░░░░░░░░░░░░░░░░░░░"
    printf '%s\n' "  6 x 6 x 6 COLORS  "
    printf '%s\n' "░░░░░░░░░░░░░░░░░░░░"
    for i in {17..231}; do
      printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
    done
    printf '%s\n' "░░░░░░░░░░░░░░░░░░░░"
    printf '%s\n' "24 GREYSCALE COLORS "
    printf '%s\n' "░░░░░░░░░░░░░░░░░░░░"
    for i in {232..255}; do
      printf '%s\n' "$(tput setaf "$i")▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ "$i"$(tput sgr0)"
    done
  fi
}
