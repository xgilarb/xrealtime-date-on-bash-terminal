realtime_clock() {
    clear

    echo "
    ▒██   ██▒ ██▓███ ▓██   ██▓ ███▄    █  ██▓ ███▄ ▄███▓
    ▒▒ █ █ ▒░▓██░  ██▒██  ██▒ ██ ▀█   █ ▓██▒▓██▒▀█▀ ██▒
    ░░  █   ░▓██░ ██▓▒▒██ ██░▓██  ▀█ ██▒▒██▒▓██    ▓██░
     ░ █ █ ▒ ▒██▄█▓▒ ▒░ ▐██▓░▓██▒  ▐▌██▒░██░▒██    ▒██
    ▒██▒ ▒██▒▒██▒ ░  ░░ ██▒▓░▒██░   ▓██░░██░▒██▒   ░██▒
    ▒▒ ░ ░▓ ░▒▓▒░ ░  ░ ██▒▒▒ ░ ▒░   ▒ ▒ ░▓  ░ ▒░   ░  ░
    ░░   ░▒ ░░▒ ░    ▓██ ░▒░ ░ ░░   ░ ▒░ ▒ ░░  ░      ░
     ░    ░  ░░      ▒ ▒ ░░     ░   ░ ░  ▒ ░░      ░
     ░    ░          ░ ░              ░  ░         ░
                     ░ ░
    "

    trap 'clear; return' SIGTSTP
    while true; do
	date_only=$(TZ=Asia/Tokyo date '+%d-%m-%Y')
        date_oita=$(TZ=Asia/Tokyo date '+%H:%M:%S')
        date_jakarta=$(TZ=Asia/Jakarta date '+%H:%M:%S')
        combined_date="$date_only || Ōita-shi at $date_oita & Bandung at $date_jakarta"
        printf "\r$combined_date |> press C-z to start"
        sleep 1
    done
}

realtime_clock
