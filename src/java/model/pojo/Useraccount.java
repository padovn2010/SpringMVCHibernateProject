package model.pojo;
// Generated Jan 31, 2015 12:04:28 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Useraccount generated by hbm2java
 */
public class Useraccount  implements java.io.Serializable {

     private Integer id;
     private String username;
     private String password;
     private String email;
     private Date dob;
     private String fullname;

    public Useraccount() {
    }

    public Useraccount(String username, String password, String email, Date dob, String fullname) {
       this.username = username;
       this.password = password;
       this.email = email;
       this.dob = dob;
       this.fullname = fullname;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public Date getDob() {
        return this.dob;
    }
    
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getFullname() {
        return this.fullname;
    }
    
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

}


