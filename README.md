<div align="center">
<img src="kbrcheen/logo.svg" alt="خبرچین" width="300"/>
# 📡 خبرچین
### پلتفرم گزارش‌های مردمی و وقایع محلی
 
[![Python](https://img.shields.io/badge/Python-3.12-3776AB?style=flat-square&logo=python&logoColor=white)](https://python.org)
[![Django](https://img.shields.io/badge/Django-5.x-092E20?style=flat-square&logo=django&logoColor=white)](https://djangoproject.com)
[![PHP](https://img.shields.io/badge/PHP-8.3-777BB4?style=flat-square&logo=php&logoColor=white)](https://php.net)
[![Nginx](https://img.shields.io/badge/Nginx-1.24-009639?style=flat-square&logo=nginx&logoColor=white)](https://nginx.org)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](LICENSE)
 
---
 
> *«هر شهروند یک خبرنگار است»*
 
</div>
---
 
## 🌍 خبرچین چیست؟
 
**خبرچین** یک پلتفرم متن‌باز برای ثبت و انتشار گزارش‌های مردمی است. هر کسی می‌تواند یک رویداد محلی، یک مشکل شهری، یا یک خبر را گزارش دهد — و پس از تأیید توسط ادمین، برای همه قابل مشاهده می‌شود.
 
هدف: **شفافیت محلی** از طریق **مشارکت مردمی**.
 
---
 
## ✨ امکانات
 
| امکان | توضیح |
|-------|--------|
| 📝 **ثبت گزارش** | هر کاربر می‌تواند خبر یا رویداد محلی ثبت کند |
| 🗺️ **فیلتر استانی** | جستجو و مشاهده گزارش‌ها بر اساس استان و شهر |
| ✅ **سیستم تأیید** | گزارش‌ها قبل از انتشار توسط ادمین بررسی می‌شوند |
| 🔐 **پنل ادمین** | مدیریت کامل گزارش‌ها از طریق پنل Django |
| 📊 **گزارش‌گیری** | آمار و تحلیل گزارش‌های ثبت‌شده |
| 📱 **ریسپانسیو** | طراحی سازگار با موبایل و دسکتاپ |
 
---
 
## 🛠️ تکنولوژی‌ها
 
```
Frontend  →  PHP 8.3 (رابط کاربری سایت اصلی)
Backend   →  Django 5 + Python 3.12 (پنل ادمین)
Server    →  Nginx + Gunicorn
Database  →  MySQL
OS        →  Ubuntu 24 LTS
```
 
---
 
## 🚀 راه‌اندازی محلی
 
### پیش‌نیازها
 
- Python 3.12+
- PHP 8.3+
- MySQL
- Nginx
### نصب
 
```bash
# کلون کردن پروژه
git clone https://github.com/yourusername/kbrcheen.git
cd kbrcheen
 
# ساخت محیط مجازی
python3 -m venv venv
source venv/bin/activate
 
# نصب وابستگی‌ها
pip install -r requirements.txt
 
# تنظیم دیتابیس
cp kbrcheen/config.example.php kbrcheen/config.php
# مقادیر دیتابیس را در config.php وارد کنید
 
# اجرای migrations
python manage.py migrate
 
# ساخت superuser برای پنل ادمین
python manage.py createsuperuser
 
# اجرای سرور
python manage.py runserver
```
 
### دسترسی
 
| آدرس | توضیح |
|------|--------|
| `http://localhost` | سایت اصلی |
| `http://localhost:8000/admin` | پنل ادمین Django |
 
---
 
## 📁 ساختار پروژه
 
```
kbrcheen/
├── kbrcheen/           # هسته اصلی پروژه
│   ├── settings.py     # تنظیمات Django
│   ├── urls.py         # مسیریابی
│   ├── wsgi.py         # تنظیمات WSGI
│   ├── index.php       # صفحه اصلی سایت
│   ├── config.php      # تنظیمات اتصال دیتابیس
│   ├── add_report.php  # ثبت گزارش جدید
│   ├── all_reports.php # نمایش همه گزارش‌ها
│   └── get_cities.php  # API شهرها
├── reports/            # اپ گزارش‌ها
├── manage.py           # Django CLI
├── requirements.txt    # وابستگی‌های Python
└── README.md
```
 
---
 
## ⚙️ تنظیمات سرور (Production)
 
این پروژه روی سرور با معماری زیر راه‌اندازی شده:
 
```
کاربر → Nginx (80/443) → PHP-FPM  (سایت اصلی)
                       → Gunicorn:8000 (پنل ادمین Django)
```
 
فایل سرویس Gunicorn در `/etc/systemd/system/gunicorn.service` قرار دارد.
 
---
 
## 🤝 مشارکت
 
مشارکت در پروژه آزاد است!
 
1. پروژه را Fork کنید
2. یک branch جدید بسازید: `git checkout -b feature/ویژگی-جدید`
3. تغییرات را commit کنید: `git commit -m 'افزودن ویژگی جدید'`
4. push کنید: `git push origin feature/ویژگی-جدید`
5. یک Pull Request باز کنید
---(LICENSE) منتشر شده است.
 
---
 
<div align="center">
ساخته شده با ❤️ برای شهروندان ایران
 
**[🌐 وبسایت](https://kbrcheen.ir)** • **[📬 تماس](mailto:info@kbrcheen.ir)**
 
</div>
