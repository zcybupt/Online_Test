package DAO;

import Bean.Question;

import java.util.ArrayList;

public interface QuestionsDAO {
    ArrayList<Question> getQuestionList(int start, int end);
    
    boolean addQuestion(Question question);

    Question getQuestion(String questionID);

    boolean delQuestion(String questionID);
}
