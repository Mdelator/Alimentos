package datos;


import java.util.LinkedList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author departamento
 */
public class Muestra {
    private List<Persona> personas = new LinkedList();
    
    public void add(Persona p){
        personas.add(p);
    }
    
    public List<Persona> getPersonas() {
        return personas;
    }
    
    public double getSalarioMedio() {
        double media = 0;
        double n = 0;
        for (Persona p:personas) {
            media += p.salario;
            n++;
        }
        media = media / n;
        return media;
    }
    
    public double getEstaturaMedia() {
        double media = 0;
        double n = 0;
        for (Persona p:personas) {
            media += p.estatura;
        }
        media = media / n;
        return media;
    }
    
    public int getNumeroHombres() {
        int hombres = 0;
        for (Persona p:personas) {
            if (p.sexo == Persona.Sexo.Hombre) {
                hombres++;
            }
        }
        return hombres;
    }
    
    public int getNumeroMujeres() {
        int mujeres = 0;
        for (Persona p:personas) {
            if (p.sexo == Persona.Sexo.Mujer) {
                mujeres ++;
            }
        }
        return mujeres;
    }
    
    public double getPorcentajeHombres() {
        return (double)getNumeroHombres() / personas.size();
    }
    
    public double getPorcentajeMujeres() {
        return (double)getNumeroMujeres() / personas.size();
    }
    
    public double getEdadMedia() {
        int n = 0;
        int edad = 0;
        for (Persona p:personas) {
            edad += p.getEdad();
            n++;
        }
        return (double)edad / n;
    }
}
