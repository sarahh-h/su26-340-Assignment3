import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class Post_Service {
  private final PostRepository postRepository;

  public Post_Service(PostRepository postRepository) {
    this.postRepository = postRepository;
  }

  public List<Post_Entity> getAllPosts() {
    return postRepository.findAll();
  }

  public Post_Entity getPostById(long id) {
    return postRepository.findById(id).orElse(null);
  }

  public Post_Entity createPost(Post_Entity post) {
    return postRepository.save(post);
  }

  public Post_Entity updatePost(long id, Post_Entity updatedPost) {
    Post_Entity existingPost = postRepository.findById(id).orElse(null);
    if (existingPost != null) {
      existingPost.setTitle(updatedPost.getTitle());
      existingPost.setContent(updatedPost.getContent());
      existingPost.setAuthor(updatedPost.getAuthor());
      return postRepository.save(existingPost);
    }
    return null;
  }

  public boolean deletePost(long id) {
    if (postRepository.existsById(id)) {
      postRepository.deleteById(id);
      return true;
    }
    return false;
  }

  public List<Post_Entity> searchPosts(String keyword) {
    return postRepository.findByTitleContainingIgnoreCaseOrContentContainingIgnoreCase(keyword, keyword);
  }

  public List<Post_Entity> getPostsByAuthor(String author) {
    return postRepository.findByAuthorContainingIgnoreCase(author);
  }

}
