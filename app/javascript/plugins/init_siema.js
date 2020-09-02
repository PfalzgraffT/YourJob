import Siema from 'siema';

const initSiema = () => {
    const slider = document.querySelector('.siema');
    if (slider) {
        let startIndex = 0;
        const firstUncompletedSkillIndex = Array.from(document.querySelectorAll('.skill-card')).findIndex((card) => {
            return card.dataset.skillCompleted === 'false'
        });
        if (firstUncompletedSkillIndex !== -1) { // si la function findIndex a trouve un element
            startIndex = firstUncompletedSkillIndex;
        }
        const siema = new Siema({ startIndex });
        document.querySelector('.prev').addEventListener('click', (event) => {
            event.preventDefault();
            siema.prev()
        });
        document.querySelector('.next').addEventListener('click', (event) => {
            event.preventDefault();
            siema.next()
        });
    }
};

export { initSiema };
