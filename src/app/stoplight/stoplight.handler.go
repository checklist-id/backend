package stoplight

import "github.com/labstack/echo/v4"

type Handler struct{}

func (h *Handler) GetAPISpec(c echo.Context) error {
	return c.File("public/html/stoplight.html")
}

func (h *Handler) ServeDocsFile(c echo.Context) error {
	return c.File("docs/api-spec/todolist.json")
}

func ConstructHandler() *Handler {
	return &Handler{}
}
