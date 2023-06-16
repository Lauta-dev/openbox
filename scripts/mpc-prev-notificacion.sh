#!/bin/bash

prev() {
  local mpc_prev_musica=$(mpc prev)
  local mpc_estado=$(mpc status %state%) # Obtener el estado de mpd
  local mpc_musica=$(mpc current) # Obtener el titulo de la cancion y el artista

  # con "mpc toggle" voy cambiando entre "playing" y "paused"
  if [[ $mpc_estado = "playing" ]]; then
    notify-send "Prev" "$mpc_musica" 
  fi
}; prev
