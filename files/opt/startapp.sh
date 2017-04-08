#!/bin/bash
umask 0000

DISPLAY=:1.0 /opt/jaxx/Jaxx > /config/log/jaxx_output.log 2> /config/log/jaxx_error.log
