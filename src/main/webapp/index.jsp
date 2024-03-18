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

</body>
</html>