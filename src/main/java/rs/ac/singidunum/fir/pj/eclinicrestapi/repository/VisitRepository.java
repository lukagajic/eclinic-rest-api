package rs.ac.singidunum.fir.pj.eclinicrestapi.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Visit;

@Repository
public interface VisitRepository extends CrudRepository<Visit, Long> {
}
