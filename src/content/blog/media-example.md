---
title: '미디어 파일 사용 예시'
description: 'Astro 블로그에서 이미지와 영상을 사용하는 실제 예시입니다.ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ'
pubDate: '2025-09-26'
heroImage: '/images/placeholder-hero.jpg'
author: 'Astro 개발자'
tags: ["astro", "media", "images", "videos", "tutorial"]
---

# 미디어 파일 사용 예시

이 포스트는 Astro 블로그에서 다양한 미디어 파일을 사용하는 방법을 보여줍니다.

## 이미지 사용법

### 기본 이미지
마크다운의 기본 이미지 문법을 사용할 수 있습니다:

![예시 이미지](/images/placeholder-image.jpg)

### HTML 이미지 태그
더 세밀한 제어가 필요한 경우 HTML 태그를 사용하세요:

<img src="/images/placeholder-image.jpg" alt="예시 이미지" width="400" height="300" loading="lazy">

### 반응형 이미지
화면 크기에 따라 다른 이미지를 보여줄 수 있습니다:

<picture>
  <source media="(max-width: 768px)" srcset="/images/mobile-image.webp">
  <source media="(min-width: 769px)" srcset="/images/desktop-image.webp">
  <img src="/images/fallback-image.jpg" alt="반응형 이미지" loading="lazy">
</picture>

## 영상 사용법

### 기본 비디오
<video width="100%" height="400" controls>
  <source src="/videos/demo-video.mp4" type="video/mp4">
  <source src="/videos/demo-video.webm" type="video/webm">
  브라우저가 비디오를 지원하지 않습니다.
</video>

### 자동 재생 비디오 (음소거)
자동 재생되는 짧은 데모나 GIF 대신 사용하기 좋습니다:

<video width="100%" height="300" autoplay muted loop>
  <source src="/videos/auto-demo.mp4" type="video/mp4">
</video>

### 포스터 이미지가 있는 비디오
비디오가 로드되기 전까지 보여줄 썸네일을 설정할 수 있습니다:

<video width="100%" height="400" controls poster="/images/video-poster.jpg">
  <source src="/videos/tutorial.mp4" type="video/mp4">
  <source src="/videos/tutorial.webm" type="video/webm">
</video>

## 외부 미디어 사용

### YouTube 임베드
<iframe width="100%" height="400" src="https://www.youtube.com/embed/dQw4w9WgXcQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen loading="lazy"></iframe>

### 외부 이미지
![외부 이미지](https://picsum.photos/600/400)

## 최적화 팁

1. **WebP 형식 사용**: 더 작은 파일 크기로 빠른 로딩
2. **Lazy Loading**: `loading="lazy"` 속성으로 필요할 때만 로드
3. **적절한 크기**: 실제 표시 크기에 맞는 이미지 사용
4. **압축**: 이미지와 비디오를 적절히 압축하여 사용

## 파일 구조 권장사항

```
public/
  images/
    blog/
      2025-09-26-media-example/
        hero.webp
        screenshot-1.png
        diagram.svg
  videos/
    blog/
      2025-09-26-media-example/
        demo.mp4
        tutorial.webm
```

이렇게 체계적으로 관리하면 미디어 파일을 효율적으로 사용할 수 있습니다!

---

**참고**: 실제 운영 환경에서는 이미지 최적화, CDN 사용, lazy loading 등을 통해 성능을 개선하는 것이 중요합니다.