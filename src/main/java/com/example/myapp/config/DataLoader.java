package com.example.myapp.config;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import com.example.myapp.model.Department;
import com.example.myapp.repository.DepartmentRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
public class DataLoader 
implements ApplicationRunner {
  private final DepartmentRepository repository;
  
  @Override
  public void run(ApplicationArguments args) throws Exception {
    Department sales = new Department();
    sales.setName("営業");
    repository.save(sales);
    Department development = new Department();
    development.setName("開発");
    repository.save(development);
  }
}
