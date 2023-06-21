# 基于Node.js官方镜像构建
FROM node:16.20.0

# 镜像作者信息
LABEL maintainer="dolflan adolfjobs@offshoreview.xyz"

# 将当前目录拷贝至容器
ADD . /app

# 设置工作目录
WORKDIR /app

# 安装项目依赖
RUN npm install

# 启动命令
CMD ["npm", "run", "dev"]
