import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Learn how to", "make craaaazy cocktails"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };