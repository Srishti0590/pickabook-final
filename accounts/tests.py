from django.test import SimpleTestCase

from django.urls import reverse, resolve
from accounts.views import login, profile, password_change_user

# Create your tests here.
class URLTests(SimpleTestCase):
    def test_login(self):
        url = reverse('login')
        self.assertEquals(resolve(url).func, login)

    def test_profile(self):
        url = reverse('profile')
        self.assertEquals(resolve(url).func, profile)

    def test_change_password(self):
        url = reverse('change')
        self.assertEquals(resolve(url).func, password_change_user)


