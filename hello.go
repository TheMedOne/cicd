package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	r.GET("/", func(c *gin.Context) {
		c.String(http.StatusOK, "  Hello world k8s cluster --> Golang app server  production stage 1.0")
	})

	r.Run(":8888")
}
