package routes

import (
	"skk-backend-todolist/src/app"

	"github.com/labstack/echo/v4"
)

func ConstructWeb(route *echo.Echo) {
	var feature = app.Construct()

	route.GET("/docs", feature.Stoplight.GetAPISpec)
	route.GET("/assets/apispec.json", feature.Stoplight.ServeDocsFile)
}
