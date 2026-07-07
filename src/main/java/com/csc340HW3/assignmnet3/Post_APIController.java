package com.csc340HW3.assignmnet3;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/posts") //everything under this will have the api/post in the url
public class Post_APIController {

  private final Post_Service postService;

  public Post_APIController(Post_Service postService) {
    this.postService = postService;
  }

  @GetMapping("/hello")
  public String hello() {
    return "Hello from PostController!";
  }

  @GetMapping
  public ResponseEntity<List<Post_Entity>> getAllPosts() {  //getting all the characters
    List<Post_Entity> posts = postService.getAllPosts();
    return ResponseEntity.ok(posts);
  }

  @GetMapping("/{id}")
  public ResponseEntity<Post_Entity> getPostById(@PathVariable long id) {   //get character by id
    Post_Entity post = postService.getPostById(id);
    if (post != null) {
      return ResponseEntity.ok(post);
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @PostMapping
  public ResponseEntity<Post_Entity> createPost(@RequestBody Post_Entity post) { //adding a new character
    Post_Entity createdPost = postService.createPost(post);
    return ResponseEntity.ok(createdPost);
  }

  @PutMapping("/{id}") //upating a character by id
  public ResponseEntity<Post_Entity> updatePost(@PathVariable long id, @RequestBody Post_Entity updatedPost) {
    Post_Entity post = postService.updatePost(id, updatedPost);
    if (post != null) {
      return ResponseEntity.ok(post);
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @DeleteMapping("/{id}") //deleting a character by id
  public ResponseEntity<Void> deletePost(@PathVariable long id) {
    boolean deleted = postService.deletePost(id);
    if (deleted) {
      return ResponseEntity.noContent().build();
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @GetMapping("/name")    //getting characters whose name contains a string
  public ResponseEntity<List<Post_Entity>> getPostsByName(@RequestParam String name) {
    List<Post_Entity> posts = postService.getPostsByName(name);
    return ResponseEntity.ok(posts);
  }

    @GetMapping //
     public ResponseEntity<List<Post_Entity>> getPostsByCharacterType(@RequestParam String characterType) {   //getting all characters with the same characterType
        List<Post_Entity> posts = postService.getAllPosts();
        for (Post_Entity post : posts) {
            if(!post.getCharacterType().equalsIgnoreCase(characterType)){
                posts.remove(post);
            }
        }
        return ResponseEntity.ok(posts);
    }
}
