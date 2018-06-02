<%@page import="weather.Weather"%>
<%@page import="weatherclient.WeatherClient"%>
<%@page import="city.City"%>
<%@page import="java.util.List"%>
<%@page import="city.CityRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Indeks</title>
</head>
<body>
	<center>
		<font color="IndianRed"><h1>SERWIS POGODOWY NAJWIĘKSZYCH
				MIAST W POLSCE</h1></font>

		<h2>
			<font color="seagreen"><strong>Wybierz miasto,
					którego pogodę chcesz wyświetlić</strong></font>
		</h2>


		<%
			CityRepository cityRepository = new CityRepository();
			List<City> cityList = cityRepository.getAllCities();
			final String PARAMETER = "getcityid";
			for (City c : cityList) {
		%>
		<br /> <a href="?<%=PARAMETER%>=<%=c.getCityId()%>"><%=c.getCityName()%></a>

		<%
			}

			String cityName = "";
			if (request.getParameter(PARAMETER) != null) {
		%>
		<br /> <br />
		<h3>
			<font color="blue">Pogoda dla miasta:</font>
		</h3>

		<%
			String value = request.getParameter(PARAMETER);
				int newValue = Integer.parseInt(value);
				for (City c : cityList) {
					if (c.getCityId() == newValue) {

						cityName = c.getCityName();

					}
				}
		%>
		<h3><%=cityName%></h3>
		<br />

		<%
			WeatherClient weatherClient = new WeatherClient();
				Weather weather = weatherClient.getById(newValue);
		%>

		Poziom zachmurzenia:
		<%=weather.getClouds().getAll()%> %<br> Temperatura:
		<%=weather.getMain().getTemp()%> °C<br> Ciśnienie:
		<%=weather.getMain().getPressure()%> hPa<br> Prędkość wiatru:
		<%=weather.getWind().getSpeed()%> m/s<br>

		<%

			}
		%>


	</center>

</body>
</html>