if (($1 == 0))
then 
    rlaunch --gpu 8 --cpu 20 --memory 150000   --positive-tags 2080ti  -- python tools/train_net.py --config-file $2 --num-gpus 8 --machine-rank 0 --num-machines 2  --dist-url tcp://127.0.0.1:12345 
elif (($1 == 1))
then
    ip=`cat tmpfile`
    rlaunch --gpu 8 --cpu 20 --memory 150000  --positive-tags 2080ti  -- python tools/train_net.py --config-file $2  --num-gpus 8 --machine-rank 1 --num-machines 2  --dist-url tcp://$ip:12345 
elif (($1 == 2)) #one node
then
    rlaunch --gpu 8 --cpu 20 --memory 150000   --positive-tags 2080ti -- python tools/train_net.py --config-file $2  --num-gpus 8 dataloader.train.total_batch_size=8 train.max_iter=180000
elif (($1 == 3)) #one node
then
    rlaunch --gpu 8 --cpu 20 --memory 150000   --positive-tags 2080ti -- python tools/train_net.py --config-file $2 --eval  --num-gpus 8 dataloader.train.total_batch_size=8 train.max_iter=180000
else #debug
    rlaunch --gpu 1 --cpu 4 --memory 150000   --positive-tags 2080ti -- python tools/train_net.py --config-file $2  --num-gpus 1 dataloader.train.total_batch_size=1 #model.criterion.matcher.debug_mode=True
fi