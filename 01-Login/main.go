package main

import (
	"app"
)

func main() {
	// the returned error is not handled
	app.Init()
	StartServer()
}
