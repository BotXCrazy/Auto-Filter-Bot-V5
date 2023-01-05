if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Brokenboy204/Auto-Filter-Bot-V5 /Auto-Filter-Bot-V5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-Bot-V5
fi
cd /Auto-Filter-Bot-V5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
