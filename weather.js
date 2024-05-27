const button = document.querySelector('.button');
const API_KEY = 'cd4e311164901e06e47b3d8f546073fe';
const iconSection = document.querySelector('.icon');
const tempSection = document.querySelector('.temp');  // 추가
const placeSection = document.querySelector('.place');  // 추가
const descSection = document.querySelector('.desc');  // 추가

// DOM 요소가 제대로 선택되었는지 확인합니다.
if (!button || !iconSection || !tempSection || !placeSection || !descSection) {
  console.error('One or more DOM elements are not found.');
  alert('필요한 DOM 요소를 찾을 수 없습니다. HTML 구조를 확인하세요.');
}


button.addEventListener('click', () => {
    navigator.geolocation.getCurrentPosition(success,fail);
  });
  
  const success = (position) => {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;

    getWeather(latitude, longitude);
  }

  const fail = () =>{
    alert("좌표를 받아올 수 없음");
  }

  const getWeather = (lat, lon) => {
    fetch(
      `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric&lang=kr`
    )
    .then((response) => {
      return response.json();
    }).then((json) => {
      const temperature = json.main.temp;
      const place = json.name;
      const description = json.weather[0].description;
      const icon = json.weather[0].icon;
      const iconURL = `http://openweathermap.org/img/wn/${icon}@2x.png`;

      tempSection.innerText = `${temperature} °C`;
      placeSection.innerText = place;
      descSection.innerText = description;
      iconSection.setAttribute('src', iconURL);
  }).catch((error) => {
        alert(`Error: ${error.message}`);
      });
  }