package dao;

import java.util.List;

import model.Course;
import model.Student;


public interface PlanOfStudyDao {
	
	//����ѧϰ�ƻ�
	List<Course> findByStudent(Student student);
	

}
