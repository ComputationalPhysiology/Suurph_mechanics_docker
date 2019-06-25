# Example 1

Build docker image
```shell
docker build -t fenics2018 .
```

Start docker container
```shell
docker run --name suurph_mech_notebook -v $(pwd):/home/fenics/shared
-d -p 127.0.0.1:8888:8888 fenics2018  'jupyter-notebook --ip=0.0.0.0'
```


Go to http://localhost:8888/, and get token from log
```shell
docker logs suurph_mech_notebook
```

Stop container
```shell
docker stop suurph_mech_notebook
```

Restart container
```shell
docker start suurph_mech_notebook
```
