        </div>
        <div class="details">
            <h2>💰 تعلم أسرار النجاح المالي</h2>
            <p>كتاب رقمي يحتوي على 10 فصول تضم أكثر من 50 ألف كلمة تشرح بالتفصيل كيف تحقق الثروة.</p>
            <p>السعر: <strong class="price">$999.99</strong></p>
            <button id="buy-button" class="cta-button">💳 شراء الآن</button>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features animate__animated animate__fadeInUp">
        <h2>🔹 مميزات الكتاب</h2>
        <ul>
            <li>✅ خطوات عملية لتحقيق النجاح المالي</li>
            <li>✅ نصائح من رجال أعمال ناجحين</li>
            <li>✅ استراتيجيات مجربة في الاستثمار</li>
            <li>✅ أسرار الادخار وإدارة المال</li>
            <li>✅ دعم فني 24/7 بعد الشراء</li>
        </ul>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials animate__animated animate__fadeInUp">
        <h2>📣 آراء العملاء</h2>
        <div class="testimonial-cards">
            <div class="card">
                <p>"هذا الكتاب غير حياتي! أنصح به بشدة."</p>
                <span>- أحمد</span>
            </div>
            <div class="card">
                <p>"معلومات قيمة واستراتيجيات فعالة."</p>
                <span>- فاطمة</span>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="footer animate__animated animate__fadeInUp">
        <p>جميع الحقوق محفوظة &copy; 2025</p>
    </footer>
    color: #ff00ff;
    text-shadow: 0px 0px 10px rgba(255, 0, 255, 0.8);
}

.testimonial-cards {
    display: flex;
    justify-content: center;
    gap: 30px;
}

.card {
    background: rgba(255, 255, 255, 0.1);
    padding: 20px;
    border-radius: 15px;
    width: 300px;
    box-shadow: 0px 0px 20px rgba(255, 0, 255, 0.5);
    transition: transform 0.3s ease;
}

.card:hover {
    transform: translateY(-10px) rotate(3deg);
}

.card p {
    font-size: 1.1em;
    color: #ddd;
}

.card span {
    display: block;
    margin-top: 10px;
    font-weight: bold;
    color: #ff00ff;
}

footer {
    margin-top: 60px;
    padding: 20px;
    background: rgba(0, 0, 0, 0.8);
    font-size: 1em;
    color: #ddd;
    box-shadow: 0px 0px 20px rgba(255, 0, 255, 0.5);
}

/* Responsive Design */
@media (max-width: 768px) {
    .book-preview {
        flex-direction: column;
        text-align: center;
    }

    .details {
        text-align: center;
    }

    .book-preview img {
        width: 200px;
    }

    .testimonial-cards {
        flex-direction: column;
        align-items: center;
    }
}


// GSAP Animations
gsap.from(".header", { duration: 1, y: -50, opacity: 0 });
gsap.from(".book-preview", { duration: 1, y: 50, opacity: 0, delay: 0.5 });
gsap.from(".features", { duration: 1, y: 50, opacity: 0, delay: 1 });
gsap.from(".testimonials", { duration: 1, y: 50, opacity: 0, delay: 1.5 });
gsap.from(".footer", { duration: 1, y: 50, opacity: 0, delay: 2 });

// Buy Button Interaction
document.getElementById("buy-button").addEventListener("click", function() {
    alert("✅ شكراً لشرائك الكتاب! سيتم إرسال رابط التنزيل إلى بريدك الإلكتروني.");
});

// Three.js Background Animation
const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
const renderer = new THREE.WebGLRenderer({ alpha: true });
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

const geometry = new THREE.SphereGeometry(1, 32, 32);
const material = new THREE.MeshBasicMaterial({ color: 0xff00ff, wireframe: true });
const sphere = new THREE.Mesh(geometry, material);
scene.add(sphere);

camera.position.z = 5;

function animate() {
    requestAnimationFrame(animate);
    sphere.rotation.x += 0.01;
    sphere.rotation.y += 0.01;
    renderer.render(scene, camera);
}

animate();
