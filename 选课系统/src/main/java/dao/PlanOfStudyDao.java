package dao;

import java.util.List;

import model.Course;
import model.Student;


public interface PlanOfStudyDao {
	
	//查找学习计划
	List<Course> findByStudent(Student student);
	

}
