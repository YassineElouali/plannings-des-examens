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
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author el ouali
 */
@Entity
@Table(name = "Examen")
public class Examen implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String date;
    private String semestre;
    private String heuredebut;
    private String heurefin;
    private String matiere;
    private Classe classe;
    @ManyToOne
    private Planning p;
    public Examen() {
    }

    public Examen(String date, String semestre, String heuredebut,String heurefin, String matiere, Classe classe) {
        this.date = date;
        this.semestre = semestre;
        this.heuredebut = heuredebut;
        this.heurefin = heurefin;
        this.matiere = matiere;
        this.classe = classe;
    }

    public String getDate() {
        return date;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

    public String getHeuredebut() {
        return heuredebut;
    }
    public String getHeurefin() {
        return heurefin;
    }
    public void setHeuredebut(String heuredebut) {
        this.heuredebut = heuredebut;
    }
    public void setHeurefin(String heurefin) {
        this.heurefin = heurefin;
    }
    public String getMatiere() {
        return matiere;
    }

    public void setMatiere(String matiere) {
        this.matiere = matiere;
    }

    public Classe getClasse() {
        return classe;
    }

    public void setClasse(Classe classe) {
        this.classe = classe;
    }

}
