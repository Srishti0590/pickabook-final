from django.urls import path
from . import views

from django.contrib.auth import views as auth_views

urlpatterns = [
    path('dashboard', views.admin_dashboard),
    path('users', views.show_users),
    path('admins', views.show_admins),
    path('promote/<int:user_id>', views.promote_user),
    path('demote/<int:user_id>', views.demote_admin),
    path('delete_user/<int:user_id>', views.delete_user),
    path('notifications', views.get_notifications),
    path('add_notifications', views.notification_form),
    path('delete_notification', views.delete_notifications),
    path('password_change', auth_views.PasswordChangeView.as_view(
        template_name='admins/password_change.html')),
    path('password_change_done', auth_views.PasswordChangeView.as_view(
        template_name='admins/password_change_done.html'), name='password_change_done'),

    path('password_change_user', views.password_change_user),

]