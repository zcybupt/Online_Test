package Bean;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class Exam {
    private String examID;
    private String username;
    private String examTime;
    private String score;
    private String questionList;
    private String wrongAnswers;
    private String threshold;

    public Exam() {
        Random random = new Random();
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateString = simpleDateFormat.format(date);
        this.examID = dateString + String.format("%04d", random.nextInt(9999));
    }

    public String passOrNot() {
        if (Float.parseFloat(score) >= Float.parseFloat(threshold)) {
            return "pass";
        } else {
            return "fail";
        }
    }

    public String getExamID() {
        return examID;
    }

    public void setExamID(String examID) {
        this.examID = examID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getExamTime() {
        return examTime;
    }

    public void setExamTime(String examTime) {
        this.examTime = examTime;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getQuestionList() {
        return questionList;
    }

    public void setQuestionList(String questionList) {
        this.questionList = questionList;
    }

    public String getWrongAnswers() {
        return wrongAnswers;
    }

    public void setWrongAnswers(String wrongAnswers) {
        this.wrongAnswers = wrongAnswers;
    }

    public String getThreshold() {
        return threshold;
    }

    public void setThreshold(String threshold) {
        this.threshold = threshold;
    }
}
