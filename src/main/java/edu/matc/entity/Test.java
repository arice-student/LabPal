package edu.matc.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "Test")
@Table(name = "test")
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
@Data
public class Test {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "sample_id")
    @NonNull
    private String sampleId;

    @Column(name = "project_id")
    @NonNull
    private String projectId;

    @Column(name = "test_description")
    @NonNull
    private String testDescription;

    @Column(name = "method_id")
    @NonNull
    private String methodId;

    @Column(name = "analyst")
    @NonNull
    private String analyst;
}


