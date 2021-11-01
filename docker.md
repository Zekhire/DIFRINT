sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8083:5000 --name difrint_container difrint_image
sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8080:5000 --name cuda_check 0bedd0dfd4cb
sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8080:5000 --name cuda_check 6e5221b2f465
sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8088:5000 --name gcc_container gcc_image
sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8090:5000 --name pythoner ce61ffbf7f9a
sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8091:5000 --name cudaer 6e5221b2f465
sudo docker exec -it difrint_container /bin/bash
sudo docker exec -it gcc_container /bin/bash
sudo docker exec -it cudaer /bin/bash


sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8088:5000 --name gccer ad17e508027e
sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8100:5000 --name difrint_ubuntu_1 difrint_ubuntu_18_04_1


sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8101:5000 --name ubuntu 5a214d77f5d7
sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8101:5000 --name difrint_cudnn_cuda10_container difrint_cudnn_cuda10


sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8102:5000 --name cudnn 5a02663c1015
sudo docker run -dt --rm --gpus all -v "$(pwd)":/usr/src/app/ -p 8100:5000 --name difrint_ubuntu_1 difrint_ubuntu_18_04_1



export CFLAGS=-I/usr/local/cuda/targets/x86_64-linux/include/
export LDFLAGS=-L/path/to/cudnn/lib
export LD_LIBRARY_PATH=/path/to/cudnn/lib:$LD_LIBRARY_PATH