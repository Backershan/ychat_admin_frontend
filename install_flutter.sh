#!/bin/bash
set -e

# Install Flutter only if not already present
if [ ! -d "flutter" ]; then
  echo "Cloning Flutter SDK..."
  git clone https://github.com/flutter/flutter.git -b stable --depth 1
else
  echo "Flutter SDK already exists, skipping clone."
fi

# Add Flutter to PATH
export PATH="$PATH:`pwd`/flutter/bin"

# Enable web support & pre-cache
flutter doctor
flutter config --enable-web
