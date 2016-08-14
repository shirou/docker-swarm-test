package main

import (
	"fmt"
	"net/http"
	"strings"
	"time"
)

var wait = time.Duration(100 * time.Millisecond)

func handler(w http.ResponseWriter, r *http.Request) {
	rec := time.Now()

	time.Sleep(wait)
	rep := time.Now()

	s := []string{
		rec.Format(time.RFC3339Nano),
		rep.Format(time.RFC3339Nano),
	}

	fmt.Fprintf(w, strings.Join(s, ","))
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil) // fixed port num
}
