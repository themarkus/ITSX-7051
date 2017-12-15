package edu.acc.j2ee.persist;

public class InfoBean implements java.io.Serializable {
	private String firstName;
	private String lastName;
	private int age;
	private String city;

	public void setFirstName( String s ) { firstName = s; }
	public void setLastName( String s ) { lastName = s; }
	public void setAge( int i ) { age = i; }
	public void setCity( String s ) { city = s; }
	public String getFirstName() { return firstName; }
	public String getLastName() { return lastName; }
	public int getAge() { return age; }
	public String getCity() { return city; }
}
