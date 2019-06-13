package rs.ac.singidunum.fir.pj.eclinicrestapi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Patient;
import rs.ac.singidunum.fir.pj.eclinicrestapi.repository.PatientRepository;

import java.util.List;

@Service
public class PatientService {
    @Autowired
    private PatientRepository patientRepository;

    public List<Patient> getAllPatients() {
        return (List<Patient>) patientRepository.findAll();
    }

    public Patient getPatientById(Long id) {
        return patientRepository.findById(id).orElse(null);
    }

    public Patient addPatient(Patient patient) {
        return patientRepository.save(patient);
    }

    public Patient updatePatient(Long id, Patient newPatient) {
        Patient patient = getPatientById(id);
        patient.setFirstName(newPatient.getFirstName());
        patient.setLastName(newPatient.getLastName());
        patient.setBornAt(newPatient.getBornAt());
        patient.setEmail(newPatient.getEmail());
        patient.setContactPhone(newPatient.getContactPhone());
        patient.setDoctor(newPatient.getDoctor());

        return patientRepository.save(patient);
    }

    public boolean deletePatient(Long id) {
        patientRepository.deleteById(id);
        return true;
    }
}
