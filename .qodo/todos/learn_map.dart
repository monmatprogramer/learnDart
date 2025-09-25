class LearnMap{
	Map<String, int> scores = {};

	void addToMap(String key, int value){
		scores[key] = value;
	}

	@override
	String toString(){
		return "scores: $scores";
	}
}