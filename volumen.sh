#!/bin/bash

valor_volumen=$(pulseaudio-ctl | grep "Volume level" | cut -d ":" -f2)
echo $valor_volumen



