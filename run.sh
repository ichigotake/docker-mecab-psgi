#!/usr/bin/env bash

port=${PORT:-7654}

plackup app.psgi -p $port
