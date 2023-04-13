package com.example.employeemanager.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.employeemanager.model.Employee;
import com.example.employeemanager.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;

	@GetMapping("/danhsachnhanvien")
	public String list(Model model) {
		model.addAttribute("listEmployees", employeeService.getAllEmployees());
		return "danhsachnhanvien";
	}

	@GetMapping("/{id}")
	public String getEmployee(@PathVariable String id, Model model) {
		Employee employeeObj = employeeService.getEmployee(id);
		model.addAttribute("employee", employeeService.getEmployee(id));
		if (employeeObj == null) {
			throw new RuntimeException("Employee not found");
		}
		return "chitietnhanvien";
	}
	
	@GetMapping("/edit/{id}")
	public String editEmployee(@PathVariable String id, Model model) {
		Employee employeeObj = employeeService.editEmployee(id);
		model.addAttribute("employee", employeeService.editEmployee(id));
		if (employeeObj == null) {
			throw new RuntimeException("Employee not found");
		}
		return "suanhanvien";
	}
	
	@GetMapping("/themnhanvien")
	public String addEmployee(Model model) {
		return "themnhanvien";
	}
}
