<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!--jsp:forward page="/egovSampleList.do"/ -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Weather View</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>

	<div class="card">
		<div class="search">
			<input type="text" placeholder="ennter city name" spellcheck="false">
			<button>
				<img src="images/search.png">
			</button>
		</div>
		<div class="error">
			<p>Invalid city name</p>
		</div>
		<div class="weather">
			<img src="images/rain.png" class="weather-icon">
			<h1 class="temp">22°C</h1>
			<h2 class="city">Jongga-ro, Jung-gu</h2>
			<div class="details">
				<div class="col">
					<img src="images/humidity.png">
					<div>
						<p class="humidity">59%</p>
						<p>Humidity</p>
					</div>
				</div>
				<div class="col">
					<img src="images/wind.png">
					<div>
						<p class="wind">2 m/s</p>
						<p>Wind Speed</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		const apiKey = "e004ee43046ddb95a345fce8693ba19d";
		const apiUrl = "https://api.openweathermap.org/data/2.5/weather?units=metric&appid=e004ee43046ddb95a345fce8693ba19d&q=";
		
		const searchBox = document.querySelector(".search input");
		const searchBtn = document.querySelector(".search button");
		const weatherIcon = document.querySelector(".weather-icon");

		async function checkWeather(city) {
			const response = await fetch(apiUrl + city );
			
			if(response.status == 404){
				document.querySelector(".error").style.display = "block";
				document.querySelector(".weather").style.display = "none";

			} else {
				var data = await response.json();
				
				document.querySelector(".city").innerHTML = data.name;
				document.querySelector(".temp").innerHTML = Math.round(data.main.temp) +"°C";
				document.querySelector(".humidity").innerHTML = data.main.humidity +"%";
				document.querySelector(".wind").innerHTML = data.wind.speed +" m/s";
				
				if(data.weather[0].main == "Clouds"){
					weatherIcon.src = "images/clouds.png"
				}
				else if(data.weather[0].main == "Clear"){
					weatherIcon.src = "images/clear.png"
				}
				else if(data.weather[0].main == "Rain"){
					weatherIcon.src = "images/rain.png"
				}
				else if(data.weather[0].main == "Drizzle"){
					weatherIcon.src = "images/drizzle.png"
				}
				else if(data.weather[0].main == "Mist"){
					weatherIcon.src = "images/mist.png"
				}
				
				document.querySelector(".weather").style.display = "block";
				document.querySelector(".error").style.display ="none";
			}

		}

		searchBtn.addEventListener("click", ()=>{
			checkWeather(searchBox.value);
		})
		
		
		
	</script>

</body>
</html>