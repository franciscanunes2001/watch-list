import Typed from 'typed.js';


const BannerText = () => {
   new Typed('#typed-text', {
  strings: ['Javascript', 'It can be annoying!'],
  typeSpeed: 40,
  loop:true
});
}

export { BannerText }
