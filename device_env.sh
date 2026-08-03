echo "========== OS =========="
cat /etc/os-release

echo "========== ARCH =========="
uname -m
uname -r

echo "========== GPU / DRIVER =========="
nvidia-smi

echo "========== DOCKER =========="
docker --version 2>&1 || true
docker info 2>&1 | head -n 40 || true

echo "========== NVIDIA CONTAINER TOOLKIT =========="
nvidia-ctk --version 2>&1 || true
dpkg -l | grep -E 'nvidia-container|docker' 2>/dev/null || \
rpm -qa | grep -E 'nvidia-container|docker' 2>/dev/null || true

echo "========== DISK =========="
df -h /

echo "========== MEMORY =========="
free -h

echo "========== CPU =========="
lscpu | grep -E 'Architecture|CPU\(s\)|Model name'

