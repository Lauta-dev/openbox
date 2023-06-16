#!/bin/bash

estado() {
  # para mas info: escriba "man mpc" en la terminal

  local mpc_estado=$(mpc status %state%) # Obtener el estado de mpd
  local mpc_musica=$(mpc current) # Obtener el titulo de la cancion y el artista

  # con "mpc toggle" voy cambiando entre "playing" y "paused"
  if [[ $mpc_estado = "playing" ]]; then
    mpc toggle # Pausa la cancion
    notify-send "  Pausa" "  $mpc_musica" # Lanza una notificacion
  elif [[ $mpc_estado = "paused" ]]; then
    mpc toggle # reproduce la cancion
    notify-send  "  Escuchando" "  $mpc_musica" # Lanza una notificacion
  fi
}; estado

