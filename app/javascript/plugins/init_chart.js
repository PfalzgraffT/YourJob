const initChart = () => {

  const chartElement = document.getElementById('graph1');

  if (chartElement) {
    const ctx = chartElement.getContext('2d');
    const data = {
        // The data for our dataset
            labels: ['interpersonal_skills', 'rigor', 'independence', 'communication', 'teamwork', 'creativity', 'initiative', 'stress_management', 'perseverance', 'decision_making', 'curiosity', 'adaptability', 'enthusiam', 'flexibility', 'empathy'],
            datasets: [
            {
                label: 'User',
                //backgroundColor: 'rgb(255, 99, 132)',
                borderColor: 'rgb(255, 99, 132)',
                //borderWidth:
                data: [ 1, 4, 3, 2, 2, 3, 4, 3, 2, 5, 4, 1, 1, 2, 3]
            },
            {
                label: 'Recruiter',
                //backgroundColor: 'rgb(25, 99, 132)',
                borderColor: 'rgb(25, 99, 132)',
                data: [3, 3, 5, 4, 2, 3, 3, 5, 4, 1, 5, 2, 3, 4, 1]
            }
          ]
        };

        // Configuration options go here
    const options = {
      responsive: true,
      scale: {
        ticks: {
            beginAtZero: true,
            max: 5,
            min: 0,
            stepSize: 1
        }
      }
    }

    const config = {
      type: 'radar',
      data: data,
      options: options
    }
    const chart = new Chart(ctx, config)
  }
}

export { initChart };
