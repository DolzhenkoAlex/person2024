package domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;


/**
 *   Класс для данных сотрудника
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Person {

    // Идентификатор сотрудника
    private Long id;

    // Имя
    private String firstName;

    // Фамилия
    private String lastName;

    // Телефон
    private String phone;

    // email
    private String email;

    // Внешний ключ -ссылка на сущность Role
    private Long idRole;

    // Навигационное свойства - ссылка на должность
    @Setter
    private Role role;

    public Role role () {
        return role;
    }
    public String getRole() {
        return role.getNamerole();
    }
}
