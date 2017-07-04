package dao;

import java.util.HashMap;
import model.Professor;
import model.Section;
import model.User;


public interface SectionDao {
	//��ѯ��ѡ�γ�
	public HashMap<String, Section> findAll();
	//����ѧ�ڲ�ѯ��ѡ��
	public HashMap<String,Section> findBySemester(String semester);
	//���
	void addSection(Section section,Professor professor,String semester);
	//ɾ��
	void deleteSection(String FullSectionNo);
	//����
	void updateSection(Section section);
	//������ʦ�ο�
	public HashMap<String, Section> findByProfessor(User user);
	
	 
}
