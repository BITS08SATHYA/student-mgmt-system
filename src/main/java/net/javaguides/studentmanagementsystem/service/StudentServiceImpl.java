package net.javaguides.studentmanagementsystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.javaguides.studentmanagementsystem.entity.Student;
import net.javaguides.studentmanagementsystem.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentRepository repo;
	
	public StudentServiceImpl(StudentRepository repo) {
		this.repo = repo;
	}
	
	@Override
	public List<Student> getAllStudents() {
		return repo.findAll();
	}

	@Override
	public Student saveStudent(Student student) {
		return repo.save(student);
	}

	@Override
	public Student getStudentById(int id) {
		return repo.findById(id).get();
	}

	@Override
	public Student updateStudent(Student student) {
		return repo.save(student);
	}

	@Override
	public void deleteStudent(int id) {
		// TODO Auto-generated method stub
		repo.deleteById(id);
	}
	
	

}
