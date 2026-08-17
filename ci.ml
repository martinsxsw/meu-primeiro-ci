name: ci pipeline

on: 
 push:
   branches: [main]
 pull_request:
   branches: [main]

jobs:
  build-and-test:
    runs-on: ubbuntu-latest
    steps:
      - name: baixar código
        uses: actions/checkout@v4

      - name: instalar dpendências
        run: npm install

      - name: rodar testes
        run: npm test
