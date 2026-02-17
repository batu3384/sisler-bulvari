# ☕ Cafe Management System

![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black) ![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)

A comprehensive **Digital Ordering & Management Platform** tailored for cafes and restaurants. It streamlines the entire workflow from order taking to sales analytics, replacing traditional paper-based systems.

## ✨ Key Features

- **📱 Digital Order Interface:** Faster and error-free order entry with a responsive implementation (`order-screen.html`).
- **📊 Real-Time Sales Analytics:** Track daily (`daily-stats.html`) and monthly (`monthly-stats.html`) performance instantly.
- **🍔 Dynamic Menu Management:** Easily add, update, or remove menu items (`menu.html`).
- **👨🍳 Role-Based Access:** Secure login system distinguishing between Administrators and Wait Staff (`login.html`).
- **📈 Trend Analysis:** Identify best-selling items via the Popular Products report (`most-popular.html`).

## 📂 Project Structure

| File | Purpose |
|------|---------|
| `login.html` | Secure entry point for staff |
| `order-screen.html` | Primary interface for taking customer orders |
| `orders.html` | Kitchen display / Order status tracking |
| `menu.html` | Admin panel for menu editing |
| `daily-stats.html` | Report showing today's financial performance |
| `cafe-database-schema.sql` | SQL script to initialize the database |

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/batu3384/cafe-management-system.git
   ```

2. **Database Setup**
   - Create a MySQL database named `sisler_cafe`.
   - Import the `cafe-database-schema.sql` file:
     ```bash
     mysql -u root -p sisler_cafe < cafe-database-schema.sql
     ```

3. **Usage**
   - Deploy the files to a local web server (e.g., Apache, Nginx) or open `login.html` directly to test the UI.
   - Default Database Credentials need to be configured in your backend connection script.

## 📝 License
This project is open-sourced under the MIT License.
