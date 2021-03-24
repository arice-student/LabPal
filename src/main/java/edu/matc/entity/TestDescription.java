package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "TestDescription")
@Table(name = "test_description")
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
@Data
public class TestDescription {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "test_name")
    @NonNull
    private String testName;
}


