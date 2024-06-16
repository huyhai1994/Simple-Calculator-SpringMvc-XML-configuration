package vn.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

@Controller
public class SimpleCalculatorController {
    @GetMapping("index")
    public String index() {
        return "index";
    }

    @PostMapping("index")
    public String index(Model model, @RequestParam(name = "leftOperand") String a, @RequestParam(name = "rightOperand") String b, @RequestParam(name = "operator") String operator) {
        ScriptEngineManager mgr = new ScriptEngineManager();
        ScriptEngine engine = mgr.getEngineByName("JavaScript");
        try {
            model.addAttribute("result", engine.eval(a + operator + b));
        } catch (ScriptException e) {
            throw new RuntimeException(e);
        }

        return "index";
    }
}
