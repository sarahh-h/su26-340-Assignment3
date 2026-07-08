package com.csc340HW3.assignmnet3.postsPackage;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository extends JpaRepository<Post_Entity, Long> {
  
  List<Post_Entity> findByNameContainingIgnoreCaseOrContentContainingIgnoreCase(String keyword1, String keyword2);

  List<Post_Entity> findByNameContainingIgnoreCase(String n);

}
