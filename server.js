// server.js
const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

// public 폴더를 정적 파일 경로로 사용
app.use(express.static(path.join(__dirname, 'public')));

// 헬스 체크용 엔드포인트
app.get('/health', (req, res) => {
  res.json({ status: 'ok', message: 'DevOps pipeline practice app is running!' });
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
