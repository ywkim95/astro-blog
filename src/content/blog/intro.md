---
title: '나의 첫 Astro 블로그 글'
description: 'Astro와 마크다운으로 글을 쓰는 방법을 알아봅니다. 이 설명은 구글 검색 결과에도 표시됩니다.'
pubDate: '2025-09-25'
heroImage: '/placeholder-hero.jpg'
author: '내 이름'
tags: ["astro", "blogging", "learning"]
---

# Astro 블로그에 오신 것을 환영합니다!

이것은 저의 첫 번째 블로그 글입니다. Astro는 정말 빠르고 사용하기 쉽습니다.

## 왜 Astro를 사용할까요?

* **빠른 속도**: 정적 HTML로 빌드되어 로딩이 매우 빠릅니다.
* **쉬운 사용법**: 마크다운으로 글을 쓸 수 있어 편리합니다.
* **유연성**: React, Vue 등 다른 프레임워크와 함께 사용할 수 있습니다.

## 코드 예시

Astro에서는 이렇게 간단하게 컴포넌트를 만들 수 있습니다:

```astro
---
const name = "Astro";
const greeting = `Hello, ${name}!`;
---

<div class="greeting">
  <h1>{greeting}</h1>
  <p>Welcome to my blog!</p>
</div>

<style>
  .greeting {
    color: #333;
    padding: 1rem;
  }
</style>
```

JavaScript 함수 예시:

```javascript
function calculateSum(a, b) {
  // 두 숫자를 더하는 함수
  const result = a + b;
  console.log(`${a} + ${b} = ${result}`);
  return result;
}

const sum = calculateSum(5, 3);
```

CSS 스타일링:

```css
.blog-post {
  max-width: 800px;
  margin: 0 auto;
  padding: 2rem;
  background: #ffffff;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.highlight {
  color: #ea580c;
  font-weight: bold;
}
```

터미널 명령어:

```bash
# 개발 서버 시작
npm run dev

# 빌드
npm run build

# 프로덕션 미리보기
npm run preview
```

![Astro 로고 이미지](/astro-logo.png)