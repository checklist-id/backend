package stoplight

func Construct() Handler {
	return *ConstructHandler()
}
