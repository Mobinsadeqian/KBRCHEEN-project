from django.db import models

class State(models.Model):
    name = models.CharField(max_length=100, verbose_name="نام استان")

    class Meta:
        verbose_name = "استان"
        verbose_name_plural = "استان‌ها"

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
    def __str__(self):
        return self.name


class City(models.Model):
    name = models.CharField(max_length=50, unique=True, verbose_name="نام شهر")
    state = models.ForeignKey(State, on_delete=models.CASCADE, related_name="cities", verbose_name="استان")

    class Meta:
        verbose_name = "شهر"
        verbose_name_plural = "شهرها"

    def __str__(self):
        return f"{self.name} ({self.state.name})"

class Category(models.Model):
    title = models.CharField(max_length=50, verbose_name="عنوان دسته")
    icon = models.CharField(max_length=10, verbose_name="ایموجی آیکون")

    class Meta:
        verbose_name = "دسته‌بندی"
        verbose_name_plural = "دسته‌بندی‌ها"

    def __str__(self):
        return f"{self.icon} {self.title}"

class Report(models.Model):
    city = models.ForeignKey(City, on_delete=models.CASCADE, related_name="reports", verbose_name="شهر")
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name="reports", verbose_name="دسته‌بندی")
    display_name = models.CharField(max_length=50, default="ناشناس", verbose_name="نام نمایشی")
    text = models.TextField(max_length=500, verbose_name="متن گزارش")
    is_approved = models.BooleanField(default=True, verbose_name="تایید شده؟")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="زمان ثبت")

    class Meta:
        verbose_name = "گزارش"
        verbose_name_plural = "گزارش‌ها"
        ordering = ['-created_at']

    def __str__(self):
        return f"گزارش {self.display_name} در {self.city.name} - {self.category.title}"