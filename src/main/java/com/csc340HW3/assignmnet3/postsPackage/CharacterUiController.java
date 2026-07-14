package com.csc340HW3.assignmnet3.postsPackage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/posts")
public class CharacterUiController {            //ui will always return strings and those strings are the name of the ui we want to see be it a template or us redirecting it
    
    private final Post_Service pService;

    public CharacterUiController(Post_Service pService){
        this.pService = pService;
    }

    @GetMapping("/about")   //when we go to about
    public String about(){
    return "about";     //name of ui [webpage], it should be match a name in the template folder
    }

    @GetMapping("/chars/{id}")
    public String getCharByID(@PathVariable long id, Model model){
        Post_Entity character = pService.getPostById(id);
        model.addAttribute("character", character);
        return "details";
    }
    
}
