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
@Table(name = "SALLE")
public class Salle implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String LibSalle;
    private int Capacite;
    private String Etage;
    private int NbrSurveillant;

    public Salle() {
    }

    public Salle(String LibSalle, int Capacite, String Etage, int NbrSurveillant) {

        this.LibSalle = LibSalle;
        this.Capacite = Capacite;
        this.Etage = Etage;
        this.NbrSurveillant = NbrSurveillant;
    }

    

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

   
    public String getLibSalle() {
        return LibSalle;
    }

    public void setLibSalle(String LibSalle) {
        this.LibSalle = LibSalle;
    }

    public int getCapacite() {
        return Capacite;
    }

    public void setCapacite(int Capacite) {
        this.Capacite = Capacite;
    }

    public String getEtage() {
        return Etage;
    }

    public void setEtage(String Etage) {
        this.Etage = Etage;
    }

    public int getNbrSurveillant() {
        return NbrSurveillant;
    }

    public void setNbrSurveillant(int NbrSurveillant) {
        this.NbrSurveillant = NbrSurveillant;
    }

}
