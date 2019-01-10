package DAO.impl;

import Bean.Question;
import DAO.QuestionsDAO;
import DBConnections.C3P0Utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class QuestionsDAOImpl implements DAO.QuestionsDAO {

    public static String questionListToString(ArrayList<Question> questionList) {
        String questionListString = "";
        for (Question question : questionList) {
            questionListString = questionListString + question.getQuestionID() + ",";
        }

        return questionListString;
    }

    public static ArrayList<Question> stringToQuestionList(String questionListString) {
        ArrayList<Question> questionList = new ArrayList<>();
        String[] questions = questionListString.split(";");
        ResultSet rs = null;

        for (String str : questions) {
            String sql = "SELECT * FROM question WHERE questionID = '" + str + "';";
            rs = C3P0Utils.getResultSet(sql);
            Question question = new Question();

            try {
                if (rs.next()) {
                    question.setQuestionContent(rs.getString("questionContent"));
                    question.setQuestionOptions(rs.getString("questionOptions"));
                    question.setAnswer(rs.getString("answer"));
                    question.setQuestionID(rs.getString("questionID"));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            questionList.add(question);
        }
        return questionList;
    }

    @Override
    public ArrayList<Question> getQuestionList(int start, int end) {
        String sql = "SELECT questionID FROM question;";
        ArrayList<Question> questions = new ArrayList<>();
        QuestionsDAO questionsDAO = new QuestionsDAOImpl();
        ResultSet rs = C3P0Utils.getResultSet(sql);
        try {
            int i = start;
            while (rs.next()) {
                if (i++ > end)
                    break;
                String questionID = rs.getString("questionID");
                Question question = questionsDAO.getQuestion(questionID);
                questions.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            C3P0Utils.release(null, rs, null);
        }

        return questions;
    }

    @Override
    public boolean addQuestion(Question question) {
        String sql = "INSERT INTO question (questionContent, questionOptions, answer) VALUES('"
                + question.getQuestionContent() + "','"
                + question.getQuestionOptions() + "','"
                + question.getAnswer() + "');";

        return C3P0Utils.excuteSQL(sql);
    }

    @Override
    public Question getQuestion(String questionID) {
        Question question = new Question();
        String sql = "SELECT * FROM question WHERE questionID = '"
                + questionID + "';";
        ResultSet rs = C3P0Utils.getResultSet(sql);
        try {
            if (rs.next()) {
                question.setQuestionID(rs.getString("questionID"));
                question.setQuestionContent(rs.getString("questionContent"));
                question.setQuestionOptions(rs.getString("questionOptions"));
                question.setAnswer(rs.getString("answer"));
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            C3P0Utils.release(null, rs, null);
        }

        return question;
    }

    @Override
    public boolean delQuestion(String questionID) {
        String sql = "DELETE FROM question WHERE questionID = '" + questionID + "';";

        return C3P0Utils.excuteSQL(sql);
    }
}