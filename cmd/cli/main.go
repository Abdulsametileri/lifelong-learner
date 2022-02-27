package main

import "github.com/Abdulsametileri/lifelong-learner/internal/env"

func main() {
	env.Parse(".env")
	Execute()
}
