package hibernate.model;

import javax.persistence.*;
import java.util.Date;

@Entity
public class User{

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;

    @Temporal(TemporalType.DATE)
    @Column(name = "regdate")
    java.util.Date dateOfRegistration;

    @Column(name="login")
    String login;

    @Column(name="password")
    String pass;

    @Column(name="surname")
    String surname;

    @Column(name="name")
    String name;

    @Column(name="email")
    String email;

    @Column(name="icq")
    String icq;

    @Column(name="sex")
    boolean sex; //0-Male; 1-Female

    @Column(name="newsletter")
    boolean newsletter;

    public User(){}

    public User(Date dateOfRegistration, String login, String pass, String surname, String name, String email, String icq, boolean sex, boolean newsletter) {
        this.dateOfRegistration = dateOfRegistration;
        this.login = login;
        this.pass = pass;
        this.surname = surname;
        this.name = name;
        this.email = email;
        this.icq = icq;
        this.sex = sex;
        this.newsletter = newsletter;
    }


    public User(int id,Date dateOfRegistration, String login, String pass, String surname, String name, String email, String icq, boolean sex, boolean newsletter) {
        this.id=id;
        this.dateOfRegistration = dateOfRegistration;
        this.login = login;
        this.pass = pass;
        this.surname = surname;
        this.name = name;
        this.email = email;
        this.icq = icq;
        this.sex = sex;
        this.newsletter = newsletter;
    }

    public User(int id, Date dateOfRegistration, String login, String pass, String surname, String name, String email, boolean sex, boolean newsletter) {
        this.id = id;
        this.dateOfRegistration = dateOfRegistration;
        this.login = login;
        this.pass = pass;
        this.surname = surname;
        this.name = name;
        this.email = email;
        this.sex = sex;
        this.newsletter = newsletter;
    }

    public User(int id,String login,String email){
        this.login =login;
        this.email = email;
    }

    public int getId() { return id; }
    public Date getDateOfRegistration() { return dateOfRegistration; }
    public String getLogin() { return login; }
    public String getPass() { return pass; }
    public String getSurname() { return surname; }
    public String getName() { return name; }
    public String getEmail() { return email; }
    public String getIcq() { return icq; }
    public boolean isSex() { return sex; }
    public boolean isNewsletter() { return newsletter; }

    public void setDateOfRegistration(Date dateOfRegistration) {
        this.dateOfRegistration = dateOfRegistration; }
    public void setLogin(String login) {
        this.login = login; }
    public void setPass(String pass) {
        this.pass = pass; }
    public void setSurname(String surname) {
        this.surname = surname; }
    public void setName(String name) {
        this.name = name; }
    public void setEmail(String email) {
        this.email = email; }
    public void setIsq(String isq) {
        this.icq = icq; }
    public void setSex(boolean sex) {
        this.sex = sex; }
    public void setNewsletter(boolean newsletter) {
        this.newsletter = newsletter; }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", dateOfRegistration=" + dateOfRegistration +
                ", login='" + login + '\'' +
                ", pass='" + pass + '\'' +
                ", surname='" + surname + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", icq='" + icq + '\'' +
                ", sex=" + sex +
                ", newsletter=" + newsletter +
                '}';
    }



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;

        User user = (User) o;

        if (!login.equals(user.login)) return false;
        return email.equals(user.email);
    }

    @Override
    public int hashCode() {
        int result = login.hashCode();
        result = 31 * result + email.hashCode();
        return result;
    }

}
