package com.bikram.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents(){
		//create an empty list
		List<Student> students = new ArrayList<>();
		//add sample data
		students.add(new Student("Bikram","Paudel","bikram@gmail.com"));
		students.add(new Student("May","Jane","may@gmail.com"));
		students.add(new Student("John","Doe","john@gmail.com"));
		students.add(new Student("Hari","Adhikari","hari@gmail.com"));

		//return the list 
		return students;
	}
}
