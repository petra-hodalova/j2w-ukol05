package cz.czechitas.java2webapps.ukol5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.time.LocalDate;
import java.time.Period;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

    @GetMapping("/")
    public ModelAndView registrace() {
        ModelAndView modelAndView = new ModelAndView("formular");
        modelAndView.addObject("form", new RegistraceForm());
        return modelAndView;
    }

    @PostMapping("/")
    public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {

        if(form.getDatumNar() != null)  {
            Period period = form.getDatumNar().until(LocalDate.now());
            int vek = period.getYears();

            if (vek < 9 || vek > 15) {
                bindingResult.rejectValue("datumNar", "AgeRange", "Věk musí být 9-15 let.");
            }
        }

        if (bindingResult.hasErrors()) {
             return "/formular";
        }

        return new ModelAndView("/rekapitulace");
    }


}
