package cz.czechitas.java2webapps.ukol5.controller;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.*;
import java.time.LocalDate;

public class RegistraceForm {

        @NotBlank
        @Size(min=1, max=255)
        private String jmeno;

        @NotBlank
        @Size(min=1, max=255)
        private String prijmeni;

        @DateTimeFormat(pattern = "d.M.yyyy" )
        @NotNull
        @Past
        private LocalDate datumNar;

        @NotBlank
        private String pohlavi;

        @NotBlank
        private String turnus;

        @Email
        private String email;

        private String telefon;


        public String getJmeno() {
                return jmeno;
        }

        public void setJmeno(String jmeno) {
                this.jmeno = jmeno;
        }

        public String getPrijmeni() {
                return prijmeni;
        }

        public void setPrijmeni(String prijmeni) {
                this.prijmeni = prijmeni;
        }

        public LocalDate getDatumNar() {
                return datumNar;
        }

        public void setDatumNar(LocalDate datumNar) {
                this.datumNar = datumNar;
        }

        public String getPohlavi() {
                return pohlavi;
        }

        public void setPohlavi(String pohlavi) {
                this.pohlavi = pohlavi;
        }

        public String getTurnus() {
                return turnus;
        }

        public void setTurnus(String turnus) {
                this.turnus = turnus;
        }

        public String getEmail() {
                return email;
        }

        public void setEmail(String email) {
                this.email = email;
        }

        public String getTelefon() {
                return telefon;
        }

        public void setTelefon(String telefon) {
                this.telefon = telefon;
        }

}
