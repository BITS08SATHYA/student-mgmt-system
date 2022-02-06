package net.javaguides.studentmanagementsystem.service;

import java.util.List;

import net.javaguides.studentmanagementsystem.entity.Student;

public interface StudentService {

	List<Student> getAllStudents();
	Student saveStudent(Student student);
	Student getStudentById(int id);
	Student updateStudent(Student student);
	void deleteStudent(int id);
	
	
}
