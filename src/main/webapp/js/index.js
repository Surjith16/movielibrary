document.addEventListener("DOMContentLoaded", function () {
  const images = ["https://vistapointe.net/images/the-shawshank-redemption-wallpaper-18.jpg", "https://picfiles.alphacoders.com/137/thumb-1920-137115.jpg", "https://www.themoviedb.org/t/p/original/eP5NL7ZlGoW9tE9qnCdHpOLH1Ke.jpg","http://4.bp.blogspot.com/-NEZLTudXKCI/URcqh8Mzr2I/AAAAAAAABzQ/qqxLuNPNP88/s1600/The+Godfather+Part+II+(1974).jpg","https://amc-theatres-res.cloudinary.com/v1579118427/amc-cdn/production/2/movies/11400/11393/Poster/p_800x1200_AMC_12AngryMen1957_10082019.jpg","https://img.moviesrankings.com/t/p/w1280/6lzgetyAEL6rKzeac7r9X7lRVkA.jpg","https://www.themoviedb.org/t/p/original/dbmVvwTwKxPZoZVz6YYoRv4fumz.jpg"];
  let currentIndex = 0;
  const displayedImage = document.getElementById("displayedImage");

  function updateImage() {
    displayedImage.style.opacity = 0;

    setTimeout(function () {
      displayedImage.src = images[currentIndex];
      currentIndex = (currentIndex + 1) % images.length;
      displayedImage.style.opacity = 1;
    }, 1000); // Change image after 1 second (adjust as needed)
  }

  // Update the image every 3 seconds (adjust the time interval as needed)
  setInterval(updateImage, 4000); // Change image every 4 seconds (including 1 second fade)
});

