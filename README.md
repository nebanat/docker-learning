### Docker Commands

* `docker run {image}` - Run the image
    * ` -ti` - interactive mode
    * `--rm` - remove the container after it exits
    * `bash` - run the bash shell
        * `-c` - run the command
            * `"{command}"` - run the command
    * `--memory={memory}` - set the memory limit
    * `-d` - run in detached mode
    * `--cpu-shares={cpu}` - set the cpu shares
    * `-cpu-quota={cpu}` - set the cpu quota
    * `-p {port}:{port}` - expose a port
    * `-p {port}:{port}/udp` - expose a udp port
        * `/protocol` - the protocol to use
            * `tcp` - tcp protocol
            * `udp` - udp protocol
    * `--net` - set the network mode
        * `host` - host network mode
        * `bridge` - bridge network mode
* `docker ps` - List all running containers
* `docker ps -a` - List all containers
* `docker ps -l` - latest stoped container
*  `docker commit {container} {image}` - Commit a container to an image
* `docker images -a` - List all images
* `docker attach {container}` - Attach to a container
    * `ctrl+p` - copy to clipboard
    * `ctrl+q` - detach
* `docker exec {container} {command}` - Execute a command in a container
* `docker logs {container}` - Show the logs of a container
* `docker kill {container}` - Kill a container
* `docker rm {container}` - Remove a container
* `docker port {container}` - Show the ports of a container
* `docker build -t {image} {path}` - Build an image
    * `-t {image}` - name of the image
    * `{path}` - path to the dockerfile

### Dockerfile
* Basic instructions on how to build a docker image 

### Dockerfile instruction
* `FROM {image}` - Set the base image
* `MAINTAINER {name} {email} `
* `RUN {command}` - Run a command
* `ADD {source} {destination}` - Add a file or directory to the image
    * `{source}` - path to the file or directory
    * `{destination}` - destination path
* `ENV {key} {value}` - Set an environment variable
* `ENTRYPOINT {command}` - Set the entrypoint of the image; commands will be appended to the entrypoint
* `CMD {command}` - Set the default command to run when the image is run; commands will be replaced to the default command
* `EXPOSE {port}` - Expose a port
* `VOLUME {path}` - Create a volume
* `WORKDIR {path}` - Set the working directory; like `cd {path}`
* `USER {user}` - Set the user to run as

### Lessons

* Do not let yout containers fetch dependencies when they start 
* Do not leave important things in an unnamed containers


### netcat linux server - read more
- `nc -lp {port}` - listen on a port
    - `nc -{u}lp {port}` - for udp
- `nc localhost {port}` - connect to a port
    - `-u` - udp
- `nc host.docker.internal {port}` - connect to a port on the host

### Researches
- `ncat`
- `tcp` vs `udp`