package rs.ac.singidunum.fir.pj.eclinicrestapi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Visit;
import rs.ac.singidunum.fir.pj.eclinicrestapi.service.VisitService;

import java.util.List;

@RestController
@RequestMapping("/api/visits")
public class VisitController {
    @Autowired
    private VisitService visitService;

    @GetMapping
    public List<Visit> getAllVisits() {
        return visitService.getAllVisits();
    }

    @GetMapping("/{id}")
    public Visit getVisitById(@PathVariable Long id) {
        return visitService.getVisitById(id);
    }

    @PostMapping
    public Visit addVisit(@RequestBody Visit visit) {
        return visitService.addVisit(visit);
    }

    @PutMapping("/{id}")
    public Visit updateVisit(@PathVariable Long id, @RequestBody Visit visit) {
        return visitService.updateVisit(id, visit);
    }

    @DeleteMapping("/{id}")
    public boolean deleteVisit(@PathVariable Long id) {
        return visitService.deleteVisit(id);
    }
}
