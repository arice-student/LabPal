package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDate;

@Entity(name = "Method")
@Table(name = "method")
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
@Data
public class Method {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "version")
    @NonNull
    private int version;


    @Column(name = "title")
    @NonNull
    private int title;

    @Column(name = "client")
    @NonNull
    private String client;

    @Column(name = "effective_date")
    private LocalDate date;
}