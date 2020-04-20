package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	r.GET("/", func(c *gin.Context) {
		c.String(http.StatusOK, " Hello Hello world k8s cluster --> Golang app server MG  Paris v1.0")
	})

	r.Run(":8888")
}
