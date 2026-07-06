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
  public ResponseEntity<List<Post_Entity>> getAllPosts() {
    List<Post_Entity> posts = postService.getAllPosts();
    return ResponseEntity.ok(posts);
  }

  @GetMapping("/{id}")
  public ResponseEntity<Post_Entity> getPostById(@PathVariable long id) {
    Post_Entity post = postService.getPostById(id);
    if (post != null) {
      return ResponseEntity.ok(post);
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @PostMapping
  public ResponseEntity<Post_Entity> createPost(@RequestBody Post_Entity post) {
    Post_Entity createdPost = postService.createPost(post);
    return ResponseEntity.ok(createdPost);
  }

  @PutMapping("/{id}") //left off here
  public ResponseEntity<Post_Entity> updatePost(@PathVariable long id, @RequestBody Post_Entity updatedPost) {
    Post_Entity post = postService.updatePost(id, updatedPost);
    if (post != null) {
      return ResponseEntity.ok(post);
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @DeleteMapping("/{id}")
  public ResponseEntity<Void> deletePost(@PathVariable long id) {
    boolean deleted = postService.deletePost(id);
    if (deleted) {
      return ResponseEntity.noContent().build();
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @GetMapping("/search")
  public ResponseEntity<List<Post_Entity>> searchPosts(@RequestParam String query) {
    List<Post_Entity> posts = postService.searchPosts(query);
    return ResponseEntity.ok(posts);
  }

  @GetMapping("/author")
  public ResponseEntity<List<Post_Entity>> getPostsByAuthor(@RequestParam String name) {
    List<Post_Entity> posts = postService.getPostsByAuthor(name);
    return ResponseEntity.ok(posts);
  }

}
