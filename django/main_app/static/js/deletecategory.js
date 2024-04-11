// delete_category.js

function deleteCategory(categoryId) {
  if (confirm('Are you sure you want to delete this category?')) {
      // Send an AJAX request to delete the category
      fetch(`/delete_category/${category_Id}/`, {
          method: 'DELETE',
          headers: {
              'X-CSRFToken': '{{ csrf_token }}', // Include CSRF token for security
              'Content-Type': 'application/json'
          }
      })
      .then(response => {
          if (response.ok) {
              // Reload the page or update the UI as needed
              window.location.reload(); // Reload the page for demonstration
          } else {
              console.error('Failed to delete category');
          }
      })
      .catch(error => {
          console.error('Error:', error);
      });
  }
}
