#!/bin/bash
useradd usuario1 -m -c "Usuário 1" -s /bin/bash -p $(openssl passwd 123)
passwd usuario1 -e

useradd usuario2 -m -c "Usuário 2" -s /bin/bash -p $(openssl passwd 123)
passwd usuario2 -e

useradd usuario3 -m -c "Usuário 3" -s /bin/bash -p $(openssl passwd 123)
passwd usuario3 -e

useradd usuario4 -m -c "Usuário 4" -s /bin/bash -p $(openssl passwd 123)
passwd usuario4 -e

echo "Finalizado!!!"
