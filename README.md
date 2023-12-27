# RelogIntegration

Esta Gem foi criada para viabilizar a comunicação com o Relog, ferramenta responsável por gerenciar as necessidades do setor de logística.

## Instalação

Instale a gem e adicione-a ao Gemfile da aplicação executando:

    $ bundle add relog_integration

Se o bundler não estiver sendo usado para gerenciar dependências, instale a gem executando:

    $ gem install relog_integration

## Uso

O Relog disponibiliza API's para enviar pedidos para o HighJump (HJ) e para o Intelipost, onde a comunicação entre o Relog e estas ferramentas podem se feitas via fila, SQS, ou HTTP.

Exemplos de como enviar pedidos para o HJ e para o Intelipost.

### Enviado pedido para o HJ via SQS

```ruby
credentials = {
    aws_access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID', ''), 
    aws_secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY', ''),
    region: 'us-east-1',
    queue_url: 'https://sqs.us-east-1.amazonaws.com/XXXXXXXXXXXX/queue_url_name'
}

client = Relog::IntegrationPlatform::Client.new(credentials)

params = {order_id: "1"}
client.send_order(params)
```

### Enviado pedido para o HJ via HTTP
Obs: Ainda não está disponível o envio de pedidos para o HJ via HTTP. O código baixo serve apenas de exemplo.

```ruby
credentials = { api_key: '' }

client = Relog::IntegrationPlatform::Client.new(credentials)

params = {order_id: "1"}
client.send_order(params)
```

### Enviado pedido para o Intelipost via SQS

```ruby
credentials = {
    aws_access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID', ''), 
    aws_secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY', ''),
    region: 'us-east-1',
    queue_url: 'https://sqs.us-east-1.amazonaws.com/XXXXXXXXXXXX/queue_url_name'
}

client = Relog::Tms::Client.new(credentials)

params = {order_id: "1"}
client.send_order(params)
```

### Enviado pedido para o Intelipost via HTTP
Obs: Ainda não está disponível o envio de pedidos para o Intelipost via HTTP. O código baixo serve apenas de exemplo.

```ruby
credentials = { api_key: '' }

client = Relog::Tms::Client.new(credentials)

params = {order_id: "1"}
client.send_order(params)
```


## Contributing

Bug reports and pull requests are welcome on Repos at https://repassa@dev.azure.com/repassa/ReNova/_git/relog_integration.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
