package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.Period;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * A class to represent a user.
 *
 * @author pwaite
 */
@Entity(name = "User")
@Table(name = "user")
@NoArgsConstructor
@RequiredArgsConstructor
@Data

public class User {
    @Column(name = "first_name")
    @NonNull
    private String firstName;

    @Column(name = "last_name")
    @NonNull
    private String lastName;

    @Column(name = "user_name")
    @NonNull
    private String userName;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "date_of_birth")
    @NonNull
    private LocalDate dateOfBirth;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    private Set<Role> roles = new HashSet<>();

    /**
     * Calculate age from date of birth
     * Adapted from: https://www.baeldung.com/java-get-age
     *
     * @return current age
     */
    public int getAge() {
        LocalDate currentDate = LocalDate.now();

        return Period.between(dateOfBirth, currentDate).getYears();

    }

    /**
     * Add role.
     *
     * @param role the role
     */
    public void addRole(Role role) {
        roles.add(role);
        role.setUser(this);
    }

    /**
     * Remove role.
     *
     * @param role the role
     */
    public void removeRole(Role role) {
        roles.remove(role);
        role.setUser(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id && Objects.equals(firstName, user.firstName) &&
                Objects.equals(lastName, user.lastName) &&
                Objects.equals(userName, user.userName) &&
                Objects.equals(dateOfBirth, user.dateOfBirth) &&
                Objects.equals(roles, user.roles);
    }
}