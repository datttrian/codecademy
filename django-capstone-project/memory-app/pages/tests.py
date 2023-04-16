from django.test import TestCase
from django.urls import reverse_lazy
from django.contrib.auth import get_user_model


class HomePageTest(TestCase):

    def test_home_page_status_code(self):
        response = self.client.get('')
        self.assertNotEqual(response.status_code, 200)

        self.user = get_user_model().objects.create_user(username='testuser', password='12345')
        self.client.login(username='testuser', password='12345')

        response = self.client.get('')
        self.assertEqual(response.status_code, 200)

    def test_home_page_reverse_lazy_status_code(self):
        response = self.client.get(reverse_lazy('home'))
        self.assertNotEqual(response.status_code, 200)

        self.user = get_user_model().objects.create_user(username='testuser', password='12345')
        self.client.login(username='testuser', password='12345')

        response = self.client.get(reverse_lazy('home'))
        self.assertEqual(response.status_code, 200)

    def test_home_page_template(self):
        self.user = get_user_model().objects.create_user(username='testuser', password='12345')
        self.client.login(username='testuser', password='12345')

        response = self.client.get(reverse_lazy('home'))
        self.assertTemplateUsed(response, 'pages/home.html')
