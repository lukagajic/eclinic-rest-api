package rs.ac.singidunum.fir.pj.eclinicrestapi.controller;

import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Doctor;
import rs.ac.singidunum.fir.pj.eclinicrestapi.service.DoctorService;

import java.util.List;

@RestController
@RequestMapping("/api/doctors")
public class DoctorController {
    private final DoctorService doctorService;

    public DoctorController(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    @GetMapping
    public List<Doctor> getAllDoctors() {
        return doctorService.getAllDoctors();
    }

    @GetMapping("/{id}")
    public Doctor getDoctorById(@PathVariable Long id) {
        return doctorService.getDoctorById(id);
    }

    @PostMapping
    public Doctor addDoctor(@RequestBody Doctor doctor) {
        return doctorService.addDoctor(doctor);
    }

    @PutMapping("/{id}")
    public Doctor updateDoctor(@PathVariable Long id, @RequestBody Doctor doctor) {
        return doctorService.updateDoctor(id, doctor);
    }

    @DeleteMapping("/{id}")
    public boolean deleteDoctor(@PathVariable Long id) {
        return doctorService.deleteDoctor(id);
    }
}

