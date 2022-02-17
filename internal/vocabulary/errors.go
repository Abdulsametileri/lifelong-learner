package vocabulary

import (
	"fmt"
)

var (
	ErrFieldIsEmpty = func(field string) error { return fmt.Errorf("%s field is empty", field) }
)
