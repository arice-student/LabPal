package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * The type Contact form.
 */
@Entity(name = "ContactForm")
@Table(name = "contact_form")
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
@Data
public class ContactForm {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "email")
    @NonNull
    private String email;

    @Column(name = "message")
    @NonNull
    private String message;

    @Column(name ="date")
    @NonNull
    private LocalDate date;
}


