package net.javaguides.studentmanagementsystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import net.javaguides.studentmanagementsystem.entity.Student;
import net.javaguides.studentmanagementsystem.repository.StudentRepository;

@SpringBootApplication
public class StudentManagementSystemApplication implements CommandLineRunner{

	public static void main(String[] args) {
		SpringApplication.run(StudentManagementSystemApplication.class, args);
	}

	@Autowired
	private StudentRepository repo;
	@Override
	public void run(String... args) throws Exception {
//		// TODO Auto-generated method stub
//		Student student1 = new Student("Rames","Fadatare", "ram@gmail.com");
//		Student student2 = new Student("Sathya","ram", "sathya@gmail.com");
//		Student student3 = new Student("Kee","Sathya", "kee@gmail.com");
//		
//		repo.save(student1);
//		repo.save(student2);
//		repo.save(student3);
	}

}
