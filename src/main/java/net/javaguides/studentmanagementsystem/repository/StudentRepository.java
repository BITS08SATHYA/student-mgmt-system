package net.javaguides.studentmanagementsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import net.javaguides.studentmanagementsystem.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

	
	
	
}
