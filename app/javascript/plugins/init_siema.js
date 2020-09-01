import Siema from 'siema';

const initSiema = () => {
    const siema = new Siema();
    document.querySelector('.prev').addEventListener('click', (event) => {
        event.preventDefault();
        siema.prev()
    });
    document.querySelector('.next').addEventListener('click', (event) => {
        event.preventDefault();
        siema.next()
    });
};

export { initSiema };