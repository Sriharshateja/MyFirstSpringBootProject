package com.in28minutes.springboot.myfirstwebapp;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TodoService {
	
	private List<Shark> todos=new ArrayList<>();
	
	
	public List<Shark> getTodos()
	{
		return todos;
	}
	public void addTodos(int id, String name, String des) {
		// TODO Auto-generated method stub
		todos.add(new Shark(id,name,des));
	}
	public void deleteTodos(int id)
	{
		Iterator<Shark> i=todos.iterator();
		while(i.hasNext())
		{
			Shark s=i.next();
			if(s.getId()==id)
			{
				i.remove();
			}
			
		}
		System.out.println(todos);
	}

}
