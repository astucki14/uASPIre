#docker build -t ubu-deps . 
docker run --mount type=bind,source=$(pwd),target=/workspace/uASPIre ubu-deps
