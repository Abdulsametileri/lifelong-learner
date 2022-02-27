package htmlwrapper

import (
	"html/template"
	"io"
)

type GOHTMLWrapper struct {
	template *template.Template
}

func NewGOHTMLWrapper(templateFiles ...string) *GOHTMLWrapper {
	return &GOHTMLWrapper{
		template: template.Must(template.ParseFiles(templateFiles...)),
	}
}

func (g *GOHTMLWrapper) Execute(wr io.Writer, data interface{}) error {
	return g.template.Execute(wr, data)
}
