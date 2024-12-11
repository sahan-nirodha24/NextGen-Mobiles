var imageno =1;
        displayimg(imageno);

        function nextimg(n){
            displayimg(imageno += n)
        }

        function currentSlide(n){
            displayimg(imageno = n)
        }

        function displayimg(n){
            var i;
            var image = document.getElementsByClassName("image");
            var dots = document.getElementsByClassName("dot");

            if(n > image.length){
                imageno = 1;
            }

            if(n < 1){
                imageno = image.length;
            }

            for(i=0; i < image.length; i++){
                image[i].style.display = "none";
            }

            for(i=0; i < dots.length; i++){
                dots[i].className = dots[i].className.replace(" active", "");
            }

            image[imageno - 1].style.display ="block";
            dots[imageno - 1].className += " active";

        }

        document.addEventListener("DOMContentLoaded", function() {
            const searchIcon = document.querySelector(".search-icon"); 
            const searchContainer = document.querySelector(".search-container");
        
            searchIcon.addEventListener("click", function(event) {
                event.stopPropagation(); 
                searchContainer.classList.toggle("active"); 
                searchIcon.style.visibility = "visible";
               
                if (searchContainer.classList.contains("active")) {
                    searchContainer.querySelector("input[type='text']").focus(); 
                }
            });
           
            document.addEventListener("click", function(event) {
                if (!searchIcon.contains(event.target) && !searchContainer.contains(event.target)) {
                    searchContainer.classList.remove("active");
                }
            });
        });


        let lastScrollTop = 0;
        const header = document.getElementById('header');

        window.addEventListener('scroll', function() {
            const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

            if (scrollTop > lastScrollTop) {
                // Scrolling down
                header.classList.add('hidden');
            } else {
                // Scrolling up
                header.classList.remove('hidden');
            }
            lastScrollTop = scrollTop <= 0 ? 0 : scrollTop; // For Mobile or negative scrolling
        });