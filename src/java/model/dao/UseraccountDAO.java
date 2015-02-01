/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package model.dao;

import java.util.List;
import model.pojo.Useraccount;
import model.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Pado
 */
public class UseraccountDAO {
    @SuppressWarnings("CallToPrintStackTrace")
    public void createNewAccount(Useraccount account){
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction tr = s.beginTransaction();
        
        try {
            s.save(account);
            tr.commit();
            
        } catch (Exception e) {
            e.printStackTrace();
            tr.rollback();
        } finally{
            s.close();
        }
    }
    
    @SuppressWarnings("CallToPrintStackTrace")
    public boolean checkNewAccount(Useraccount account){
        List<Useraccount> list = null;
        
        String username = account.getUsername();
        String email= account.getEmail();
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction tr = s.beginTransaction();
        try {
            String hql = "from Useraccount u where u.username='" + username + "' OR u.email ='" + email + "'";
            
            Query q = s.createQuery(hql);
            list = (List<Useraccount>)q.list();
        } catch (Exception e) {
            e.printStackTrace();
            tr.rollback();
        } finally{
            s.close();
        }
        if (!list.isEmpty()){
            return false;
        } else {
            return true;
        }        
    }  
    
}
