package net.sourceforge.fenixedu.domain.student.curriculum;

import java.math.BigDecimal;
import java.util.Collection;

import net.sourceforge.fenixedu.domain.StudentCurricularPlan;

public interface ICurriculum {
    
    abstract public Collection<ICurriculumEntry> getCurriculumEntries();

    abstract public BigDecimal getSumPiCi();

    abstract public BigDecimal getSumPi();

    abstract public BigDecimal getAverage();

    abstract public BigDecimal getSumEctsCredits();
    
    abstract public Integer getCurricularYear();

    abstract public boolean isEmpty();

    abstract public BigDecimal getCreditsEctsCredits();
    
    abstract public StudentCurricularPlan getStudentCurricularPlan();
    
    abstract public void setAverageType(AverageType averageType);

}
