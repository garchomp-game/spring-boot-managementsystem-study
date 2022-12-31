package com.example.myapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.myapp.model.Department;

/**
 * DepartmentRepository
 */
public interface DepartmentRepository
extends JpaRepository<Department, Long> {

  
}
