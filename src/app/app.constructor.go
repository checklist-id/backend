package app

type Factory struct{}

func Construct() Factory {
	return Factory{}
}
