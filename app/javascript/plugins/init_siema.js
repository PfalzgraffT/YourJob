import Siema from 'siema';

const initSiema = () => {
    const siema = new Siema({
        loop: true
    });
    document.querySelector('.prev').addEventListener('click', () => siema.prev());
    document.querySelector('.next').addEventListener('click', () => siema.next());
    // siema.next();
};

export { initSiema };
