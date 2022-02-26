from django.urls import path, include
from . import views
from django.conf import settings
from django.conf.urls.static import static
from django.views.static import serve

urlpatterns = [
    path('home', views.homepage, name='my_homepage'),
    path('aboutus', views.aboutus),
    path('contactus', views.contactus),
    path('ourservices', views.services),
    path('notifications', views.notifications),
    path('quotes', views.show_quotes),
    path('explore', views.all_books),
    path('recommend', views.recommend),
    path('genres', views.show_categories),
    path('books/<int:category_id>', views.show_books),
    path('book', views.book_detail),
    path('news', views.show_news),
    path('writings', views.writing_form),
    # path(r'^download/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),
    # path('add_to_favourite/<int:news_id>', views.add_to_favourite),
    # path('my_favourite', views.show_favourite_items),
    # path('remove_favourite_item/<int:favourite_id>', views.remove_favourite_item),
]

# if settings.DEBUG:
#     urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
#     urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
