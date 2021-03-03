package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Objects;

@Entity(name = "Role")
@Table(name = "role")
@NoArgsConstructor
@RequiredArgsConstructor
@Data

public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @ManyToOne
    @JoinColumn(name = "user_id",
            foreignKey = @ForeignKey(name = "role_user_user_id_fk")
    )
    @NonNull
    private User user;

    @Column(name="user_name")
    @NonNull
    private String userName;


    @Column(name="role_name")
    @NonNull
    private String roleName;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Role role = (Role) o;
        return id == role.id &&
                Objects.equals(userName, role.userName) &&
                Objects.equals(roleName, role.roleName);
    }
}
