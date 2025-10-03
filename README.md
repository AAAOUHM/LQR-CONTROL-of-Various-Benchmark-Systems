# LQG (Linear Quadratic Gaussian) Control for Benchmark Systems

This project demonstrates the application of **LQG (Linear Quadratic Gaussian) control** to several classical benchmark systems in control theory.  
The approach combines:  

- **System Linearization** at the chosen operating point  
- **LQR (Linear Quadratic Regulator)** design for optimal state-feedback control  
- **Kalman Filtering** for full-state estimation from noisy measurements  

The integration of regulator + estimator achieves robust **Type-1 Servo Control** for practical systems.  

---

## 🧪 Benchmark Systems Studied

1. **Liquid Level Control**  
   - Two interacting coupled-tank system  

2. **Cart-Inverted Pendulum**  
   - Position control of a cart with a pendulum balancing on top  

3. **Magnetic Levitation System**  
   - Height control of an iron object under electromagnetic force  

4. **Vehicle Suspension Control**  
   - Active suspension dynamics for a half car model

---

## ⚙️ Methodology
1. Linearize nonlinear system dynamics around the equilibrium point.  
2. Design an **LQR controller** to achieve optimal regulation.  
3. Implement a **Kalman Filter** to reconstruct unmeasured states from sensor data.  
4. Combine the controller and estimator into a complete **LQG scheme**.  

---

## ✨ Key Highlights
- Practical application of **optimal control theory** to real-world benchmark systems  
- Full demonstration of **state-feedback + estimation** loop  
- Covers a diverse set of classical systems widely used in research and teaching  

---
