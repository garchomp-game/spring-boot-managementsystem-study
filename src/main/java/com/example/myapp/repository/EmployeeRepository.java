package com.example.myapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.myapp.model.Employee;

public interface EmployeeRepository
extends JpaRepository<Employee, Long> {


}
