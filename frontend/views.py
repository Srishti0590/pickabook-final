from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect

from accounts.auth import user_only
from admins.models import Notifications
from frontend.forms import WritingForm, ContactusForm
# from frontend.models import favourite
from pickabook.models import Quotes, Category, Books, News
from django.db.models import Q
from django.http import HttpResponse, Http404


@login_required
@user_only
def homepage(request):
    context = {
        'activate_homepage': 'active'
    }
    return render(request, 'frontend/homepage.html', context)


def aboutus(request):
    context = {
        'activate_homepage': 'active'
    }
    return render(request, 'frontend/aboutus.html', context)


def contactus(request):
    context = {
        'form': ContactusForm,
    }
    if request.method == "POST":
        form = ContactusForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, "Sent Successfully")
            return redirect("/pickabook/contactus")

        else:
            messages.add_message(request, messages.ERROR, 'Contact form is not added')
    return render(request, 'frontend/contact.html', context)


def services(request):
    context = {
        'activate_homepage': 'active'
    }
    return render(request, 'frontend/ourservice.html', context)


def notifications(request):
    notification = Notifications.objects.all().order_by('-id')
    context = {
        'notifications': notification,
        'activate_notification_user': 'active'
    }
    return render(request, 'frontend/notifications.html', context)


def show_quotes(request):
    quotes = Quotes.objects.all().order_by('-id')
    context = {
        'quotes': quotes,
        'activate_quotes_user': 'active'
    }
    return render(request, 'frontend/show_quotes.html', context)


def show_categories(request):
    categories = Category.objects.all().order_by('-id')
    context = {
        'categories': categories,
        'activate_category': 'active'
    }
    return render(request, 'frontend/show_categories.html', context)


def show_books(request, category_id):
    category = Category.objects.get(id=category_id)
    context = {
        'category': category,
        'activate_book': 'active'
    }
    return render(request, 'frontend/show_books.html', context)


def all_books(request):
    book = Books.objects.all().order_by('-id')
    context = {
        'book': book,
        'activate_book': 'active'
    }
    return render(request, 'frontend/all_books.html', context)


def recommend(request):
    book = Books.objects.filter(Q(book_author="Nepolean Hill") | Q(book_author="Louisa May Alcott (1832-1888)"))
    context = {
        'book': book,
        'activate_book': 'active'
    }
    return render(request, 'frontend/all_books.html', context)


def book_detail(request ):
    book = Books.objects.get
    context = {
        'book': book,
        'activate_book_detail': 'active'
    }
    return render(request, 'frontend/book_detail.html', context)


def show_news(request):
    news = News.objects.all().order_by('-id')
    context = {
        'news': news,
        'activate_news': 'active'
    }
    return render(request, 'frontend/show_news.html', context)


@user_only
@login_required
def writing_form(request):
    if request.method == "POST":
        form = WritingForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, "Thank you for sharing your creativity")
            return redirect("/frontend/writings")
        else:
            messages.add_message(request, messages.ERROR, "Sorry, an error occurred. Please try again later")
            return render(request, 'frontend/writing.html', {'form_writing': form})
    context = {
        'form_writing': WritingForm,
        'activate_writing': 'active'
    }
    return render(request, 'frontend/writing.html', context)

#
# def download(request, path):
#     file_path = os.path.join(settings.MEDIA_ROOT, path)
#     if os.path.exists(file_path):
#         with open(file_path, 'rb') as fh:
#             response = HttpResponse(fh.read(), content_type="application/adminupload")
#             response['Content-Disposition'] = 'inline;filename=' + os.path.basename(file_path)
#             return response
#
#     raise Http404


# @login_required
# @user_only
# def add_to_favourite(request, book_id):
#     user = request.user
#     news = Books.objects.get(id=book_id)
#     check_item_presence_favourite = favourite.objects.filter(user=user, news=news)
#     if check_item_presence_favourite:
#         messages.add_message(request, messages.ERROR, 'Item is already present in your favourite list')
#         return redirect('/news/show_news')
#     else:
#         favourites = favourite.objects.create(news=news, user=user)
#         if favourites:
#             messages.add_message(request, messages.SUCCESS, 'News added to favourites')
#             return redirect('/news/my_favourite')
#         else:
#             messages.add_message(request, messages.ERROR, 'Unable to add news to favourites')
#
#
# @login_required
# @user_only
# def show_favourite_items(request):
#     user = request.user
#     items = favourite.objects.filter(user=user)
#     context = {
#         'items': items,
#         'activate_my_favourite': 'active'
#     }
#     return render(request, 'news/get_favourites.html', context)
#
# @login_required
# @user_only
# def remove_favourite_item(request, favourite_id):
#     item = favourite.objects.get(id=favourite_id)
#     item.delete()
#     messages.add_message(request, messages.SUCCESS, 'News removed sucessfully')
#     return redirect('/news/my_favourite')
