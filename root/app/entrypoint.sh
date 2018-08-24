#!/bin/sh

if [ -e /etc/motion/motioneye ]; then
    echo '    INFO: Config dir exists. Skipping initialization.'
else
    echo '    INFO: First run. Initializing.'
    mkdir /etc/motion/motioneye
    mv /app/motion.conf /etc/motion/
    mv /app/motioneye.conf /etc/motion/motioneye/
    ln -s /etc/motion/motion.conf /etc/motion/motioneye/motion.conf
fi

meyectl startserver -c /etc/motion/motioneye/motioneye.conf