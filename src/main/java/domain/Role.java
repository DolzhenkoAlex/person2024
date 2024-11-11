package domain;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;


/**
 *   Класс данных о должностях
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Role {

    // Идентификатор должности
    @Id
    private Long id;

    // Наименование должности
    private String namerole;
}
