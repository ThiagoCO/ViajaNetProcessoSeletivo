
# Desafio ViajaNet - SearchAiports

Aplicitavo desenvolvido para o processo seletivo de Desenvolvedor IOS na ViajeNet

## Desafio

O objetivo do projeto é listar uma lista de aeroportos de tornados de uma API conforme o texto digitado pelo usuario.

API Utilizada: https://www.viajanet.com.br/resources/api/Autocomplete/---texto digitado pelo usuario---

## Ferramentas utilizadas

- Xcode 10
- Swift 4.2
- CocoaPods
- Alomafire

## Arquitetura utilizada

Neste projeto estou utilizando MVVM (Movel-View-ViewModel) por ser um dos melhores padrões de arquitetura para desenvolvimento iOS.

Mais informações: https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel

## Pods utilizados

#### Alamofire (https://github.com/Alamofire/Alamofire)
Para requisições HTTP.


## Como compilar

1. Instale o CocoaPods caso não tenha instalado: https://cocoapods.org/
2. Vá até a pasta do projeto pelo terminal (a pasta que tem o arquivo `Podfile`)
3. Digite: `pod install`
4. Pronto. Agora basta abrir o projeto no XCode pelo arquivo **`ChuckNorris.xcworkspace`**

OBS: Não abra pelo **`ChuckNorris.xcodeproj`** pois os pods não serão carregados e dará erro na hora de compilar.
