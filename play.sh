#!/bin/bash

# Copyright (C) 2025 (Discco-Nektted)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

# ······································
# :░█▀█░█░░░█░░                        :
# :░█▀█░█░░░█░░                        :
# :░▀░▀░▀▀▀░▀▀▀                        :
# :░█░█░█▀▀░█░░░█░░                    :
# :░█▀█░█▀▀░█░░░█░░                    :
# :░▀░▀░▀▀▀░▀▀▀░▀▀▀                    :
# :░█░█░█▀█░█░░░█▀▀░█▀█░█▀▀░█░█░█▀▀░█▀▄:
# :░█░█░█░█░█░░░█▀▀░█▀█░▀▀█░█▀█░█▀▀░█░█:
# :░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀░▀▀░:
# ······································
# Pseudo Port for Linux (Click And Play) by Discco-Nektted


# Verifica si el archivo Mesen existe
if [ ! -f "./Mesen" ]; then
    echo "The program 'Mesen' is not in the current directory."
    exit 1
fi

# Asegura que Mesen tenga permisos de ejecución
if [ ! -x "./Mesen" ]; then
    echo "Granting execution permissions to 'Mesen'..."
    chmod +x ./Mesen
fi

# Verifica si AllHellUnleashed.nes existe
if [ ! -f "AllHellUnleashed.nes" ]; then
    echo "📂 'AllHellUnleashed.nes' doesn't exist, looking for another .nes ROM..."

    # Busca cualquier archivo .nes
    nes_rom=$(ls *.nes 2>/dev/null | head -n 1)

    if [ -z "$nes_rom" ]; then
        echo "No .NES ROMs were found in the directory. You can download All Hell Unleashed from the following website: https://8bitslasher.itch.io/ahu"
        exit 1
    fi

    echo "'$nes_rom' found. Renaming to 'AllHellUnleashed.nes'..."
    mv "$nes_rom" "AllHellUnleashed.nes"
fi

# Ejecuta Mesen con la ROM
echo "Run './Mesen AllHellUnleashed.nes'..."
./Mesen AllHellUnleashed.nes
