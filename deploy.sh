git pull
git submodule update --init --recursive

echo "$SUDO_PASSWORD" | sudo -S docker-compose build
echo "$SUDO_PASSWORD" | sudo -S systemctl restart kumano-docker.service
