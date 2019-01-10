package DAO;

import Bean.Exam;
import Bean.Question;

import java.util.ArrayList;

public interface ExamDAO {
    ArrayList<Question> getExamPaper();

    boolean saveExamInfo(Exam exam);

    ArrayList<Exam> queryExamHistory(String username);

    boolean delExamHistory(String examID);
}
