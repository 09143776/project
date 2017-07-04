package dao;

import java.util.HashMap;

import model.Section;
import model.TranscriptEntry;
import model.User;


public interface TranscriptDao {
	//查询选课
	public HashMap<String, TranscriptEntry> findAll();
	//查询学生选课
	public HashMap<String, TranscriptEntry> findTranscriptByStudent(User user);
	//添加
	public void addTranscript(TranscriptEntry transcriptentry);
	//删除
	public void deleteTranscript(String fullSectionNo);
	//更新
	public void updateTranscript(String fullSectionNo, String ssn , String grade);
	//根据学号查询已选课程
	HashMap<String, TranscriptEntry> getTranscriptBySsn(User user);
	HashMap<String, TranscriptEntry> getBysection(Section se);
}
