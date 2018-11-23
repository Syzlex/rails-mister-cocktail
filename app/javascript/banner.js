import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Find the perfect cocktail"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
