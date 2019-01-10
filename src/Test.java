import Bean.Exam;
import Bean.Question;
import Bean.User;
import DAO.ExamDAO;
import DAO.QuestionsDAO;
import DAO.UserDAO;
import DAO.impl.ExamDAOImpl;
import DAO.impl.QuestionsDAOImpl;
import DAO.impl.UserDAOImpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Test {

    public static void main(String[] args) {
        ExamDAO examDAO = new ExamDAOImpl();
        Question question = new Question();
        question.getAnswer();
        examDAO.queryExamHistory("tom");
//        Date date = new Date();
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
//        String dateString = simpleDateFormat.format(date);
//        Exam exam = new Exam();
//        System.out.println(dateString + exam.getExamID());
//        Test test = new Test();
//        test.testQuestionDAOFun();
//        test.testExamDAOFun();
//        UserDAO userDAO = new UserDAOImpl();
//        if (userDAO.checkIdentity("jp2016213asd", "NsewQc9b8FvbJxZ")) {
//            System.out.println("验证通过");
//        } else {
//            System.out.println("验证失败");
//        }
    }

    public void testExamDAOFun() {
        ExamDAO examDAO = new ExamDAOImpl();
        ArrayList<Question> questions = examDAO.getExamPaper();
        for (Question question : questions) {
            System.out.println(question.getQuestionID());
        }
    }

    public void testUserDAOFun() {
//        ArrayList<User> users = UserDAOImpl.getUserList(0, 100);
//        for (User user : users) {
//            System.out.println(user.getUsername());
//        }
        UserDAO userDAO = new UserDAOImpl();
//        User user = userDAO.getUser("hgkthjq");
//        if (user != null)
//            System.out.println(user.getEmail());
        if (userDAO.isExist("jp2016213431")) {
            System.out.println("用户存在");
        }
    }

    public void testQuestionDAOFun() {
        String questionContent = "It is a paradox of the Victorians that they were both _____ and, through their empire, cosmopolitan.";
        String questionOptions = "A.capricious;B.insular;C.mercenary;D.idealistic;E.intransigent";
        String answer = "B";
        Question question = new Question();
        question.setQuestionContent(questionContent);
        question.setQuestionOptions(questionOptions);
        question.setAnswer(answer);
        QuestionsDAO questionsDAO = new QuestionsDAOImpl();
        if (questionsDAO.addQuestion(question) == true) {
            System.out.println("添加成功!");
        }
//        Question question = questionsDAO.getQuestion("1");
//        System.out.println(question.getQuestionContent());
//        questionsDAO.delQuestion("1");
//        ArrayList<Question> questions = questionsDAO.getQeustionList(0, 100);
//        for (Question question : questions) {
//            System.out.println(question.getQuestionContent());
//        }
    }
}
