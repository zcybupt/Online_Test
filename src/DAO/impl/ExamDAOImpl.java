package DAO.impl;

import Bean.Exam;
import Bean.Question;
import DAO.ExamDAO;
import DAO.QuestionsDAO;
import DBConnections.C3P0Utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

public class ExamDAOImpl implements ExamDAO {

    @Override
    public ArrayList<Question> getExamPaper() {
        QuestionsDAO questionsDAO = new QuestionsDAOImpl();
        ArrayList<Question> questions = questionsDAO.getQuestionList(0, 100);
        ArrayList<Question> examPaper = new ArrayList<>();
        Random random = new Random();
        while (examPaper.size() < 5) {
            int index = random.nextInt(questions.size());
            examPaper.add(questions.get(index));
            questions.remove(index);
        }

        return examPaper;
    }

    @Override
    public boolean saveExamInfo(Exam exam) {
        String questionList = exam.getQuestionList();
        String wrongAnswers = exam.getWrongAnswers();

        String sql1 = "INSERT INTO exam (examID, username, examTime, score, questionList, wrongAnswers, threshold) VALUES('"
                + exam.getExamID() + "','"
                + exam.getUsername() + "','"
                + exam.getExamTime() + "','"
                + exam.getScore() + "','"
                + questionList + "','"
                + wrongAnswers + "','"
                + exam.getThreshold() + "');";

        String sql2 = "UPDATE user_info SET pastExamID=CONCAT('" + exam.getExamID()
                + ";', pastExamID) WHERE username='" + exam.getUsername() + "'";
        return C3P0Utils.excuteSQL(sql1) && C3P0Utils.excuteSQL(sql2);
    }

    @Override
    public ArrayList<Exam> queryExamHistory(String username) {
        String sql1 = "SELECT pastExamID FROM user_info WHERE username = '" + username + "';";
        String sql2 = null;
        ArrayList<Exam> examList = new ArrayList<>();
        ResultSet rs1 = C3P0Utils.getResultSet(sql1);
        ResultSet rs2 = null;
        String[] pastExamIDs = null;
        try {
            if (rs1.next()) {
                pastExamIDs = rs1.getString("pastExamID").split(";");

                for (String pastExamID : pastExamIDs) {
                    sql2 = "SELECT * FROM exam WHERE examID='" + pastExamID + "';";
                    rs2 = C3P0Utils.getResultSet(sql2);
                    if (rs2.next()) {
                        Exam exam = new Exam();
                        exam.setExamID(rs2.getString("examID"));
                        exam.setUsername(username);
                        exam.setExamTime(rs2.getString("examTime"));
                        exam.setScore(rs2.getString("score"));
                        exam.setQuestionList(rs2.getString("questionList"));
                        exam.setWrongAnswers(rs2.getString("wrongAnswers"));
                        exam.setThreshold(rs2.getString("threshold"));
                        examList.add(exam);
                    }
                }
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            C3P0Utils.release(null, rs1, null);
            C3P0Utils.release(null, rs2, null);
        }

        return examList;
    }

    @Override
    public boolean delExamHistory(String examID) {
        String sql = "DELETE FROM exam WHERE examID = '" + examID + "';";

        return C3P0Utils.excuteSQL(sql);
    }
}
