/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.classes;

import java.io.Serializable;
import javax.persistence.Column;
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
@Table(name = "Classe")
public class Classe implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String NomClasse;


    public String getNomClasse() {
        return NomClasse;
    }

    public void setNomClasse(String NomClasse) {
        this.NomClasse = NomClasse;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public Classe() {
    }

    public Classe(String NomClasse) {
        this.NomClasse = NomClasse;

    }



}
