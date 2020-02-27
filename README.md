# myfirstdockerapp

Docker container with the following requirements:
  - Working systemd inside of the container.
  - Working httpd service running on port 80
  - Working ipservice provide information of date/time, OS, uptime, mem utilization, load averages, IP address, weathter, running process
  
  

Here we show you how we can create a sample test container.

Git clone https://github.com/1acidburn/myfirstdockerapp.git

Then build it.

docker build --rm --no-cache -t test .

Launch it.

docker run --privileged --name test -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -d  test

Finally use it.

1. docker ps
2. docker exec -it <container id> bash

To check custom service inside container: systemctl status ipservice.service
To check Apache httpd service inside container: systemctl status httpd.service
Apache Web server is available on http://104.40.205.113/
