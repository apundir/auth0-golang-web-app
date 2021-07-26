// module name missing repository path, further info at -
// https://golang.org/ref/mod#module-path
module 01-Login

go 1.12

require (
	app v0.0.0
	callback v0.0.0
	github.com/codegangsta/negroni v1.0.0
	// new packages can be pulled in here (with proper testing)
	github.com/coreos/go-oidc v2.2.1+incompatible // indirect
	github.com/gorilla/mux v1.8.0
	github.com/stretchr/testify v1.7.0 // indirect
	home v0.0.0
	login v0.0.0
	logout v0.0.0
	middlewares v0.0.0
	user v0.0.0
)

// all the packages within the module are declared as modules in themselves. That is simply wrong!!
// all these required packges shouldn't be required in first place
// the entire go.mod needs major updates and corrections
replace app => ./app

replace auth => ./auth

replace callback => ./routes/callback

replace home => ./routes/home

replace login => ./routes/login

replace logout => ./routes/logout

replace middlewares => ./routes/middlewares

replace user => ./routes/user

replace templates => ./routes/templates
