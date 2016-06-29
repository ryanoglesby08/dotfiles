#!/usr/bin/env bash

echo "Updating npm..."

npm install npm -g

npm set init.author.email "ryan.oglesby08@gmail.com"
npm set init.author.name "Ryan Oglesby"
npm set init.license "MIT"

echo "Done updating npm"
