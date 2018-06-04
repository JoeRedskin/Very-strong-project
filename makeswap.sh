size="1G" 
file_swap=/swapfile_$size.img 
sudo touch $file_swap
sudo fallocate -l $size /$file_swap
sudo mkswap /$file_swap 
sudo swapon -p 20 /$file_swap
