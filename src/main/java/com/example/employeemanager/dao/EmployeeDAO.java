package com.example.employeemanager.dao;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.stereotype.Repository;

import com.example.employeemanager.model.Employee;

@Repository
public class EmployeeDAO {

	private ArrayList<Employee> employees;

	public ArrayList<Employee> initListEmployees() {
		employees = new ArrayList<>();
		employees.add(
				new Employee("H100", "Hào", true, new Date("14/09/2000"), "HCM", "0367751252", "IT NLU", "SV", 1000));
		employees.add(new Employee("A001", "Trần Văn Trà", true, new Date("11/11/1954"), "HCM", "012345", "BGD", "GD",
				10000000));
		employees.add(new Employee("A002", "Nguyễn Thị Mỹ Dung", false, new Date("13/12/1953"), "HCM", "012345", "SEO",
				"NV", 500000));
		return employees;
	}

	public ArrayList<Employee> getAllEmployees() {
		return initListEmployees();
	}

	public Employee getEmployee(String id) {
		ArrayList<Employee> employees = initListEmployees();
		for(int i = 0; i<employees.size(); i++) {
			if(id.equals(employees.get(i).getId())) {
				return employees.get(i);
			}
		}
		return null;
	}

	public Employee editEmployee(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
