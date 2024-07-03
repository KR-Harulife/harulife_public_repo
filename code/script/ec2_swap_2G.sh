#/bin/bash
#128M * 16 = 2G
sudo dd if=/dev/zero of=/swapfile bs=128M count=16

# 권한 변경
chmod 600 /swapfile

# swap 파일로 포멧
mkswap /swapfile

# swap 메모리 등록
swapon /swapfile

# fstab 등록
echo "/swapfile                                 swap                    swap    defaults        0 0" >> /etc/fstab

