package rs.ac.singidunum.fir.pj.eclinicrestapi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Doctor;
import rs.ac.singidunum.fir.pj.eclinicrestapi.repository.DoctorRepository;

import java.util.List;

@Service
public class DoctorService {
    @Autowired
    private DoctorRepository doctorRepository;

    public List<Doctor> getAllDoctors() {
        return (List<Doctor>) doctorRepository.findAll();
    }

    public Doctor getDoctorById(Long id) {
        return doctorRepository.findById(id).orElse(null);
    }

    public Doctor addDoctor(Doctor doctor) {
        return doctorRepository.save(doctor);
    }

    public Doctor updateDoctor(Long id, Doctor newDoctor) {
        Doctor doctor = doctorRepository.findById(id).orElse(null);
        doctor.setFirstName(newDoctor.getFirstName());
        doctor.setLastName(newDoctor.getLastName());
        doctor.setEmail(newDoctor.getEmail());
        doctor.setBornAt(newDoctor.getBornAt());

        return doctorRepository.save(doctor);
    }

    public boolean deleteDoctor(Long id) {
        doctorRepository.deleteById(id);
        return true;
    }
}
