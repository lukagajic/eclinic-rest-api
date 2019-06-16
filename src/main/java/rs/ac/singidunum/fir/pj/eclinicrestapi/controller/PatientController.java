package rs.ac.singidunum.fir.pj.eclinicrestapi.controller;

import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Patient;
import rs.ac.singidunum.fir.pj.eclinicrestapi.service.PatientService;

import java.util.List;

@RestController
@RequestMapping("/api/patients")
public class PatientController {
    private final PatientService patientService;

    public PatientController(PatientService patientService) {
        this.patientService = patientService;
    }

    @GetMapping
    public List<Patient> getAllPatients() {
        return patientService.getAllPatients();
    }

    @GetMapping("/{id}")
    public Patient getPatientById(@PathVariable Long id) {
        return patientService.getPatientById(id);
    }

    @PostMapping
    public Patient addPatient(@RequestBody Patient patient) {
        return patientService.addPatient(patient);
    }

    @PutMapping("/{id}")
    public Patient updatePatient(@PathVariable Long id, @RequestBody Patient patient) {
        return patientService.updatePatient(id, patient);
    }

    @DeleteMapping("/{id}")
    public boolean deletePatient(@PathVariable Long id) {
        return patientService.deletePatient(id);
    }
}
