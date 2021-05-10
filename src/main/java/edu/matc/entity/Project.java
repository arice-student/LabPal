package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDate;

/**
 * The type Project.
 */
@Entity(name = "Project")
@Table(name = "project")
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
@Data
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "client_name")
    @NonNull
    private String clientName;

    @Column(name = "start_date")
    @NonNull
    private LocalDate startDate;

    @Column(name = "closure_date")
    @NonNull
    private String closureDate;
}