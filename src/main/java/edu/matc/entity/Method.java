package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDate;

/**
 * The type Method.
 */
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
    private String title;

    @Column(name = "client")
    @NonNull
    private String client;

    @Column(name = "status")
    @NonNull
    private String status;

    @Column(name = "effective_date")
    private LocalDate date;

    /**
     * Instantiates a new Method.
     *
     * @param version the version
     * @param title   the title
     * @param client  the client
     * @param status  the status
     * @param date    the date
     */
    public Method(@NonNull int version, @NonNull String title, @NonNull String client, @NonNull String status, LocalDate date) {
        this.version = version;
        this.title = title;
        this.client = client;
        this.status = status;
        this.date = date;
    }

}