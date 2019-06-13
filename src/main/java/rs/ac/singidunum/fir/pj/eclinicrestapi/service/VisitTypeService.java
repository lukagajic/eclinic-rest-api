package rs.ac.singidunum.fir.pj.eclinicrestapi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.fir.pj.eclinicrestapi.entity.VisitType;
import rs.ac.singidunum.fir.pj.eclinicrestapi.repository.VisitTypeRepository;

import java.util.List;

@Service
public class VisitTypeService {
    @Autowired
    private VisitTypeRepository visitTypeRepository;

    public List<VisitType> getAllVisitTypes() {
        return (List<VisitType>) visitTypeRepository.findAll();
    }

    public VisitType getVisitTypeById(Long id) {
        return visitTypeRepository.findById(id).orElse(null);
    }

    public VisitType addVisitType(VisitType visitType) {
        return visitTypeRepository.save(visitType);
    }

    public VisitType updateVisitType(Long id, VisitType newVisitType) {
        VisitType visitType = getVisitTypeById(id);
        visitType.setName(newVisitType.getName());

        return visitTypeRepository.save(visitType);
    }

    public boolean deleteVisitType(Long id) {
        visitTypeRepository.deleteById(id);
        return true;
    }
}
