<template>
  <div>
    <!-- Hero Section -->
    <section class="hero d-flex align-items-center text-white text-center" data-aos="fade-in">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6" data-aos="fade-right">
            <h1 class="display-3 fw-bold">
              Xin chào, tôi là <span class="animated-gradient">Developer</span>
            </h1>
            <p class="lead">Fullstack Developer &amp; UI/UX Enthusiast</p>
            <a href="#projects" class="btn btn-primary btn-lg mt-3">Xem Dự Án</a>
          </div>
          <div class="col-md-6" data-aos="fade-left">
            <img src="/approved-profile-icon.svg" alt="Profile" class="profile-img rounded-circle shadow-lg">
          </div>
        </div>
      </div>
      <div class="scroll-indicator"></div>
    </section>

    <!-- Giới thiệu với thông tin chi tiết -->
    <section id="about" class="section bg-light" data-aos="fade-up">
      <div class="container text-center">
        <h2 class="section-title">Giới thiệu</h2>
        <p class="lead">
          <strong>Họ và tên:</strong> Nguyễn Văn A<br>
          <strong>Quê quán:</strong> Hà Nội, Việt Nam<br>
          <strong>Trường học:</strong> Đại học Bách Khoa Hà Nội<br>
          <strong>Danh hiệu:</strong> Sinh viên xuất sắc năm 2022
        </p>
      </div>
    </section>

    <!-- Kinh nghiệm làm việc -->
    <section id="experience" class="section bg-dark" data-aos="fade-up">
      <div class="container">
        <h2 class="section-title text-center text-white">Kinh nghiệm làm việc</h2>
        <div class="row mt-4">
          <div class="col-md-6 mb-4" v-for="exp in experiences" :key="exp.id">
            <div class="card glass-card experience-card">
              <div class="card-body">
                <h5 class="card-title">{{ exp.title }}</h5>
                <p class="card-text"><strong>Thời gian:</strong> {{ exp.time }}</p>
                <p class="card-text">{{ exp.description }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Kỹ năng -->
    <section id="skills" class="section" data-aos="fade-up">
      <div class="container text-center">
        <h2 class="section-title">Kỹ năng</h2>
        <div class="row mt-4">
          <div class="col-md-4 mb-4" v-for="skill in skills" :key="skill.id">
            <div class="card glass-card skill-card">
              <div class="card-body">
                <div class="icon-wrapper">
                  <img :src="skill.image" :alt="skill.name" class="skill-img">
                </div>
                <h5 class="card-title mt-3">{{ skill.name }}</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Dự án -->
    <section id="projects" class="section bg-dark" data-aos="fade-up">
      <div class="container text-center">
        <h2 class="section-title text-white">Dự án</h2>
        <div class="row mt-4">
          <div class="col-md-4 mb-4" v-for="project in projects" :key="project.id">
            <div class="card glass-card project-card">
              <div class="img-wrapper">
                <img :src="project.image" class="card-img-top" alt="Project">
                <div class="overlay">
                  <h5 class="overlay-text">{{ project.name }}</h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Liên hệ -->
    <section id="contact" class="section" data-aos="fade-up">
      <div class="container text-center">
        <h2 class="section-title">Liên hệ</h2>
        <p class="lead">Nếu bạn có dự án thú vị hay câu hỏi, hãy liên hệ qua email:</p>
        <a href="mailto:hungit@tybach.com.vn" class="btn btn-outline-primary btn-lg">Gửi Email</a>
      </div>
    </section>

    <!-- Footer -->
    <footer class="text-center py-3 bg-dark text-white">
      <p>&copy; 2025 My Profile | Designed with Bootstrap</p>
    </footer>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const experiences = ref([
  { id: 1, title: 'Software Engineer tại Công ty A', time: '2021 - 2023', description: 'Phát triển và duy trì ứng dụng web.' },
  { id: 2, title: 'Frontend Developer tại Công ty B', time: '2019 - 2021', description: 'Thiết kế giao diện và tối ưu UX.' }
]);

const skills = ref([
  { id: 1, name: 'Vue.js', image: '/vue-js-icon.png' },
  { id: 2, name: 'JavaScript', image: '/JavaScript-Logo.png' },
  { id: 3, name: 'Golang', image: '/golandlogo.png' },
  { id: 4, name: 'ReactJS', image: '/React.webp' },
  { id: 5, name: 'Java Spring Boot', image: '/spring.webp' },
  { id: 6, name: 'SQL Server', image: '/sql-icon.png' },
  { id: 7, name: 'My SQL', image: '/mysql.png' },
  { id: 8, name: 'C#', image: '/c.png' },
  { id: 9, name: 'C++', image: '/ccong.png' }
]);

const projects = ref([
  { id: 1, name: 'Dự án 1', image: 'https://placehold.co/600x400/png' },
  { id: 2, name: 'Dự án 2', image: 'https://placehold.co/600x400/png' },
  { id: 3, name: 'Dự án 3', image: 'https://placehold.co/600x400/png' }
]);
</script>

<style>
:root {
  --primary-color: #667eea;
  --accent-color: #764ba2;
  --text-color: #ffffff;
  --bg-dark: #1c1c1e;
  --bg-light: #f5f5f5;
  --transition-speed: 0.3s;
}

body {
  font-family: 'Poppins', sans-serif;
  margin: 0;
  padding: 0;
  background-color: var(--bg-light);
}

/* Hero Section */
.hero {
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  padding: 140px 0;
  position: relative;
  overflow: hidden;
}

.hero::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.35);
  z-index: 1;
}

