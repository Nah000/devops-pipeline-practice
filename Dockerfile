# Node.js가 들어있는 공식 이미지 사용 (용량 작은 alpine 버전)
FROM node:20-alpine

# 컨테이너 안에서 작업할 디렉터리
WORKDIR /app

# package.json, package-lock.json만 먼저 복사
COPY package*.json ./

# 의존성 설치 (프로덕션 기준)
RUN npm install --production

# 나머지 소스 코드 복사
COPY . .

# 앱이 사용할 포트
EXPOSE 3000

# 컨테이너 시작 시 실행할 명령어
CMD ["npm", "start"]
