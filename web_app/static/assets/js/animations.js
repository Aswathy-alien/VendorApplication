document.addEventListener("DOMContentLoaded", function() {
    const productCards = document.querySelectorAll(".product-card");
  
    const options = {
      root: null,
      rootMargin: "0px",
      threshold: 0.2 // Trigger when 20% of the element is visible
    };
  
    const observer = new IntersectionObserver(function(entries, observer) {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.style.opacity = 1; // Make the card visible
          observer.unobserve(entry.target); // Stop observing once it's visible
        }
      });
    }, options);
  
    productCards.forEach(card => {
      observer.observe(card); // Start observing each card
    });
  });

  