import { createChannel, createClient } from "nice-grpc-web";
import { GreeterClient, GreeterDefinition } from "./gen/helloworld";

const client: GreeterClient = createClient(
  GreeterDefinition,
  createChannel("http://127.0.0.1:50051")
);

client.sayHello({ name: "1 World" }).then((res) => {
  console.log("res", res);
});
