package rs.ac.singidunum.fir.pj.eclinicrestapi.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.VisitType;

@Repository
public interface VisitTypeRepository extends CrudRepository<VisitType, Long> {
}
