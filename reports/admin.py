from django.contrib import admin
from .models import State, City, Category, Report
from django.utils.html import format_html
from django.urls import reverse


@admin.register(State)
class StateAdmin(admin.ModelAdmin):
    list_display = ['id', 'name']
    search_fields = ['name']

@admin.register(City)
class CityAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'state']
    list_filter = ['state']
    search_fields = ['name']

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['id', 'title', 'icon']

@admin.register(Report)
class ReportAdmin(admin.ModelAdmin):
    list_display = ['id','display_name', 'city', 'category', 'is_approved', 'created_at', 'delete_button']
    list_filter = ['city', 'category', 'is_approved']
    search_fields = ['text', 'display_name']
    list_editable = ['is_approved']

    def delete_button(self, obj):
        delete_url = reverse('admin:reports_report_delete', args=[obj.pk])
        return format_html(
            '<a class="button" style="background-color: #ba2121; color: white; padding: 3px 10px; border-radius: 4px;" href="{}">حذف</a>',
            delete_url
        )
    delete_button.short_description = 'عملیات سریع'