package dao;

import java.util.HashMap;

import model.Section;
import model.TranscriptEntry;
import model.User;


public interface TranscriptDao {
	//��ѯѡ��
	public HashMap<String, TranscriptEntry> findAll();
	//��ѯѧ��ѡ�ί�
	public HashMap<String, TranscriptEntry> findTranscriptByStudent(User user);
	//���
	public void addTranscript(TranscriptEntry transcriptentry);
	//ɾ��
	public void deleteTranscript(String fullSectionNo);
	//����
	public void updateTranscript(String fullSectionNo, String ssn , String grade);
	//����ѧ�Ų�ѯ��ѡ�γ�
	HashMap<String, TranscriptEntry> getTranscriptBySsn(User user);
	HashMap<String, TranscriptEntry> getBysection(Section se);
}
