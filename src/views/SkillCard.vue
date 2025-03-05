<template>
    <div class="col-md-4 mb-4">
        <div class="card glass-card skill-card" @mouseenter="handleMouseEnter" @mouseleave="handleMouseLeave">
            <div class="card-body position-relative">
                <div class="icon-wrapper">
                    <img :src="skill.image" :alt="skill.name" class="skill-img" />
                </div>
                <h5 class="card-title mt-3">{{ skill.name }}</h5>
                <div class="skill-info">
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
    skill: {
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
        strings: [props.skill.description],
        typeSpeed: 20,       // Tốc độ gõ chữ
        startDelay: 300,     // Thời gian chờ trước khi bắt đầu gõ
        showCursor: false,   // Ẩn con trỏ gõ
        onBegin: () => {
            // Thêm class để áp dụng các hiệu ứng chuyển màu, glow, bounce
            typedEl.value.classList.add('typing-animation');
        }
    });
}

function handleMouseLeave() {
    if (typedInstance) {
        typedInstance.destroy();
        typedInstance = null;
        if (typedEl.value) {
            // Xóa nội dung và loại bỏ hiệu ứng khi chuột rời
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
.skill-card {
    position: relative;
    cursor: pointer;
}

.skill-info {
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
    padding: 1rem;
    transition: opacity 0.3s ease;
}

.skill-card:hover .skill-info {
    opacity: 1;
}

/* Hiệu ứng gõ chữ với màu sắc sáng */
.typing-animation {
    animation: rainbow 2s linear infinite, glow 1.5s ease-in-out infinite alternate, bounce 1s ease-in-out infinite alternate;
}

/* Hiệu ứng chuyển màu neon */
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

/* Hiệu ứng ánh sáng (glow) */
@keyframes glow {
    from {
        text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
    }

    to {
        text-shadow: 0 0 20px rgba(255, 255, 255, 1);
    }
}

/* Hiệu ứng bounce nhẹ cho chữ */
@keyframes bounce {
    0% {
        transform: translateY(0);
    }

    100% {
        transform: translateY(-5px);
    }
}
</style>