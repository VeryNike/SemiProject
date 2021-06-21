package weather.model.vo;

public class Weather {

	private String day;
	private String hour;
	private String temp;
	private String wfKor;
	private String pop;
	
	

	public Weather(String day, String hour, String temp, String wfKor, String pop) {
		super();
		this.day = day;
		this.hour = hour;
		this.temp = temp;
		this.wfKor = wfKor;
		this.pop = pop;
	}

	public String getWfKor() {
		return wfKor;
	}

	public void setWfKor(String wfKor) {
		this.wfKor = wfKor;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getDay() {
		return day;
	}

	public void setHour(String hour) {
		this.hour = hour;
	}

	public String getHour() {
		return hour;
	}

	public void setTemp(String temp) {
		this.temp = temp;
	}

	public String getTemp() {
		return temp;
	}

	public void setPop(String pop) {
		this.pop = pop;
	}

	public String getPop() {
		return pop;
	}

	@Override
	public String toString() {
		return "Weather [day=" + day + ", hour=" + hour + ", temp=" + temp + ", pop=" + pop + ", wfKor=" + wfKor + "]";
	}
	

}
