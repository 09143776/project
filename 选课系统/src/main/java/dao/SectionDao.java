package dao;

import java.util.HashMap;
import model.Professor;
import model.Section;
import model.User;


public interface SectionDao {
	//查询可选课程
	public HashMap<String, Section> findAll();
	//根据学期查询可选课
	public HashMap<String,Section> findBySemester(String semester);
	//添加
	void addSection(Section section,Professor professor,String semester);
	//删除
	void deleteSection(String FullSectionNo);
	//更新
	void updateSection(Section section);
	//查找老师任课
	public HashMap<String, Section> findByProfessor(User user);
	
	 
}
