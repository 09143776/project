package dao;

import java.util.HashMap;
import java.util.List;

import model.Professor;
import model.Student;


public interface PersonDao {
	//��ѯ��ʦ
	public HashMap<String, Professor> findAllProfessors();
	//��ѯѧ��
	public HashMap<String, Student> findAllStudents();
	//��ӽ�ʦ
	void addProfessor(String type,Professor professor);
	//��ѯ
	List<Professor> searchProfessor(Professor professor);
	//����
	void updateProfessor(Professor professor);
	//ɾ��
	void deleteProfessor(Professor professor);

}
