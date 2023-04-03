package com.in28minutes.springboot.myfirstwebapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@Autowired
	private TodoService t;

	@PostMapping("list-todos")
	public String addTotodos(@RequestParam int id, @RequestParam String name, @RequestParam String des,
			ModelMap model) {
		t.addTodos(id, name, des);
		List<Shark> k = t.getTodos();
		System.out.println(k);
		model.addAttribute("todos", k);
		return "list-todos";
	}

	@GetMapping("list-todos")
	public String displayTodos(ModelMap model) {
		List<Shark> k = t.getTodos();
		model.addAttribute("todos", k);
		return "list-todos";

	}

	@RequestMapping("/list_todos")
	public String temporary() {
		return "list_todos";
	}

	@RequestMapping("/delete-todo")
	public String deteleFun(@RequestParam int id, ModelMap model) {
		t.deleteTodos(id);
		List<Shark> k = t.getTodos();
		model.addAttribute("todos", k);
		return "list-todos";
	}
}
