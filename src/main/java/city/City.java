package city;


public class City {

	private int cityId;
	private String cityName;
	private String countryCode;

	public City(int cityId, String cityName, String countryCode) {
		super();
		this.cityId = cityId;
		this.cityName = cityName;
		this.countryCode = countryCode;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

}
