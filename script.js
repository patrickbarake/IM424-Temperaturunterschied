console.log("Hello, World");

async function fetchData() {
    try { 
        const response = await fetch('./endpoint.php');
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Error:', error);
    }
}

function getLast7Days() {
    const dates = [];
    const today = new Date();

    for (let i = 6; i >= 0; i--) {
        const date = new Date(today);
        date.setDate(today.getDate() - i);
        dates.push(date.toISOString().split('T')[0]);
    }

    return dates;
}

function formatDate(dateStr) {
    const date = new Date(dateStr);
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    return `${day}.${month}.${year}`;
}

function processLast7DaysTemperatureData(data, last7Days) {
    const dailyData = {};

    last7Days.forEach(date => {
        dailyData[date] = { total: 0, count: 0, average: 0 };
    });

    data.forEach(value => {
        const date = value.created.split(' ')[0];
        const temperature = parseFloat(value.temperature);

        if (last7Days.includes(date)) {
            dailyData[date].total += temperature;
            dailyData[date].count += 1;
            dailyData[date].average = Math.round((dailyData[date].total / dailyData[date].count) * 10) / 10;
        }
    });

    return last7Days.map(date => dailyData[date].average);
}

async function main() {
    const data = await fetchData();
    const last7Days = getLast7Days();
    const bernData = processLast7DaysTemperatureData(data.bern, last7Days);
    const churData = processLast7DaysTemperatureData(data.chur, last7Days);

    const formattedDates = last7Days.map(formatDate);

    const ctx = document.getElementById('chart');
    new Chart(ctx, {
        type: 'line',
        data: {
            labels: formattedDates,
            datasets: [
                {
                    label: 'Bern',
                    data: bernData,
                    borderWidth: 1,
                    borderColor: "red",
                },
                {
                    label: 'Chur',
                    data: churData,
                    borderWidth: 1,
                    borderColor: "yellow",
                }
            ]
        },
        options: {
            scales: {
                y: {
                    title: {
                      display: true,
                      text: 'Temperatur (°C)',
                    },
                    min: 0,
                    max: 40
                }
            }
        }
    });
}

main();
