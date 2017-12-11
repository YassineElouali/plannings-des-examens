/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.classes;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author el ouali
 */
@Entity
@Table(name = "Surveillant")
public class Surveillant implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String CIN;
    private String NomSurveillant;
    private String TelSurveillant;
    private String EmailSurveillant;

    public Surveillant() {
    }

    public Surveillant(String CIN, String NomSurveillant, String TelSurveillant, String EmailSurveillant) {
        this.CIN = CIN;
        this.NomSurveillant = NomSurveillant;
        this.TelSurveillant = TelSurveillant;
        this.EmailSurveillant = EmailSurveillant;
    }

    public String getCIN() {
        return CIN;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public void setCIN(String CIN) {
        this.CIN = CIN;
    }

    public String getNomSurveillant() {
        return NomSurveillant;
    }

    public void setNomSurveillant(String NomSurveillant) {
        this.NomSurveillant = NomSurveillant;
    }

    public String getTelSurveillant() {
        return TelSurveillant;
    }

    public void setTelSurveillant(String TelSurveillant) {
        this.TelSurveillant = TelSurveillant;
    }

    public String getEmailSurveillant() {
        return EmailSurveillant;
    }

    public void setEmailSurveillant(String EmailSurveillant) {
        this.EmailSurveillant = EmailSurveillant;
    }

}
