if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/filmotainment/Yoonseribot.git /Yoonseribot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Yoonseribot
fi
cd /Yoonseribot 
pip3 install -U -r requirements.txt
echo "Starting Yoonseri...."
python3 bot.py
