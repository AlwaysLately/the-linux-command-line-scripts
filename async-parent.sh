#!/bin/bash

# async-parent: asynchronus demo

echo "Parent: starting..."

echo "Parent: launching child script..."
sh async-child.sh &
pid=$!
echo "Parent: child (PID : $pid) launched..."

echo "Parent: continuing..."
sleep 2

echo "Parent: pausing to wait for child to finish..."
wait $pid

echo "Parent: child is finished. continuing..."
echo "Parent: parent is done. Exitting..."



