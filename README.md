# docker_entrypoint_monitor

## Overview

Sometimes we want to run a service process in docker, and auto-restart it when it exits accidently.  
A simple posix-compatible shell script is enough for this goal. By the way, adding some code to handle SIGTERM gracefully is not complex, too.  

## Description

This script can be used in docker as pid 1 process. It will restart the CMD process when the process exits, and during docker stop, it boardcasts SIGTERM to all its child processes then waits.  


## Reference

<https://blog.csdn.net/qing101hua/article/details/93619508>  
<https://blog.phusion.nl/2015/01/20/docker-and-the-pid-1-zombie-reaping-problem/>  
<https://github.com/krallin/tini>

