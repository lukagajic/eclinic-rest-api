package rs.ac.singidunum.fir.pj.eclinicrestapi.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "visit_type")
public class VisitType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "visit_type_id")
    private Long visitTypeId;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "visitType", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonIgnore
    private Set<Visit> visits = new HashSet<>();

    public Long getVisitTypeId() {
        return visitTypeId;
    }

    public void setVisitTypeId(Long visitTypeId) {
        this.visitTypeId = visitTypeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Visit> getVisits() {
        return visits;
    }

    public void setVisits(Set<Visit> visits) {
        this.visits = visits;
    }
}
