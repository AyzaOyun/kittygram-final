from django.contrib import admin
from .models import Cat, Achievement, AchievementCat

admin.site.register(Cat)
admin.site.register(Achievement)
admin.site.register(AchievementCat)

