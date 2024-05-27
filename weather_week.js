async function fetchForecast() {
  let city = document.getElementById('city-input').value.trim();
  if (city) {
    let apiKey = 'cd4e311164901e06e47b3d8f546073fe'; // OpenWeatherMap API 키
    let url = `https://api.openweathermap.org/data/2.5/forecast?q=${city}&appid=${apiKey}&units=metric&lang=kr`;

    try {
      let response = await fetch(url);
      let data = await response.json();
      displayForecast(data);
    } catch (error) {
      console.error('날씨 예보 정보를 가져오는데 실패했습니다.', error);
    }
  }
}

function displayForecast(data) {
  let forecastDiv = document.getElementById('forecast-result');
  forecastDiv.innerHTML = '<h2 class="text-xl mb-4">3시간 간격 날씨 예보</h2>';

  data.list.forEach(item => {
    forecastDiv.innerHTML += `
          <div class="mb-3">
              <p><strong>${new Date(item.dt_txt).toLocaleString()}</strong></p>
              <p>온도: ${item.main.temp}°C</p>
              <p>상태: ${item.weather[0].description}</p>
          </div>
      `;
  });
}