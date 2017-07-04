package dao;

import java.util.HashMap;

import model.Course;

public interface CourseDao {
	
	public Course getByCourseNo(String CourseNo);
	//��ѯ�γ�
	public HashMap<String, Course> findAll();
	//���
	void addCourse(Course course);
	//����
	void updateCourse(Course course);
	//ɾ��
	void deleteCourse(Course course);
}
