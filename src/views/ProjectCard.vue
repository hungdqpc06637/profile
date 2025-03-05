<template>
  <div class="col-md-4 mb-4">
    <div class="card glass-card project-card" @mouseenter="handleMouseEnter" @mouseleave="handleMouseLeave">
      <div class="card-body position-relative">
        <div class="img-wrapper">
          <img :src="project.image" :alt="project.name" class="project-img" />
        </div>
        <div class="project-overlay">
          <span ref="typedEl"></span>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onUnmounted } from 'vue';
import Typed from 'typed.js';

const props = defineProps({
  project: {
    type: Object,
    required: true
  }
});

const typedEl = ref(null);
let typedInstance = null;

function handleMouseEnter() {
  if (typedInstance) {
    typedInstance.destroy();
  }
  typedInstance = new Typed(typedEl.value, {
    strings: [props.project.name],
    typeSpeed: 20,       
    startDelay: 300,   
    showCursor: false, 
    onBegin: () => {
      typedEl.value.classList.add('typing-animation');
    }
  });
}

function handleMouseLeave() {
  if (typedInstance) {
    typedInstance.destroy();
    typedInstance = null;
    if (typedEl.value) {
      typedEl.value.textContent = '';
      typedEl.value.classList.remove('typing-animation');
    }
  }
}

onUnmounted(() => {
  if (typedInstance) {
    typedInstance.destroy();
  }
});
</script>

<style scoped>
.project-card {
  position: relative;
  cursor: pointer;
}

.img-wrapper {
  width: 100%;
  height: 200px;
  overflow: hidden;
}

.project-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
}

.project-card:hover .project-img {
  transform: scale(1.05);
}

.project-overlay {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.75);
  color: #fff;
  opacity: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  transition: opacity 0.3s ease;
}

.project-card:hover .project-overlay {
  opacity: 1;
}

.typing-animation {
  animation: rainbow 2s linear infinite, glow 1.5s ease-in-out infinite alternate, bounce 1s ease-in-out infinite alternate;
}

@keyframes rainbow {
  0% {
    color: #ff69b4;
    text-shadow: 0 0 8px #ff69b4;
  }

  25% {
    color: #ffd700;
    text-shadow: 0 0 8px #ffd700;
  }

  50% {
    color: #00ffff;
    text-shadow: 0 0 8px #00ffff;
  }

  75% {
    color: #7cfc00;
    text-shadow: 0 0 8px #7cfc00;
  }

  100% {
    color: #ff4500;
    text-shadow: 0 0 8px #ff4500;
  }
}

@keyframes glow {
  from {
    text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
  }

  to {
    text-shadow: 0 0 20px rgba(255, 255, 255, 1);
  }
}

@keyframes bounce {
  0% {
    transform: translateY(0);
  }

  100% {
    transform: translateY(-5px);
  }
}
</style>