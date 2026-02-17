# Cafe Management System

A digital ordering and business management platform for cafes. Streamlines ordering processes, provides menu management, and delivers sales analytics.

## Features

- **Order Management:** Real-time order entry and tracking interface
- **Statistics Panel:** Daily/monthly sales data and trend analysis
- **Dynamic Menu:** Easily updatable menu management
- **Authentication:** Role-based login system (Admin/Waiter)
- **Modern UI:** User-friendly and responsive interface

## Tech Stack

| Category | Technology |
|----------|-----------|
| Frontend | HTML5, CSS3, JavaScript |
| Database | MySQL |

## Project Structure

```
cafe-management-system/
├── login.html              # Login screen
├── order-screen.html       # Main ordering interface
├── menu.html               # Menu management
├── orders.html             # Order tracking
├── daily-stats.html        # Daily analytics
├── monthly-stats.html      # Monthly analytics
├── most-popular.html       # Popular items report
├── js/                     # JavaScript modules
├── css/                    # Styling files
└── cafe-database-schema.sql # Database schema
```

## Getting Started

```bash
git clone https://github.com/batu3384/cafe-management-system.git
cd cafe-management-system
mysql -u root -p < cafe-database-schema.sql
# Open login.html in your browser
```

## License

MIT License
