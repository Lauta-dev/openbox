#!/bin/bash

next() {
  local mpc_prev_musica=$(mpc next) # 
  local mpc_estado=$(mpc status %state%) # Obtener el estado de mpd
  local mpc_musica=$(mpc current) # Obtener el titulo de la cancion y el artista

  # con "mpc toggle" voy cambiando entre "playing" y "paused"
  if [[ $mpc_estado = "playing" ]]; then
    notify-send "Next" "$mpc_musica" 
  fi
}; next
