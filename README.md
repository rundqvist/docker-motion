# Video Surveillance System based on Motion and MotionEye
A small system running on Alpine Linux
https://hub.docker.com/r/rundqvist/motion/

## Features
* Both Motion and MotionEye in same image

## Components
* Alpine Linux
* Motion (https://github.com/Motion-Project/motion)
* MotionEye (https://github.com/ccrisan/motioneye)

## Run
```
$ sudo docker run \
    -d \
    -p 8765:8765 \
    -v /path/to/config:/etc/motion/ \
    -v /path/to/media:/var/lib/motioneye/ \
    -v /etc/localtime:/etc/localtime:ro \
    --name=motion \
    rundqvist/motion
```

## Use
UI available at http://[your-ip]:8765/
