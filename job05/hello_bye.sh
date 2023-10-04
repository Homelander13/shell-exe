if [ $# -eq 0 ]; then
  echo "Usage: ./hello.bye.sh [Hello|Bye]"
  exit 1
fi 

if [ "$1" == "Hello" ]; then
  echo "Bonjour je suis un script !"
elif [ "$1" == "Bye" ]; then
  echo "Au revoir et bonne journée !"
else
  echo "Usage: ./hello_bye.sh [Hello|Bye]"
  exit 1
fi

