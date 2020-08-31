//import progressbar from 'progressbar';
const ProgressBar = require('progressbar.js')

const initProgressBar = () => {
  const matchingPercentages = document.querySelectorAll('.matching-percentage-js');

  matchingPercentages.forEach((matchingPercentage) => {
    const circle = new ProgressBar.Circle(matchingPercentage, {
      color: '#222222',
      // This has to be the same size as the maximum width to
      // prevent clipping
      strokeWidth: 4,
      trailWidth: 1,
      easing: 'easeInOut',
      duration: 1400,
      text: {
        autoStyleContainer: false
      },
      from: { color: '#FF0000', width: 3 },
      to: { color: '#00FF00', width: 5 },
      // Set default step function for all animate calls
      step: function(state, circle) {
        circle.path.setAttribute('stroke', state.color);
        circle.path.setAttribute('stroke-width', state.width);


        const value = Math.round(circle.value);
        if (value === 0) {
          circle.setText('');
        } else {
          circle.setText(value);
        }

      }
    });
    circle.value = '50';
    circle.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
    circle.text.style.fontSize = '2rem';
    circle.text.style.top = '63%';
    circle.animate(circle.value / 100);  // Number from 0.0 to 1.0
  });
};

export { initProgressBar };
