package ExamServlets;

import Bean.Exam;
import Bean.Question;
import Bean.User;
import DAO.ExamDAO;
import DAO.impl.ExamDAOImpl;
import DAO.impl.QuestionsDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class ExamServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("user") == null) {
            resp.setHeader("refresh", "0;url=./login.jsp");
        } else {
            float threshold = 60;
            try {
                threshold = Float.parseFloat(req.getParameter("threshold"));
                System.out.println("threshold >>> " + threshold);
            } catch (NumberFormatException e) {
            }

            String reExam = req.getParameter("re-exam");
            String url = "./home_page.jsp";
            Exam firstExam = null;

            ArrayList<Question> questions = (ArrayList<Question>) session.getAttribute("questions");
            ArrayList<Question> firstQuestions = (ArrayList<Question>) session.getAttribute("questions");
            String[] userAnswers = new String[5];
            String[] firstUserAnswers = (String[]) session.getAttribute("userAnswers");
            ArrayList<Question> wrongAnswers = new ArrayList();
            User user = (User) session.getAttribute("user");
            for (int i = 0; i < 5; i++) {
                String userAnswer = req.getParameter("answer" + i);
                if (userAnswer == null)
                    userAnswers[i] = "#";
                else
                    userAnswers[i] = userAnswer;
            }

            for (int i = 0; i < 5; i++) {
                if (!userAnswers[i].equals(questions.get(i).getAnswer())) {
                    wrongAnswers.add(questions.get(i));
                }
            }
            float score = (5 - wrongAnswers.size()) * 20;
            Exam exam = new Exam();
            ExamDAO examDAO = new ExamDAOImpl();
            exam.setUsername(user.getUsername());
            exam.setThreshold(threshold + "");

            if (reExam.equals("default")) {
                url = "./exam_report.jsp";
                exam.setScore(score + "");
                exam.setExamTime("1");
                exam.setQuestionList(QuestionsDAOImpl.questionListToString(questions));
                exam.setWrongAnswers(QuestionsDAOImpl.questionListToString(wrongAnswers));
                examDAO.saveExamInfo(exam);
            } else if (reExam.equals("true")) {
                url = "./exam_page.jsp";
                exam.setScore(score + "");
                session.setAttribute("firstQuestions", firstQuestions);
                exam.setQuestionList(QuestionsDAOImpl.questionListToString(questions));
                exam.setWrongAnswers(QuestionsDAOImpl.questionListToString(wrongAnswers));
            } else if (reExam.equals("false")) {
                url = "./exam_report.jsp";
                firstExam = (Exam) session.getAttribute("exam");
                exam.setExamTime("2");
                session.setAttribute("firstUserAnswers", firstUserAnswers);
                exam.setScore((score + Float.parseFloat(firstExam.getScore())) / 2 + "");
                exam.setQuestionList(QuestionsDAOImpl.questionListToString(questions) + firstExam.getQuestionList());
                exam.setWrongAnswers(QuestionsDAOImpl.questionListToString(wrongAnswers) + firstExam.getWrongAnswers());
                examDAO.saveExamInfo(exam);
            }

            session.setAttribute("userAnswers", userAnswers);
            session.setAttribute("exam", exam);

            resp.setHeader("refresh", "0;url=" + url);
        }
    }
}
