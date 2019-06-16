package rs.ac.singidunum.fir.pj.eclinicrestapi.controller;

import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.VisitType;
import rs.ac.singidunum.fir.pj.eclinicrestapi.service.VisitTypeService;

import java.util.List;

@RestController
@RequestMapping("/api/visitTypes")
public class VisitTypeController {
    private final VisitTypeService visitTypeService;

    public VisitTypeController(VisitTypeService visitTypeService) {
        this.visitTypeService = visitTypeService;
    }

    @GetMapping
    public List<VisitType> getAllVisitTypes() {
        return visitTypeService.getAllVisitTypes();
    }

    @GetMapping("/{id}")
    public VisitType getVisitTypeById(@PathVariable Long id) {
        return visitTypeService.getVisitTypeById(id);
    }

    @PostMapping
    public VisitType addVisitType(@RequestBody VisitType visitType) {
        return visitTypeService.addVisitType(visitType);
    }

    @PutMapping("/{id}")
    public VisitType updateVisitType(@PathVariable Long id, @RequestBody VisitType visitType) {
        return visitTypeService.updateVisitType(id, visitType);
    }

    @DeleteMapping("/{id}")
    public boolean deleteVisitType(@PathVariable Long id) {
        return visitTypeService.deleteVisitType(id);
    }
}

