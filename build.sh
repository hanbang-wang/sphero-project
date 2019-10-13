apt update
apt install -y python python-pip bluetooth bluez libbluetooth-dev libudev-dev libusb-1.0-0-dev curl git
pip install virtualenv
cd /root
python -m virtualenv r2d2
. r2d2/bin/activate
curl -L -o latest.tar.gz https://yarnpkg.com/latest.tar.gz
tar xfz latest.tar.gz
mv yarn-*/lib/* r2d2/lib/
mv yarn-*/bin/* r2d2/bin/
rm -r latest.tar.gz yarn-*
python -m pip install nodeenv
nodeenv -p --node=10.15.3
cd /root/spherov2.js
yarn install
cd /root/spherov2.js/lib
yarn rebuild