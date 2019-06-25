#/bin/bash
NAME="suurph_mech_notebook"
IMAGE="fenics2018"
if [ ! "$(docker ps -q -f name=${NAME})" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=${NAME})" ]; then
        # cleanup
        docker start ${NAME}
    fi
    # run your container
    docker run -ti --name ${NAME} -w /home/fenics/shared -v $(pwd):/home/fenics/shared -d -p 127.0.0.1:8888:8888 ${IMAGE} 'jupyter-notebook --ip=0.0.0.0' 
fi
