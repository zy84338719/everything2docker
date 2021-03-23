#!/bin/bash
git clone https://github.com/gopherdata/gophernotes.git gophernotes
cp Dockerfile ./gophernotes
docker build -t zy84338719/gophernotes:latest .
