let index = 0;
const slides = document.querySelector('.slides');
const totalSlides = slides.children.length;

document.querySelector('.btn-next').addEventListener('click', () => {
  changeSlide(1);
});

document.querySelector('.btn-prev').addEventListener('click', () => {
  changeSlide(-1);
});

function changeSlide(step) {
  index += step;
  if (index >= totalSlides) {
    index = 0;
  } else if (index < 0) {
    index = totalSlides - 1;
  }
  slides.style.transform = `translateX(-${index * 600}px)`;
}

setInterval(() => {
  changeSlide(1);
}, 10000); 