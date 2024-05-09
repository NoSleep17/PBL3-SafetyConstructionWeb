package model;

public class CameraError {
	@Override
	public String toString() {
		return "CameraError [Camera_ID=" + Camera_ID + ", Camera_name=" + Camera_name + ", IP_address=" + IP_address
				+ ", Stastus=" + Stastus + ", Project_ID=" + Project_ID + ", Error_ID=" + Error_ID + ", Error_type="
				+ Error_type + ", Descript=" + descript + "]";
	}

	private int Camera_ID;
	private String Camera_name;
	private String IP_address;
	private String Stastus;
	private int Project_ID;
	private int Error_ID;
	private String Error_type;
	private String descript;

	public int getError_ID() {
		return Error_ID;
	}

	public void setError_ID(int error_ID) {
		Error_ID = error_ID;
	}

	public String getError_type() {
		return Error_type;
	}

	public void setError_type(String error_type) {
		Error_type = error_type;
	}

	public String getdescript() {
		return descript;
	}

	public void setdescript(String Descript) {
		descript = Descript;
	}

	public int getCamera_ID() {
		return Camera_ID;
	}

	public void setCamera_ID(int camera_ID) {
		Camera_ID = camera_ID;
	}

	public String getCamera_name() {
		return Camera_name;
	}

	public void setCamera_name(String camera_name) {
		Camera_name = camera_name;
	}
	
	public String getIP_address() {
		return IP_address;
	}

	public void setIP_address(String iP_address) {
		IP_address = iP_address;
	}

	public String getStastus() {
		return Stastus;
	}

	public void setStastus(String stastus) {
		Stastus = stastus;
	}

	public int getProject_ID() {
		return Project_ID;
	}

	public void setProject_ID(int project_ID) {
		Project_ID = project_ID;
	}
}