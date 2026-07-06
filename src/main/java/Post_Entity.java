import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity                 //lets us create a table without having to do the create table query; acts an entry point for JPA
@Table(name = "posts")
@Data                   
@NoArgsConstructor
@AllArgsConstructor

public class Post_Entity {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)   //autoincrement
  private long characterId; //for personal reference this was changed from id

  @Column(nullable = false)   //NOT NULL
  private String name;         //name <- title

  @Column(nullable = false, columnDefinition = "TEXT")
  private String description; //description <- content

  @Column(nullable = false)
  private String characterType;  //characterType <- author

  @Column(nullable = false)
  private String universe;  //added

  @JsonFormat(pattern = "yyyy-MM-dd HH:mm")     //keeping time for fun
  private LocalDateTime createdAt;

  public Post_Entity(String title, String content, String author) {
    this.name = name;
    this.characterType = characterType;
    this.description = description;
    this.universe = universe;
  }

  @PrePersist
  @PreUpdate
  protected void onUpdate() {
    this.createdAt = LocalDateTime.now();
  }

}

