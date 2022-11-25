package routes

import "github.com/labstack/echo/v4"

func Construct() *echo.Echo {
	var router = echo.New()
	ConstructAPI(router)
	ConstructWeb(router)
	return router
}
