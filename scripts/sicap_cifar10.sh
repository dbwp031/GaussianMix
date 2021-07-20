apt-get update
apt-get install -y libgl1-mesa-glx
apt-get install -y libglib2.0-0

pip install opencv-contrib-python

cd /root/volume/SICAP
python main_fix_max.py --dataset cifar10 --model WideResNetDropout --depth 28 --params 10 --batch 128 --beta_of_ricap 0.3 --postfix rand1.0fix
