package main

import "skk-backend-todolist/src/routes"

func main() {
	api := routes.Construct()
	api.Logger.Fatal(api.Start("localhost:8000"))
}
