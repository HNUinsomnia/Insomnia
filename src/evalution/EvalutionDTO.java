package evalution;

public class EvalutionDTO {
	
	int evalutionID;
	String UserID;
	String Myname;
	String Because;
	int Startyear;
	String TimeDivide;
	String State;
	String EvaluationTitle;
	String EvaluationContent;
	String TotalScore;
	
	public int getEvalutionID() {
		return evalutionID;
	}
	public void setEvalutionID(int evalutionID) {
		this.evalutionID = evalutionID;
	}
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		this.UserID = userID;
	}
	public String getMyname() {
		return Myname;
	}
	public void setMyname(String myname) {
		this.Myname = myname;
	}
	public String getBecause() {
		return Because;
	}
	public void setBecause(String because) {
		this.Because = because;
	}
	public int getStartyear() {
		return Startyear;
	}
	public void setStartyear(int startyear) {
		this.Startyear = startyear;
	}
	public String getTimeDivide() {
		return TimeDivide;
	}
	public void setTimeDivide(String timeDivide) {
		this.TimeDivide = timeDivide;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		this.State = state;
	}
	public String getEvaluationTitle() {
		return EvaluationTitle;
	}
	public void setEvaluationTitle(String evaluationTitle) {
		this.EvaluationTitle = evaluationTitle;
	}
	public String getEvaluationContent() {
		return EvaluationContent;
	}
	public void setEvaluationContent(String evaluationContent) {
		this.EvaluationContent = evaluationContent;
	}
	public String getTotalScore() {
		return TotalScore;
	}
	public void setTotalScore(String totalScore) {
		this.TotalScore = totalScore;
	}
	
	public EvalutionDTO( ) {
		
	}
	
	public EvalutionDTO(int evalutionID, String userID, String myname, String because, int startyear, String timeDivide,
			String state, String evaluationTitle, String evaluationContent, String totalScore) {
		super();
		this.evalutionID = evalutionID;
		this.UserID = userID;
		this.Myname = myname;
		this.Because = because;
		this.Startyear = startyear;
		this.TimeDivide = timeDivide;
		this.State = state;
		this.EvaluationTitle = evaluationTitle;
		this.EvaluationContent = evaluationContent;
		this.TotalScore = totalScore;
	}
	
	
	
}
