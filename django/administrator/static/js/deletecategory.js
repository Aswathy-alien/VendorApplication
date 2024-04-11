$(document).ready(function() {
    // Ajax request to handle category deletion
    $(".delete-btn").on("click", function(e) {
        e.preventDefault();
        var categoryId = $(this).data("category-id");
        $.ajax({
            type: "POST",
            url: "/adminviewcategory/", // URL to handle deletion in Django views
            data: {
                category_id: categoryId,
                csrfmiddlewaretoken: '{{ csrf_token }}' // Required for CSRF protection
            },
            success: function(response) {
                // Remove the table row if deletion is successful
                if (response.success) {
                    $("#category-" + categoryId).remove();
                }
            }
        });
    });
});