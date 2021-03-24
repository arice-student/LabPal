package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDate;

@Entity(name = "Sample")
@Table(name = "sample")
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
@Data
public class Sample {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "name")
    @NonNull
    private String name;

    @Column(name = "container")
    @NonNull
    private String container;

    @Column(name = "temperature")
    @NonNull
    private String temperature;

    @Column(name = "lot")
    @NonNull
    private String lot;

    @Column(name = "concentration")
    @NonNull
    private String concentration;

    @Column(name = "manufacture_date")
    @NonNull
    private LocalDate manufactureDate;
}