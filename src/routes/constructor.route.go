package routes

import "github.com/labstack/echo/v4"

type Router struct {
	route *echo.Echo
}

func Construct() *echo.Echo {
	var router = new(Router)
	router.route = echo.New()
	router.ConstructWeb()
	router.ConstructAPI()
	return router.route
}
