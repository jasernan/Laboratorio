/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unipiloto.edu;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.lang.String;

/**
 *
 * @author julia
 */
public class NameHandler {

    public String nombre;
    public String fechaNacimiento;
    public String edad;
    int hora = LocalDateTime.now().getHour();

    public NameHandler() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String name) {
        this.nombre = name;
    }

    public String getNacimiento() {

        return fechaNacimiento;
    }

    public void setNacimiento(String nacimiento) {

        this.fechaNacimiento = nacimiento;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate fechaNacimiento = LocalDate.parse(this.fechaNacimiento, formatter);
        Period year = Period.between(fechaNacimiento, LocalDate.now());
        this.edad =  String.valueOf(year.getYears());
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }
}

