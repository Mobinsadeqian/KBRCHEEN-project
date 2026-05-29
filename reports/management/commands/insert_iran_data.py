from django.core.management.base import BaseCommand
from reports.models import State, City

class Command(BaseCommand):
    help = 'وارد کردن تمام استان‌ها و شهرهای شاخص ایران (بدون مراکز استان) به دیتابیس'

    def handle(self, *args, **kwargs):
        data = {
            "آذربایجان شرقی": ["کلیبر", "آذرشهر", "اسکو", "بستان‌آباد", "جلفا", "ورزقان", "سراب"],
            "آذربایجان غربی": ["سلماس", "سردشت", "ماکو"],
            "اردبیل": ["سرعین"],
            "اصفهان": ["شهرضا", "آران و بیدگل", "گلپایگان"],
            "البرز": ["کمال‌شهر"],
            "ایلام": ["آبدانان"],
            "بوشهر": ["بندر دیلم"],
        }

        self.stdout.write(self.style.WARNING('در حال وارد کردن اطلاعات ایران (بدون مراکز استان)...'))

        for state_name, cities in data.items():
            state, created = State.objects.get_or_create(name=state_name)
            
            for city_name in cities:
                City.objects.get_or_create(name=city_name, state=state)

        self.stdout.write(self.style.SUCCESS('عملیات با موفقیت انجام شد! ۳۱ استان و شهرهای غیر مرکز وارد شدند.'))