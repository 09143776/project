package dao;

import java.util.HashMap;
import java.util.List;

import model.Professor;
import model.Student;


public interface PersonDao {
	//查询教师
	public HashMap<String, Professor> findAllProfessors();
	//查询学生
	public HashMap<String, Student> findAllStudents();
	//添加教师
	void addProfessor(String type,Professor professor);
	//查询
	List<Professor> searchProfessor(Professor professor);
	//更新
	void updateProfessor(Professor professor);
	//删除
	void deleteProfessor(Professor professor);

}
