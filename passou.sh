#/bin/bash

function enterclear () {
    read -r -p "precione qualquer tecla para continuar"
    clear
}

function start() {
    read -r -p "Seja bem vindo! qual o seu nome para cadastrar no nosso banco de talentos? " input
    NOME=$(echo $input | awk {' print $1 '})
    echo Ótimo $NOME, você irá aprender muito aqui
    sleep 3
    enterclear
    escolhacargo
}

function escolhacargo () {
    read -r -p "Seu currículo parece ok para um estagiário, estamos contratando muitas pessoas agora, então você pode escolher pra onde ir, se não der certo a gente realoca em seguida, diz pra mim, qual área você gostaria de estagiar? desenvolvimento frontend, backend ou devops? " input
    if [[ $input =~ "frontend" ]]; then                                                                                                                            
        front
    elif [[ $input =~ "backend" ]]; then
        backend
    elif [[ $input =~ "devops" ]]; then
        devops
    else 
        echo perdão, nao entendi, nao estamos começando muito bem... Mas vamos tentar de novo
        enterclear
        escolhacargo
    fi
}

function frontend () {
    echo "Olá ${NOME}, bem vindo ao seu primeiro dia como estagiário no setor de desenvolvimento frontend, aqui nós montamos as interfaces que os usuários vão utilizar! Com certeza a área mais importante da empresa!"
    echo "Imagino que você não tenha uma grande experiência desenvolvendo, então vamos ao básico aqui. O Eduardo aqui e você vai trabalhar com ele"
    enterclear
    echo Você está sentado em sua mesa no setor de desenvolvimento front-end. Você está acompanhando um desenvolvedor experiente que está trabalhando em um novo componente de interface do usuário. O desenvolvedor está mostrando a você como funciona o componente e como ele deve ser usado.
    enterclear
    echo "O componente é uma barra de pesquisa que permite que os usuários encontrem itens em uma lista. O desenvolvedor está pensando em adicionar uma opção para os usuários filtrarem os resultados da pesquisa."
    enterclear
    echo "O desenvolvedor está pensando em adicionar uma opção de filtro à barra de pesquisa. Você acha que essa é uma boa ideia?"
    echo (A) Sim, isso seria muito útil para os usuários.
    echo (B) Não, isso seria desnecessário.
    read -r -p "Qual sua escolha? " input
    if [[ $input =~ "A" ]]; then                                                                                                                            
        echo "bom, vamos lá"
    elif [[ $input =~ "B" ]]; then
        echo "bom, eu perguntei por educação, essa é a demanda do dia"
    else 
        echo perdão, nao entendi, mas também nao importa, vamos fazer do mesmo jeito...
    fi
    enterclear
    echo Após pouco mais de uma hora, o desenvolvedor termina seu novo código e apresenta para você
    read -r -p "Pressione ENTER para conferir"
    echo "ASCII ART pendente"
    enterclear
    echo Bom, pode brincar um pouco
    echo O desenvolvedor pede que voce sente na cadeira dele
    sleep 3
    echo o que voce vai escrever no campo de busca?

}
function perguntaA () {

}

start