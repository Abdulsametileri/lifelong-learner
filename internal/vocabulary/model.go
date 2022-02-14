package vocabulary

type Vocabulary struct {
	Word     string `json:"word"`
	Meaning  string `json:"meaning"`
	Sentence string `json:"sentence"`
}

func (v *Vocabulary) String() string {
	return v.Word + " " + v.Meaning + " " + v.Sentence
}
