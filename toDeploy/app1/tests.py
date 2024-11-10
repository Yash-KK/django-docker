from django.test import TestCase
from django.urls import reverse

class SimpleTestCase(TestCase):
    def test_homepage_status_code(self):
        """
        Test if the homepage (or any other view) returns a successful status code (200).
        """
        response = self.client.get(reverse('index'))
        self.assertEqual(response.status_code, 200)

    def test_form_submission(self):
        """
        Test the form submission and ensure that the entered name is displayed on the page.
        """
        # Simulate entering a name in the form and submitting
        response = self.client.post(reverse('index'), {'name': 'John Doe'})
        
        # Check if the page contains the entered name
        self.assertContains(response, "John Doe")
        
        # Check if the status code is 200 after form submission
        self.assertEqual(response.status_code, 200)
