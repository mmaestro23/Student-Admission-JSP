/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uni.service;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.List;
import uni.dao.StudentDAO;
import uni.model.Student;

public class StudentService extends UnicastRemoteObject implements StudentServiceInterface{
    
    StudentDAO studentDao = new StudentDAO();
    
    public StudentService() throws RemoteException {
        super();
    }

    @Override
    public boolean createAccount(Student student) throws RemoteException {
        StudentDAO dao = new StudentDAO();
        dao.createAccount(student);
        return true;
    }

    @Override
    public Student checkExistance(String userEmail) throws RemoteException {
        StudentDAO dao = new StudentDAO();
        Student student = new Student();
        student = dao.checkExistance(userEmail);
        return student;
    }
    
    @Override
    public boolean updateStudent(Student student) throws RemoteException {
        StudentDAO dao = new StudentDAO();
        return dao.updateStudent(student);
    }
    
    @Override
    public void deleteStudent(Student student) throws RemoteException {
       StudentDAO dao = new StudentDAO();
       dao.deleteStudent(student);
    }
    
    @Override
    public List<Student> getStudents() throws RemoteException {
        
        StudentDAO dao = new StudentDAO();
        return dao.findAll();

    }
    
    @Override
    public Student getStudent(int id) throws RemoteException {
        //return StudentDAO.findStudent(id);
        StudentDAO dao= new StudentDAO();
        return dao.findStudent(id);
        //Student student = new Student();
        //student = dao.findStudent(id);
        //return student;
        
    }  
}

        