import java.util.ArrayList;

public class Company {
	
	//-------------------properties------------------
	private int id;
	private String name;
	private String email;
	private String Password;
	private ArrayList<Coupon> coupons;
	
	
	//-------------------setter+getter------------------

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public ArrayList<Coupon> getCoupons() {
		return coupons;
	}

	public void setCoupons(ArrayList<Coupon> coupons) {
		this.coupons = coupons;
	}
	
	
	
	

    // -------------------constructors------------------
	public Company(int id, String name, String email, String password, ArrayList<Coupon> coupons) {
		setId(id);
		setName(name);
		setEmail(email);
		setPassword(password);
		setCoupons(coupons);
	}
	public Company(String name, String email, String password, ArrayList<Coupon> coupons) {
		this(0, name, email, password, coupons);
	}
	
	// -------------------methods-----------------

	@Override
	public String toString() {
		return "Company [id=" + id + ", name=" + name + ", email=" + email + ", Password=" + Password + ", coupons="
				+ coupons + "]";
	}
	
	

}
