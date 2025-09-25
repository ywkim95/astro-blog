# ----------------- STAGE 1: Build -----------------
# Node.js 20-alpine 이미지를 기반으로 빌드 환경을 구성합니다. 'builder'라는 별명을 붙입니다.
FROM node:20-alpine AS builder

# 작업 디렉토리를 /app으로 설정합니다.
WORKDIR /app

# package.json 파일을 먼저 복사하여 의존성을 설치합니다. (캐시 활용)
COPY package*.json ./
RUN npm install

# 프로젝트의 나머지 소스 코드를 복사합니다.
COPY . .

# 프로덕션용으로 빌드합니다. 결과물은 /app/dist 폴더에 생성됩니다.
RUN npm run build


# ----------------- STAGE 2: Production -----------------
# 가벼운 Nginx 이미지를 기반으로 최종 서비스 환경을 구성합니다.
FROM nginx:stable-alpine

# 'builder' 스테이지의 /app/dist 폴더에 있던 빌드 결과물을
# Nginx의 기본 웹 루트 폴더(/usr/share/nginx/html)로 복사합니다.
COPY --from=builder /app/dist /usr/share/nginx/html

# 80번 포트를 외부에 노출합니다.
EXPOSE 80

# Nginx 서버를 실행합니다.
CMD ["nginx", "-g", "daemon off;"]