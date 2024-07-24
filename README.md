# APIMultiCEP
API para consulta de CEPs em múltiplos webservices
### Sumário
1. [Introdução](#introdução)
2. [APIs de CEP homologadas](#apis-de-cep-homologadas)
3. [Requisitos](#requisitos)
4. [Arquitetura](#arquitetura)
5. [Endpoints da API](#endpoints-da-api)
6. [Tratamento de Erros](#tratamento-de-erros)
7. [Estrutura de Diretórios](#estrutura-de-diretórios)
8. [Configuração e Execução](#configuração-e-execução)
9. [Dependências](#dependências)
10. [Exemplo de Uso](#exemplo-de-uso)
11. [Exemplo de Uso em Delphi](#exemplo-de-uso-em-delphi)

---

### Introdução
Esta documentação descreve uma API desenvolvida em Delphi, utilizando o framework Horse, para consulta de CEPs. A API segue a arquitetura MVC (Model-View-Controller) e é orientada a interfaces. Ela realiza consultas a diferentes APIs de CEP e, em caso de falha de comunicação com uma, tenta a próxima disponível.

### APIs de CEP homologadas
- viacep (https://viacep.com.br/)
- apicep (https://ws.apicep.com/cep/)
- awesomeapi (https://docs.awesomeapi.com.br/api-cep)

### Requisitos
- Delphi (versão recomendada: Rio ou superior)
- Framework Horse
- Bibliotecas adicionais para comunicação HTTP (Indy ou similar)

### Arquitetura
A API foi desenvolvida seguindo a arquitetura MVC, com as seguintes responsabilidades:

- **Model**: Define as interfaces e classes de dados.
- **View**: Não aplicável diretamente neste caso, pois a API é puramente back-end.
- **Controller**: Gerencia as requisições HTTP e a lógica de consulta de CEP.

### Endpoints da API
#### Consulta de CEP
- **Endpoint**: `/cep/:cep`
- **Método HTTP**: `GET`
- **Descrição**: Consulta informações sobre o CEP fornecido.
- **Parâmetros**:
  - `cep` (string): O CEP a ser consultado.
- **Resposta**:
  - Código 200: Sucesso.
  - Código 400: CEP inválido.
  - Código 404: CEP não encontrado.
  - Código 500: Erro interno do servidor.

### Tratamento de Erros
A API tenta consultar várias fontes de dados de CEP. Se uma consulta falhar, a próxima fonte será tentada até que todas sejam esgotadas.

### Estrutura de Diretórios
```
/src
|-- /controller
|   |-- MultiCepServer.controller.pas
|-- /model
|   |-- /connection
|   |   |-- MultiCepServer.model.connections.Interfaces.pas
|   |   |-- MultiCepServer.model.connections.RestClient.pas
|   |   |-- MultiCepServer.model.connections.Factory.pas
|   |-- /entities
|   |   |-- MultiCepServer.model.entities.Endereco.pas
|   |-- /exceptions
|   |   |-- MultiCepServer.model.exceptions.CEP.pas
|   |   |-- MultiCepServer.model.exceptions.Rest.pas
|   |-- /services
|   |   |-- /CEP
|   |   |   |-- MultiCepServer.model.services.CEP.ApiCep.pas
|   |   |   |-- MultiCepServer.model.services.CEP.AwesomeAPI.pas
|   |   |   |-- MultiCepServer.model.services.CEP.Base.pas
|   |   |   |-- MultiCepServer.model.services.CEP.Builder.pas
|   |   |   |-- MultiCepServer.model.services.CEP.ViaCEP.pas
|   |   |-- MultiCepServer.model.services.Interfaces.pas
|   |   |-- MultiCepServer.model.services.Factory.pas
|   |-- ICepService.pas
|   |-- TCepService.pas
|-- /view
|   |-- (não aplicável)
|-- /routers
|   |-- MultiCepServer.routers.cep.pas
|-- /utils
|   |-- MultiCepServer.utils.Utilitarios.pas
|-- MultiCepServer.dpr
```

### Configuração e Execução
1. **Configuração**:
   - A sequência das APIs pode ser configurada no arquivo `MultiCepServer.model.services.CEP.Builder.pas`.

2. **Execução**:
   - Compile o projeto no Delphi.
   - Execute o binário gerado.

### Dependências
- **Horse**: Framework para desenvolvimento de APIs RESTful.
- **Delphi REST Client**: Biblioteca para comunicação HTTP.
- **JSON**: Biblioteca para manipulação de dados JSON.

### Exemplo de Uso
#### Requisição:
```
GET /cep/01001000
```
#### Resposta:
```json
{
  "status": 200,
  "cep": "01001000",
  "tipoendereco": "",
  "logradouro": "Praça da Sé",
  "complemento": "lado ímpar",
  "numero": "",
  "bairro": "Sé",
  "cidade": "São Paulo",
  "uf": "SP",
  "codigoibge": 3550308,
  "ddd": 11,
  "latitude": 0,
  "longitude": 0
}
```

### Exemplo de Uso em Delphi
O client também foi desenvolvido em Delphi seguindo a arquitetura MVC (Model-View-Controller) e é orientada a interfaces. Para realizar a comunicação HTTP, foi utilizado o framework [RestRequest4Delphi](https://github.com/viniciussanchez/RESTRequest4Delphi), mas como o projeto é orientado a interfaces, pode ser falcilmente substituído por outro framework, bastando apenas implementar a interface e ajustar a factory para instanciar a classe utilizando o framework desejado.

Para que seja realizada a consulta, o usuário terá que preencher o campo CEP no form e pressionar a tecla ENTER. Feito isso o sistema realizará a consulta na API, e esta realizará a consulta em três webservices diferente.

![image](https://github.com/user-attachments/assets/ccb159ec-5ad1-4b76-8a36-2ce1450a6058)

#### Consulta e resultado:

```Delphi
procedure TfrmPrincipal.edCEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    TMultiCepClientController.New
      .Services
        .ServiceCEP
          .Codigo(edCEP.Text)
          .Display(
            procedure(AValue: TEndereco)
            begin
              edUF.Text := AValue.UF;
              edLocal.Text := AValue.Logradouro;
              edLogradouro.Text := AValue.Logradouro;
              edBairro.Text := AValue.Bairro;
              edNumero.Text := AValue.Numero;
              edComplemento.Text := AValue.Complemento;
              edCidade.Text := AValue.Cidade;
            end)
          .Pesquisar;
  end;
end;
```
