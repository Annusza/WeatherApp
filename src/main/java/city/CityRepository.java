package city;


import java.util.ArrayList;
import java.util.List;

public class CityRepository {

	private List<City> polishCities;

	public List<City> addCities() {

		polishCities = new ArrayList<City>();

		polishCities.add(new City(4927854, "Warszawa", "PL"));
		polishCities.add(new City(3099434, "Gdañsk", "PL"));
		polishCities.add(new City(3094802, "Kraków", "PL"));
		polishCities.add(new City(3081368, "Wroc³aw", "PL"));
		polishCities.add(new City(7530858, "Poznañ", "PL"));
		polishCities.add(new City(3093133, "£ódŸ", "PL"));
		polishCities.add(new City(3096472, "Katowice", "PL"));

		return polishCities;

	}

	public List<City> getAllCities() { 
		if (polishCities == null) {
			try {
				addCities();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return polishCities;
	}

}
