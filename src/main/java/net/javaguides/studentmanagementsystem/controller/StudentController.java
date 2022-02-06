package net.javaguides.studentmanagementsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.javaguides.studentmanagementsystem.entity.Student;
import net.javaguides.studentmanagementsystem.service.StudentService;

@Controller
public class StudentController {

	private StudentService service;

	public StudentController(StudentService service) {
		super();
		this.service = service;
	}
	
	
	// handler method to handle to list all students and return model and view
	@GetMapping("/students")
	public String listAllStudents(Model model) {
		model.addAttribute("students", service.getAllStudents());
		return "students";
	}
	
	// Add Student Feature
	@GetMapping("/students/new")
	public String createStudentForm(Model model) {
		// create student object to hold student form data
		Student student = new Student();
		model.addAttribute("student", student);
		return "create-student";
	}
	
	@PostMapping("/students")
	public String saveStudent(@ModelAttribute("student") Student student) {
		
		// if the student have an id, do update
		
		
		// if the student does not have an id, do an insert
		if(student.getId() == 0) {
			// insert a new record
			service.saveStudent(student);
		}else {
			service.updateStudent(student);
		}
		
		
		return "redirect:/students";
	}
	
	@GetMapping("/students/updateStudent")
	public String editStudentForm(@RequestParam("userId") int id ,@ModelAttribute("student") Student student) {
		Student mystudent = service.getStudentById(id);
		student.setId(mystudent.getId());
		student.setFirstName(mystudent.getFirstName());
		student.setLastName(mystudent.getLastName());
		student.setEmail(mystudent.getEmail());
		return "create-student";
	}
	
	@GetMapping("/students/deleteStudent")
	public String deleteStudentForm(@RequestParam("userId") int id) {
		service.deleteStudent(id);
		return "redirect:/students";
	}
	
}
