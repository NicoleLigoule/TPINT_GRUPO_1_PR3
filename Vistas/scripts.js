document.addEventListener("DOMContentLoaded", function() {
    var collapseButtons = document.querySelectorAll("[data-bs-toggle='collapse']");
        
    collapseButtons.forEach(function(button) {
        button.addEventListener("click", function(event) {
            var target = document.querySelector(button.getAttribute("data-bs-target"));
                
            if (target.classList.contains("show")) {
                target.classList.remove("show");
            } else {
                document.querySelectorAll(".collapse.show").forEach(function(openCollapse) {
                    openCollapse.classList.remove("show");
                });
                target.classList.add("show");
            }
        });
    });
});
