/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uni.service;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.List;
import uni.model.Student;

/**
 *
 * @author yves
 */
public interface StudentServiceInterface extends Remote{
    public boolean createAccount(Student user) throws RemoteException;
    public boolean updateStudent(Student user) throws RemoteException;
    public void deleteStudent(Student user) throws RemoteException;
    public Student checkExistance(String userEmail) throws RemoteException;
    
    public List<Student> getStudents() throws RemoteException;
    public Student getStudent(int id) throws RemoteException;
}
