package com.csc340HW3.assignmnet3.postsPackage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController { //class to make this load initially

  @GetMapping
  public String homePage() {
    return "index";

  }

}
