package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
)

type HelloWorldResp struct {
	Result string
}

func main() {
	fmt.Println("hello world")
	r := gin.Default()
	r.GET("/testing", func(context *gin.Context) {
		res := HelloWorldResp{
			Result: "sukses bos",
		}
		context.JSON(http.StatusOK, res)
	})
	err := r.Run(":8080")
	if err != nil {
		fmt.Println("something wrong", err)
	}
}