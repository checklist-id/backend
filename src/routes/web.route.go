package routes

import (
	"skk-backend-todolist/src/app"
)

func (r *Router) ConstructWeb() *Router {
	var feature = app.Construct()

	r.route.GET("/docs", feature.Stoplight.GetAPISpec)
	r.route.GET("/assets/apispec.json", feature.Stoplight.ServeDocsFile)

	return r
}
