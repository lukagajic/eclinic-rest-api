package rs.ac.singidunum.fir.pj.eclinicrestapi.repository;

import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Doctor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DoctorRepository extends CrudRepository<Doctor, Long> {
}
