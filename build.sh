#!/bin/sh
# Wrap game.html (artifact body) into a standalone index.html
cd "$(dirname "$0")"
FAV="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32'%3E%3Crect width='32' height='32' rx='8' fill='%23c9e7d8'/%3E%3Cpath d='M16 6c-3 0-5 2-5 4l5 14 5-14c0-2-2-4-5-4z' fill='%23fbf8f1' stroke='%231d1a17' stroke-width='2' stroke-linejoin='round'/%3E%3Ccircle cx='16' cy='25' r='3.2' fill='%23e0523b' stroke='%231d1a17' stroke-width='2'/%3E%3Cpath d='M12 12h8M13.5 17h5' stroke='%231d1a17' stroke-width='1.4'/%3E%3C/svg%3E"
{
  printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="description" content="A clay 3D street badminton game in the browser: smash, drop and clear across a rope net in a Hyderabad gali, a Jakarta kampung and a Kuala Lumpur car park, each with its own street twist.">\n'
  printf '<meta property="og:title" content="Shuttle Lane">\n<meta property="og:description" content="1v1 street badminton in clay. Rope net, real shuttle drag, three lanes.">\n'
  printf '<meta name="theme-color" content="#c9e7d8">\n<link rel="icon" href="%s">\n' "$FAV"
  cat game.html
  printf '\n</html>\n'
} > index.html
