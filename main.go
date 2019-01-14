package main

import (
	"io/ioutil"

	"github.com/golang/protobuf/proto"
	pb "github.com/sprichard/grpc-poc/tutorial"
)

func main() {
	pep1 := &pb.Person{
		Name:  "steven",
		Id:    123,
		Email: "test@test.com",
	}

	var people []*pb.Person
	people = append(people, pep1)

	book := &pb.AddressBook{
		People: people,
	}

	out, err := proto.Marshal(book)
	if err != nil {
		panic(err)
	}

	err = ioutil.WriteFile("test-proto-result.txt", out, 0644)
	if err != nil {
		panic(err)
	}

}
