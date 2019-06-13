package rs.ac.singidunum.fir.pj.eclinicrestapi.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Patient;

@Repository
public interface PatientRepository extends CrudRepository<Patient, Long> {
}
