package com.crud.notas.notascrudspringboot.service;

import java.util.Date;

import java.util.List;
import java.util.Optional;

import com.crud.notas.notascrudspringboot.model.Todo;

/*
1 - Vamos explorar todos os métodos necessários para processar os recursos do crud de notas nesta interface.
*/
public interface ITodoService {

    List < Todo > getTodosByUser(String user);

    Optional < Todo > getTodoById(long id);

    void updateTodo(Todo todo);

    void addTodo(String name, String desc, Date targetDate, boolean isDone);

    void deleteTodo(long id);

    void saveTodo(Todo todo);
}

