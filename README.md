# myfirstdockerapp

Here we show you how we can create a sample test container.

Git clone https://github.com/1acidburn/myfirstdockerapp.git

Then build it.

docker build --rm --no-cache -t test .

Launch it.

docker run --privileged --name test -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -d  test

Finally use it.
