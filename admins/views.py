from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from django.shortcuts import render, redirect
from accounts.auth import admin_only, user_only
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.template import context
from .models import *
from pickabook.models import *
from django.contrib import messages
from .forms import NotificationsForm


@admin_only
@login_required
def admin_dashboard(request):
    return render(request, 'admins/dashboard.html')


@login_required
@admin_only
def admin_dashboard(request):
    books = Books.objects.all()
    books_count = books.count()
    category = Category.objects.all()
    category_count = category.count()
    quote = Quotes.objects.all()
    quote_count = quote.count()
    news = News.objects.all()
    news_count = news.count()
    user = User.objects.filter(is_staff=0)
    user_count = user.count()
    admin = User.objects.filter(is_staff=1)
    admin_count = admin.count()

    notification = Notifications.objects.all()
    notification_count = notification.count()

    context ={
        'books': books_count,
        'category': category_count,
        'quote': quote_count,
        'news':news_count,
        'user': user_count,
        'admin':admin_count,
        'notification': notification_count
    }
    return render(request, 'admins/dashboard.html', context)


@admin_only
def get_notifications(request):
    notification= Notifications.objects.all().order_by('-id')
    context={
        'notifications':notification,
        'activate_notification': 'active'
    }
    return render(request, 'admins/notifications.html', context)


@admin_only
def delete_notifications(request, notifications_id):
    notification = Notifications.objects.get(id=notifications_id)
    notification.delete()
    messages.add_message(request, messages.SUCCESS, 'Notification Deleted Succesfully')
    return redirect("/admins/get_notifications")


@admin_only
def notification_form(request):
    if request.method == "POST":
        form = NotificationsForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, "Quote added succesfully")
            return redirect("/admins/notifications")
        else:
            messages.add_message(request, messages.ERROR, "unable to add Quote")
            return render(request, 'admin/view_notifications.html', {'form_notification': form})
    context = {
        'form_notification': NotificationsForm,
        'activate_notification': 'active'
    }
    return render(request, 'admins/view_notifications.html', context)


@login_required
@admin_only
def show_users(request):
    users = User.objects.filter(is_staff=0).order_by('-id')
    context = {
        'users': users
    }
    return render(request, 'admins/user.html', context)

@admin_only
@login_required
def delete_user(request, user_id):
    user = User.objects.get(id=user_id)
    user.delete()
    messages.add_message(request, messages.SUCCESS, 'User Deleted Successfully')
    return redirect("admins/user.html")

@login_required
@admin_only
def show_admins(request):
    admins = User.objects.filter(is_staff=1).order_by('-id')
    context = {
        'admins': admins
    }
    return render(request, 'admins/admin.html', context)

@login_required
@user_only
def password_change_user(request):
    if request.method == "POST":
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)
            messages.add_message(request, messages.SUCCESS, 'Password has been changed Successfully')
            return redirect('/admins/password_change_user')
        else:
            messages.add_message(request, messages.ERROR, 'Something went wrong')
            return render(request, 'admins/password_change_user.html', {'password_change_form': form})

    context = {
        'password_change_form': PasswordChangeForm(request.user),
        'activate_password': 'active'
    }
    return render(request, 'admins/password_change_user.html', context)


@login_required
@admin_only
def promote_user(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = True
    user.save()
    messages.add_message(request, messages.SUCCESS, 'User is successfully promoted to admin')
    return redirect('/admins/admins')


@login_required
@admin_only
def demote_admin(request, user_id):
    admin = User.objects.get(id=user_id)
    admin.is_staff = False
    admin.save()
    messages.add_message(request, messages.SUCCESS, 'Admin is demoted to user')
    return redirect('/admins/users')

