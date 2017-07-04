package dao;

import java.util.HashMap;

import model.Course;

public interface CourseDao {
	
	public Course getByCourseNo(String CourseNo);
	//查询课程
	public HashMap<String, Course> findAll();
	//添加
	void addCourse(Course course);
	//更新
	void updateCourse(Course course);
	//删除
	void deleteCourse(Course course);
}
