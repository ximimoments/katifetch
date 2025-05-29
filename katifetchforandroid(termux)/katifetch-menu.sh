#!/data/data/com.termux/files/usr/bin/bash

while true; do
  clear
  echo "📱 Katifetch for Android (Termux)"
  echo ""
  echo "1️⃣  Install Katifetch"
  echo "2️⃣  Update Katifetch"
  echo "3️⃣  Uninstall Katifetch"
  echo "4️⃣  Exit"
  echo ""
  read -p "Select an option [1-4]: " choice

  case $choice in
    1)
      bash install-android.sh
      read -p "🔁 Press Enter to return to menu..."
      ;;
    2)
      bash update-android.sh
      read -p "🔁 Press Enter to return to menu..."
      ;;
    3)
      bash uninstall-android.sh
      read -p "🔁 Press Enter to return to menu..."
      ;;
    4)
      echo "👋 Bye!"
      exit 0
      ;;
    *)
      echo "⚠️ Invalid option. Try again."
      sleep 1
      ;;
  esac
done
