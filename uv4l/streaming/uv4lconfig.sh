#!/usr/bin/env sh

sudo uv4l -nopreview --auto-video_nr --driver raspicam --encoding mjpeg --width 214 --height 120 --framerate 10 --server-option '--port=40000' --rotation 180 --server-option '--max-queued-connections=30' --server-option '--max-streams=25' --server-option '--max-threads=29'
