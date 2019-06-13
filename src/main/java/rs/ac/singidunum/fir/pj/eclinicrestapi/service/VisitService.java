package rs.ac.singidunum.fir.pj.eclinicrestapi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.Visit;
import rs.ac.singidunum.fir.pj.eclinicrestapi.repository.VisitRepository;

import java.util.List;

@Service
public class VisitService {
    @Autowired
    private VisitRepository visitRepository;

    public List<Visit> getAllVisits() {
        return (List<Visit>) visitRepository.findAll();
    }

    public Visit getVisitById(Long id) {
        return visitRepository.findById(id).orElse(null);
    }

    public Visit addVisit(Visit visit) {
        return visitRepository.save(visit);
    }

    public Visit updateVisit(Long id, Visit newVisit) {
        Visit visit = getVisitById(id);
        visit.setTitle(newVisit.getTitle());
        visit.setDescription(newVisit.getDescription());
        visit.setVisitedAt(newVisit.getVisitedAt());
        visit.setPatient(newVisit.getPatient());
        visit.setVisitType(newVisit.getVisitType());

        return visitRepository.save(visit);
    }

    public boolean deleteVisit(Long id) {
        visitRepository.deleteById(id);
        return true;
    }
}
