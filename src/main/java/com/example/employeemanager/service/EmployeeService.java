package com.example.employeemanager.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.employeemanager.dao.EmployeeDAO;
import com.example.employeemanager.model.Employee;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeDAO employeeDAO;
	
	
	public ArrayList<Employee> getAllEmployees() {
		return employeeDAO.getAllEmployees();
	}


	public Employee getEmployee(String id) {
		return employeeDAO.getEmployee(id);
	}


	public Employee editEmployee(String id) {
		return employeeDAO.editEmployee(id);
	}

}
