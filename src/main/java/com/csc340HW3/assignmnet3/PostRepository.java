import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository extends JpaRepository<Post_Entity, Long> {
  //List<Post_Entity> findByNameContainingIgnoreCaseOrDescriptionContainingIgnoreCase(String nameKeyword, String descriptionKeyword); not needed

  List<Post_Entity> findByNameContainingIgnoreCase(String nameKeyword); //to search by name

}
