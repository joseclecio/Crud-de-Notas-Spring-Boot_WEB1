package com.crud.notas.notascrudspringboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.crud.notas.notascrudspringboot.model.Todo;

public interface TodoRepository extends JpaRepository < Todo, Long > {
    List < Todo > findByUserName(String user);
}
