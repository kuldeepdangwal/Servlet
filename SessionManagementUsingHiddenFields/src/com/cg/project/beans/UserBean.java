package com.cg.project.beans;

public class UserBean {
	String firstName,lastName,fruitName,movieName,bookName;
	public UserBean() {}
	public UserBean(String firstName, String lastName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
	}
	public UserBean(String firstName, String lastName, String fruitName, String movieName, String bookName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.fruitName = fruitName;
		this.movieName = movieName;
		this.bookName = bookName;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserBean other = (UserBean) obj;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "UserBean [firstName=" + firstName + ", lastName=" + lastName + "]";
	}
}
