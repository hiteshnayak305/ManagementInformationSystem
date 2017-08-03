/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author hitesh
 */
public class Student implements Serializable {
    
    private int id;
    private String rollNumber;
    private String firstName;
    private String middleName;
    private String lastName;
    private String branch;
    private Date dateOfBirth;
    private Double cpi;
    private Double spi;
    private String photo;

    /**
     *
     */
    public Student() {
        this.id = 0;
        this.rollNumber = "";
        this.firstName = "";
        this.middleName = "";
        this.lastName = "";
        this.branch = "";
        this.cpi = 0.0;
        this.spi = 0.0;
        this.photo = "";
    }

    /**
     *
     * @param id
     * @param rollNumber
     * @param firstName
     * @param middleName
     * @param lastName
     * @param branch
     * @param dateOfBirth
     * @param cpi
     * @param spi
     * @param photo
     */
    public Student(int id, String rollNumber, String firstName, String middleName, String lastName, String branch, Date dateOfBirth, Double cpi, Double spi, String photo) {
        this.id = id;
        this.rollNumber = rollNumber;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.branch = branch;
        this.dateOfBirth = dateOfBirth;
        this.cpi = cpi;
        this.spi = spi;
        this.photo = photo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRollNumber() {
        return rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Double getCpi() {
        return cpi;
    }

    public void setCpi(Double cpi) {
        this.cpi = cpi;
    }

    public Double getSpi() {
        return spi;
    }

    public void setSpi(Double spi) {
        this.spi = spi;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}