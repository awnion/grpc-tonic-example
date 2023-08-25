import { GrpcWebFetchTransport } from '@protobuf-ts/grpcweb-transport'
import { GreeterClient } from './gen/helloworld.client'

let client = new GreeterClient(
  new GrpcWebFetchTransport({
    baseUrl: 'http://127.0.0.1:50051',
  }),
)

document.querySelector<HTMLInputElement>('#name')!.addEventListener('input', (e) => {
  client.sayHello({ name: (e.currentTarget as HTMLInputElement)?.value }).then((res) => {
    document.querySelector('#app')!.innerHTML = `Res: ${res.response.message}`
  })
})
