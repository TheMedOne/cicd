package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	r.GET("/", func(c *gin.Context) {
		c.String(http.StatusOK, "  wayeeeeeh it is done alkhawa deyali done done ")
	})

	r.Run(":8888")
}
