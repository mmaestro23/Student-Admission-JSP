package uni.dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import uni.model.Student;


public class StudentDAO {

    public static Student findStudent(String regNo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public boolean createAccount(Student student){
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(student);
        tx.commit();
        session.close();
        return true;
    }
    
    public Student checkExistance(String userEmail){
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("FROM Student st where st.email = '"+userEmail+"'");
        Student student = (Student)query.uniqueResult();
        return student;
    }
    
    public boolean updateStudent(Student student) {
        boolean result = false;
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.update(student);
        tx.commit();
        session.close();
        result = Boolean.TRUE;
        return result;
    }
    
    public void deleteStudent(Student student) {
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.delete(student);
        tx.commit();
        session.close();
    }
    
    public List<Student> findAll() {
        Session session = null;
        List<Student> result = new ArrayList<>();
        try {
            session = FactoryManager.getSessionFactory().openSession();
            result = session.createQuery("from Student").list();
        } catch (HibernateException ex) {
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return result;

    }
    
    public Student findStudent(int id) {
        Session session = null;
        Student result = null;
        try {
            session = FactoryManager.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(Student.class);
            criteria.add(Restrictions.eq("id", id));

            result = (Student) criteria.uniqueResult();
        } catch (HibernateException ex) {
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return result;
    }
}