.hero .container {
  position: relative;
  z-index: 2;
}

.hero h1 {
  text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.4);
}

.hero .btn-primary {
  background-image: linear-gradient(45deg, var(--primary-color), var(--accent-color));
  border: none;
  padding: 0.75rem 1.5rem;
  font-weight: bold;
  transition: transform var(--transition-speed), filter var(--transition-speed);
}

.hero .btn-primary:hover {
  filter: brightness(120%);
  transform: translateY(-3px);
}

.profile-img {
  max-width: 100%;
  border: 6px solid var(--bg-light);
  transition: transform var(--transition-speed);
}

.profile-img:hover {
  transform: scale(1.08) rotate(2deg);
}

/* Animated Gradient Text */
.animated-gradient {
  background: linear-gradient(90deg, var(--primary-color), var(--accent-color), var(--primary-color));
  background-size: 200% auto;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: gradientShift 4s linear infinite;
}

@keyframes gradientShift {
  0% {
    background-position: 0% center;
  }

  100% {
    background-position: 200% center;
  }
}

/* Scroll Indicator */
.scroll-indicator {
  position: absolute;
  bottom: 20px;
  left: 50%;
  transform: translateX(-50%);
  width: 35px;
  height: 35px;
  border: 2px solid var(--text-color);
  border-radius: 50%;
  animation: bounce 2s infinite;
  z-index: 2;
}

.scroll-indicator::after {
  content: '';
  display: block;
  width: 8px;
  height: 8px;
  background: var(--text-color);
  border-radius: 50%;
  margin: 10px auto 0;
}

@keyframes bounce {

  0%,
  100% {
    transform: translateX(-50%) translateY(0);
  }

  50% {
    transform: translateX(-50%) translateY(12px);
  }
}

/* Section Titles */
.section {
  padding: 100px 0;
}

.section-title {
  font-size: 3rem;
  font-weight: 700;
  margin-bottom: 50px;
  position: relative;
  color: var(--bg-dark);
}

.section-title::after {
  content: '';
  width: 90px;
  height: 5px;
  background: var(--primary-color);
  position: absolute;
  bottom: -12px;
  left: 50%;
  transform: translateX(-50%);
  border-radius: 3px;
}

/* Glassmorphism Cards */
.glass-card {
  background: rgba(255, 255, 255, 0.08);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.15);
  border-radius: 15px;
  transition: transform var(--transition-speed) ease, box-shadow var(--transition-speed) ease;
}

.glass-card:hover {
  transform: translateY(-12px);
  box-shadow: 0 20px 30px rgba(0, 0, 0, 0.35);
}

/* Skill Card */
.skill-card .card-body {
  padding: 2rem;
}

.icon-wrapper {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 90px;
  height: 90px;
  margin: 0 auto;
  border-radius: 50%;
  background: rgba(102, 126, 234, 0.15);
  transition: transform var(--transition-speed);
}

.skill-img {
  width: 80px;
  height: 80px;
  object-fit: contain;
  margin: 0 auto;
  display: block;
}

.skill-card:hover .icon-wrapper {
  transform: scale(1.15);
  animation: pulse 1.5s infinite;
}

@keyframes pulse {

  0%,
  100% {
    transform: scale(1.15);
  }

  50% {
    transform: scale(1.25);
  }
}

/* Project Card */
.project-card {
  position: relative;
  overflow: hidden;
  border-radius: 15px;
}

.img-wrapper {
  position: relative;
}

.project-card img {
  transition: transform var(--transition-speed);
  width: 100%;
  display: block;
}

.project-card:hover img {
  transform: scale(1.07);
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.65);
  opacity: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: opacity var(--transition-speed);
}

.project-card:hover .overlay {
  opacity: 1;
}

.overlay-text {
  color: var(--text-color);
  font-size: 1.8rem;
  font-weight: bold;
  transform: translateY(30px);
  transition: transform var(--transition-speed);
}

.project-card:hover .overlay-text {
  transform: translateY(0);
}

/* Footer */
footer {
  background: var(--bg-dark);
  color: var(--text-color);
  padding: 25px 0;
  font-size: 0.95rem;
}

/* Responsive */
@media (max-width: 768px) {
  .hero h1 {
    font-size: 2.5rem;
  }

  .section-title {
    font-size: 2.4rem;
  }
}
</style>
