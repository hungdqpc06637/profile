<template>
  <div>

    <section class="hero d-flex align-items-center text-center" data-aos="fade-in">
      <div class="container">
        <h1 class="display-3 fw-bold">
          Xin chào, tôi là <span class="animated-gradient">Developer</span>
        </h1>
        <p class="lead">Fullstack Developer &amp; UI/UX</p>
        <p class="description text-white">
          Với niềm đam mê phát triển phần mềm, tôi đã theo học chuyên ngành Phát Triển Phần Mềm tại một trường danh
          tiếng.
          Tôi chuyên xây dựng các ứng dụng web hiện đại, tối ưu trải nghiệm người dùng và đảm bảo hiệu năng vượt trội.
          Kinh nghiệm thực tiễn cùng kiến thức sâu rộng về công nghệ cho phép tôi tạo ra những giải pháp sáng tạo và
          hiệu quả.
        </p>
        <a href="#projects" class="btn btn-primary btn-lg mt-3" @click="launchFireworks">
          Xem Dự Án
        </a>
      </div>
      <img src="/images/approved-profile-icon.svg" alt="Profile"
        class="profile-img corner-img rounded-circle shadow-lg">
      <div class="scroll-indicator"></div>
    </section>




    <section id="about" class="section bg-light " data-aos="fade-up">
      <div class="container text-center">
        <h2 class="section-title  text-black" data-aos="fade-right" data-aos-duration="1000" data-aos-delay="100">
          Giới thiệu
        </h2>
        <div class="card p-4 shadow-lg custom-card" data-aos="flip-up" data-aos-duration="1000" data-aos-delay="500">
          <p class="lead mb-0">
            <strong>Họ và tên:</strong> Đinh Quốc Hưng<br>
            <strong>Quê quán:</strong> Cà Mau, Việt Nam<br>
            <strong>Trường học:</strong> Cao Đẳng FPT Polytechnic<br>
            <strong>Chuyên ngành:</strong> Phát Triển Phần Mềm<br>
            <strong>Danh hiệu:</strong> Sinh viên xuất sắc năm 2024
          </p>
        </div>
      </div>
    </section>




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

    <section id="skills" class="section" data-aos="fade-up">
      <div class="container text-center">
        <h2 class="section-title text-black">Kỹ năng</h2>
        <div class="row mt-4">
          <SkillCard v-for="skill in skills" :key="skill.id" :skill="skill" />
        </div>
      </div>
    </section>

    <section id="projects" class="section bg-dark" data-aos="fade-up">
      <div class="container text-center">
        <h2 class="section-title text-white">Dự án</h2>
        <div class="row mt-4">
          <ProjectCard v-for="project in projects" :key="project.id" :project="project" />
        </div>
      </div>
    </section>


    <section id="contact" class="section contact-section" data-aos="fade-up">
      <div class="container text-center">
        <!-- Tiêu đề với hiệu ứng fade-right -->
        <h2 class="section-title text-white" data-aos="fade-right" data-aos-duration="1000">
          Liên hệ
        </h2>
        <p class="lead text-light" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
          Nếu bạn có dự án thú vị hay câu hỏi, hãy liên hệ qua email:
        </p>
        <a href="mailto:hungit@tybach.com.vn" class="  btn-contact btn-lg mt-4" data-aos="zoom-in"
          data-aos-duration="1000" data-aos-delay="400">
          <i class="fas fa-envelope"></i> Gửi Email
        </a>
      </div>
    </section>


    <footer class="text-center py-3 bg-dark text-white">
      <p>&copy; 2025 My Profile | Designed with DINH QUOC HUNG</p>
    </footer>
  </div>
</template>

<script setup>
import { ref } from 'vue';
import confetti from 'canvas-confetti';
import SkillCard from './SkillCard.vue';
import ProjectCard from './ProjectCard.vue';

const experiences = ref([
  { id: 1, title: 'Software Engineer tại Công ty TNHH Tỷ Bách', time: '2021 - 2023', description: 'Phát triển và duy trì ứng dụng web.' },
  { id: 2, title: 'Frontend Developer tại Công ty TNHH Tỷ Xuân', time: '2024 - 2025', description: 'Thiết kế giao diện và tối ưu UX.' }
]);

