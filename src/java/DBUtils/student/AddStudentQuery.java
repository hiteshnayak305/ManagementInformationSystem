/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBUtils.student;

import DBUtils.DBConnection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Student;

/**
 *
 * @author hitesh
 */
public class AddStudentQuery {

    public AddStudentQuery() {
    }
    
    /**
     *
     * @param student
     * @return
     * @throws java.sql.SQLException
     */
    public int doAddStudent(Student student) throws SQLException{
        
        int status = 0;
        
        String query = "INSERT INTO STUDENT (STUDENT_ID, ROLL_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, BRANCH, DOB, CPI, SPI, PHOTO) VALUES (NULL,?,?,?,?,?,?,?,?,?)";
        
        DBConnection dbConnection = new DBConnection();
        
        PreparedStatement preparedStatement = dbConnection.getConnection().prepareStatement(query);
        preparedStatement.setString(1, student.getRollNumber());
        preparedStatement.setString(2, student.getFirstName());
        preparedStatement.setString(3, student.getMiddleName());
        preparedStatement.setString(4, student.getLastName());
        preparedStatement.setString(5, student.getBranch());
        preparedStatement.setDate(6, new Date(student.getDateOfBirth().getTime()));
        preparedStatement.setDouble(7, student.getCpi());
        preparedStatement.setDouble(8, student.getSpi());
        preparedStatement.setString(9, student.getPhoto());
        status = preparedStatement.executeUpdate();
        
        return status;
    }
}