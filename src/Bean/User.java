package Bean;

public class User {
    private String username;
    private String password;
    private String email;
    private String pastExamID;

    public String getUsername() {
        return username;
    }

    public void setUserName(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPastExamID() {
        return pastExamID;
    }

    public void setPastExamID(String pastExamID) {
        this.pastExamID = pastExamID;
    }
}
