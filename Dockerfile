# 使用官方的 Debian 镜像作为基础镜像
FROM debian:latest

# 安装所需的工具和库
RUN apt-get update && apt-get install -y \
    g++ \
    cmake

# 创建一个工作目录
WORKDIR /usr/src/app

# 复制当前目录内容到容器内的工作目录
COPY . .

# 编译 C++ 程序
RUN g++ -o hello main.cpp

# 定义启动容器时运行的命令
CMD ["./hello"]
