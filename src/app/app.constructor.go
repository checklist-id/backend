package app

import "skk-backend-todolist/src/app/stoplight"

type Factory struct {
	Stoplight stoplight.Handler
}

func Construct() Factory {
	return Factory{
		Stoplight: stoplight.Construct(),
	}
}
