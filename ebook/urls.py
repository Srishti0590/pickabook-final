from django.urls import path, include
from django.contrib.auth import views as auth_views
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('', include('pickabook.urls')),
    path('accounts/', include('accounts.urls')),
    path('accounts/', include('allauth.urls')),
    path('pickabook/', include('pickabook.urls')),
    path('admins/', include('admins.urls')),
    path('pickabook/', include('frontend.urls')),
    # path('quiz/', include('Quiz.urls'))

]
static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
