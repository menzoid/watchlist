import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["A free online movie playlist service."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
