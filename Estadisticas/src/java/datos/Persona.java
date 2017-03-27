package datos;


import java.util.Calendar;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author departamento
 */
public class Persona {
    String nombre = "";
    String apellidos = "";
    Date fechaNacimiento = new Date();
    Sexo sexo;
    double salario = 0.0;
    double estatura;
    double peso;
    public enum Sexo {
        Hombre,
        Mujer
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public Sexo getSexo() {
        return sexo;
    }

    public void setSexo(Sexo sexo) {
        this.sexo = sexo;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public double getEstatura() {
        return estatura;
    }

    public void setEstatura(double estatura) {
        this.estatura = estatura;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }
    
    public int getEdad() {
        Calendar edad = Calendar.getInstance();
        Calendar nacimiento = Calendar.getInstance();
        nacimiento.setTime(fechaNacimiento);
        edad.add(Calendar.YEAR, -nacimiento.get(Calendar.YEAR));
        edad.add(Calendar.MONTH, -nacimiento.get(Calendar.MONTH));
        edad.add(Calendar.DAY_OF_MONTH, -nacimiento.get(Calendar.DAY_OF_MONTH));
        return edad.get(Calendar.YEAR);
    }
}