const skills = ref([
  { id: 1, name: 'Vue.js', image: import.meta.env.BASE_URL + 'images/vue-js-icon.png', description: 'Framework JavaScript hiện đại để xây dựng giao diện người dùng.' },
  { id: 2, name: 'JavaScript', image: import.meta.env.BASE_URL + 'images/JavaScript-Logo.png', description: 'Ngôn ngữ lập trình mạnh mẽ cho web và server-side.' },
  { id: 3, name: 'Golang', image: import.meta.env.BASE_URL + '/images/golandlogo.png', description: 'Ngôn ngữ của Google, nổi bật về hiệu suất và tính đơn giản.' },
  { id: 4, name: 'ReactJS', image: import.meta.env.BASE_URL + '/images/React.webp', description: 'Thư viện của Facebook để xây dựng giao diện người dùng.' },
  { id: 5, name: 'Java Spring Boot', image: import.meta.env.BASE_URL + '/images/spring.webp', description: 'Framework Java mạnh mẽ cho ứng dụng web.' },
  { id: 6, name: 'SQL Server', image: import.meta.env.BASE_URL + '/images/sql-icon.png', description: 'Hệ quản trị cơ sở dữ liệu của Microsoft.' },
  { id: 7, name: 'My SQL', image: import.meta.env.BASE_URL + '/images/mysql.png', description: 'Hệ quản trị cơ sở dữ liệu mã nguồn mở phổ biến.' },
  { id: 8, name: 'C#', image: import.meta.env.BASE_URL + '/images/c.png', description: 'Ngôn ngữ lập trình của Microsoft cho phát triển đa nền tảng.' },
  { id: 9, name: 'C++', image: import.meta.env.BASE_URL + '/images/ccong.png', description: 'Ngôn ngữ mạnh mẽ cho phát triển hệ thống và ứng dụng hiệu năng cao.' }
]);
const projects = ref([
  {
    id: 1,
    name: 'Website Thương Mại Điện Tử Thời Trang Công Sở. Tích Hợp Thanh Toán VNPay Và Đăng Nhập Bằng Google',
    image: import.meta.env.BASE_URL + '/images/tmdt1.png'
  },
  {
    id: 2,
    name: 'Website Bán Lẻ Đồ Gia Dụng Cao Cấp. Tích Hợp Thanh Toán OnePay Và Xác Thực SMS',
    image: import.meta.env.BASE_URL + '/images/tmdt2.png'
  },
  {
    id: 3,
    name: 'Ứng Dụng Đặt Vé Xem Phim Online. Tích Hợp Thanh Toán Momo Và Đăng Nhập Facebook',
    image: import.meta.env.BASE_URL + '/images/tmdt3.jpg'
  },
  {
    id: 4,
    name: 'Nền Tảng Học Tập Trực Tuyến Cho Học Viên. Tích Hợp Video Call Và Thanh Toán Qua Cổng Ngân Hàng',
    image: import.meta.env.BASE_URL + '/images/tmdt4.png'
  },
  {
    id: 5,
    name: 'Hệ Thống Quản Lý Bán Hàng Cho Doanh Nghiệp. Tích Hợp CRM, Thanh Toán VNPay Và Đăng Nhập Google',
    image: import.meta.env.BASE_URL + '/images/tmdt6.jpg'
  },
  {
    id: 6,
    name: 'Website Thương Mại Điện Tử Đồ Nội Thất Hiện Đại. Tích Hợp Thanh Toán Momo Và Đăng Nhập Bằng Facebook.',
    image: import.meta.env.BASE_URL + '/images/tmdt5.png'
  }
]);

function launchFireworks() {
  confetti({
    particleCount: 100,
    spread: 70,
    origin: { y: 0.6 }
  });
  setTimeout(() => {
    confetti({
      particleCount: 80,
      spread: 100,
      origin: { y: 0.6 }
    });
  }, 300);
}
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

.hero {
  position: relative;
  overflow: hidden;
  padding: 140px 0;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
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
  transition: transform 0.3s ease;
}

.profile-img:hover {
  transform: scale(1.08) rotate(2deg);
}

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

.scroll-indicator {
  position: absolute;
  bottom: 20px;
  left: 50%;
  transform: translateX(-50%);
  width: 35px;
  height: 35px;
  border: 2px solid #ffffff;
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

.corner-img {
  position: absolute;
  top: 20px;
  right: 20px;
  width: 100px;
  z-index: 1;
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

.section {
  padding: 100px 0;
}

.section-title {
  font-size: 3rem;
  font-weight: 700;
  margin-bottom: 50px;
  position: relative;
  color: #ffffff;
}

.section-title::after {
  content: '';
  width: 90px;
  height: 5px;
  background: #667eea;
  position: absolute;
  bottom: -12px;
  left: 50%;
  transform: translateX(-50%);
}

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

.project-card {
  position: relative;
  overflow: hidden;
  border-radius: 15px;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.img-wrapper {
  position: relative;
}

.project-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

#projects {
  padding: 80px 0;
}

#projects .section-title {
  font-size: 2.5rem;
  margin-bottom: 30px;
}

#projects .row>[class*='col-'] {
  margin-bottom: 30px;
}

.project-card:hover {
  transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
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

@media (max-width: 768px) {
  .hero h1 {
    font-size: 2.5rem;
  }

  .section-title {
    font-size: 2.4rem;
  }
}


.contact-section {
  position: relative;
  padding: 80px 0;
  background: linear-gradient(135deg, #667eea, #764ba2);
  overflow: hidden;
}

/* Tạo hiệu ứng nền mờ với pattern (có thể thay thế URL pattern theo ý thích) */
.contact-section::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: url('https://www.transparenttextures.com/patterns/cubes.png');
  opacity: 0.1;
  z-index: 0;
}

.contact-section .container {
  position: relative;
  z-index: 1;
}

.section-title {
  font-size: 2.8rem;
  font-weight: bold;
  margin-bottom: 20px;
  position: relative;
}

/* Thêm đường kẻ gradient dưới tiêu đề */
.section-title::after {
  content: "";
  display: block;
  width: 50%;
  height: 4px;
  background: linear-gradient(90deg, #ff9a9e, #fad0c4);
  margin: 10px auto 0;
  border-radius: 2px;
}
  
.btn-contact {
  background-color: #000000;
  color: #ffffff;
  border: none;
  padding: 0.75rem 2rem;
  font-weight: 600;
  transition: all 0.3s ease;
  border-radius: 50px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
}
 
 
.btn-contact i {
  margin-right: 8px;
}
</style>
