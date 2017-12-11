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
@Table(name = "Matiere")
public class Matiere implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String NomMatiere;
    private String Jour;
    private String NomProfesseur;
    private String NomSurveillant;
    private String NomSalle;
    private String Semestre;
    private String NomClasse;

    public Matiere() {
    }

    public Matiere(String NomMatiere, String Jour, String NomProfesseur, String NomSurveillant, String NomSalle, String Semestre, String NomClasse) {
        this.NomMatiere = NomMatiere;
        this.Jour = Jour;
        this.NomProfesseur = NomProfesseur;
        this.NomSurveillant = NomSurveillant;
        this.NomSalle = NomSalle;
        this.Semestre = Semestre;
        this.NomClasse = NomClasse;
    }

    public String getNomMatiere() {
        return NomMatiere;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public void setNomMatiere(String NomMatiere) {
        this.NomMatiere = NomMatiere;
    }

    public String getJour() {
        return Jour;
    }

    public void setJour(String Jour) {
        this.Jour = Jour;
    }

    public String getNomProfesseur() {
        return NomProfesseur;
    }

    public void setNomProfesseur(String NomProfesseur) {
        this.NomProfesseur = NomProfesseur;
    }

    public String getNomSurveillant() {
        return NomSurveillant;
    }

    public void setNomSurveillant(String NomSurveillant) {
        this.NomSurveillant = NomSurveillant;
    }

    public String getNomSalle() {
        return NomSalle;
    }

    public void setNomSalle(String NomSalle) {
        this.NomSalle = NomSalle;
    }

    public String getSemestre() {
        return Semestre;
    }

    public void setSemestre(String Semestre) {
        this.Semestre = Semestre;
    }

    public String getNomClasse() {
        return NomClasse;
    }

    public void setNomClasse(String NomClasse) {
        this.NomClasse = NomClasse;
    }

}
