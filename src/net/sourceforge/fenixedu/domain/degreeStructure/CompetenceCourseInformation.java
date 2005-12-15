package net.sourceforge.fenixedu.domain.degreeStructure;

import net.sourceforge.fenixedu.domain.ICompetenceCourse;
import net.sourceforge.fenixedu.domain.IExecutionYear;

public class CompetenceCourseInformation extends CompetenceCourseInformation_Base {

    protected CompetenceCourseInformation() {
        super();
    }

    public CompetenceCourseInformation(String name, String code, Double ectsCredits, Boolean basic, Double theoreticalHours,
            Double problemsHours, Double labHours, Double projectHours, Double seminaryHours, RegimeType regime,
            ICompetenceCourse competenceCourse, IExecutionYear executionYear) {
        
        this();        
        setName(name);
        setCode(code);
        setEctsCredits(ectsCredits);        
        setBasic(basic);
        setTheoreticalHours(theoreticalHours);
        setProblemsHours(problemsHours);
        setLabHours(labHours);
        setProjectHours(projectHours);
        setSeminaryHours(seminaryHours);
        setRegime(regime);
        
        setCompetenceCourse(competenceCourse);
        setExecutionYear(executionYear);
    }
    
    public void edit(String name, String code, Double ectsCredits, Boolean basic, Double theoreticalHours,
            Double problemsHours, Double labHours, Double projectHours, Double seminaryHours, RegimeType regime) {
        
        setName(name);
        setCode(code);
        setEctsCredits(ectsCredits);        
        setBasic(basic);
        setTheoreticalHours(theoreticalHours);
        setProblemsHours(problemsHours);
        setLabHours(labHours);
        setProjectHours(projectHours);
        setSeminaryHours(seminaryHours);
        setRegime(regime);
    }
    
    public void edit(String program, String generalObjectives, String operationalObjectives,
            String evaluationMethod, String prerequisites, String nameEn, String programEn,
            String generalObjectivesEn, String operationalObjectivesEn, String evaluationMethodEn,
            String prerequisitesEn) {
        
        setProgram(program);
        setGeneralObjectives(generalObjectives);
        setOperationalObjectives(operationalObjectives);
        setEvaluationMethod(evaluationMethod);
        setPrerequisites(prerequisites);
        setNameEn(nameEn);
        setProgramEn(programEn);
        setGeneralObjectivesEn(generalObjectivesEn);
        setOperationalObjectivesEn(operationalObjectivesEn);
        setEvaluationMethodEn(evaluationMethodEn);
        setPrerequisitesEn(prerequisitesEn);
    }
    
    public void delete() {
        setExecutionYear(null);
        setCompetenceCourse(null);
        super.deleteDomainObject();
    }

    public int getTotalLessonHours() {
        return getTheoreticalHours().intValue() + getProblemsHours().intValue() + getLabHours().intValue()
        + getProjectHours().intValue() + getSeminaryHours().intValue(); 
    }
}
