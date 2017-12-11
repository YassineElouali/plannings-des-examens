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
@Table(name = "Professeur")
public class Professeur implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String NomProfesseur;
    private String PrenomProfesseur;
    private String EmailProfesseur;
    private String TelProfesseur;

    public Professeur() {
    }

    public Professeur(String NomProfesseur, String PrenomProfesseur, String EmailProfesseur, String TelProfesseur) {
        this.NomProfesseur = NomProfesseur;
        this.PrenomProfesseur = PrenomProfesseur;
        this.EmailProfesseur = EmailProfesseur;
        this.TelProfesseur = TelProfesseur;
    }

    public String getNomProfesseur() {
        return NomProfesseur;
    }

    public void setNomProfesseur(String NomProfesseur) {
        this.NomProfesseur = NomProfesseur;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public String getPrenomProfesseur() {
        return PrenomProfesseur;
    }

    public void setPrenomProfesseur(String PrenomProfesseur) {
        this.PrenomProfesseur = PrenomProfesseur;
    }

    public String getEmailProfesseur() {
        return EmailProfesseur;
    }

    public void setEmailProfesseur(String EmailProfesseur) {
        this.EmailProfesseur = EmailProfesseur;
    }

    public String getTelProfesseur() {
        return TelProfesseur;
    }

    public void setTelProfesseur(String TelProfesseur) {
        this.TelProfesseur = TelProfesseur;
    }

}
