# SaudeID template orb

## Orbs utilizadas

* [orb-tools: circleci/orb-tools@9.3.1](https://circleci.com/developer/orbs/orb/circleci/orb-tools)
* [kubernetes: circleci/kubernetes@0.12.1](https://circleci.com/developer/orbs/orb/circleci/kubernetes)
* [gcp-cli: circleci/gcp-cli@2.4.0](https://circleci.com/developer/orbs/orb/circleci/gcp-cli)
* [helm: circleci/helm@1.2.0](https://circleci.com/developer/orbs/orb/circleci/helm)

## Pack e publicação (desenvolvimento)

* O comando `make pack`, na raiz do projeto, pode ser utilizado para gerar um pack.
* O comando `make alpha` irá executar o pack e a publicação da versão de desenvolvimento `dev:alpha`.
* O comando `make dev VERSION=${VERSION}` irá realizar o pack e a versão de desenvolvimento `dev:${VERSION}`, sendo que a variável `${VERSION}` deve ser substituida pela versão desejada.

## Exemplo de uso da orb

```yaml
version: 2.1
orbs:
  orbteste: szarthjr/orbtest@dev:alpha

workflows:
  main-workflow:
    jobs:
      - orbteste/main:
          cluster: << nome-cluster >>
          context: << contexto das variáveis de ambiente >> 
```
