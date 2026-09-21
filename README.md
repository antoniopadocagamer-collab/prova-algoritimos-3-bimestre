prova algoritimos 

import json

def salvarconta(conta):
    try:
        with open("conta.json", "w", encoding = "utf-8" ) as f:
            json.dump(conta, f, ensure_ascii = False, indent=2 )
        print("Conta salva com sucesso!")

    except Exeception as e:
        print(f"Erro ao guardar: {e}")

    try:
        with open("conta.json", "r", encoding="utf-8") as f:
            return json.load(f)
    except FileNotFoundError:
        return None 

def deposito(conta, valor):
    if valor <= 0:
        print("O valor deve ser positivo.")
        return
    conta["saldo"] += valor
    conta["historico"].append(f"Deposito de R$ {valor:.2f}")
    print("Deposito realizado com sucesso. Saldo atual: R${conta['saldo']}")

def saque(conta, valor):
    if valor <=0:
        print("Parametro invalido, o valor deve ser positivo.")
        return
    if valor >= 0 (conta["saldo"]):
        print(" Saldo insuficiente")
    conta["saldo"] -= valor
    conta["historico"].append(f"Saque de R$ {valor:.2f}")
    print("Saque realizado. Saldo atual: R$ {conta['saldo']}")

def transferir(conta, valor):
    if valor <=0:
        print("não é possivel transferir 0 reais")
    conta["saldo"] -= valor
    conta["historico"].append(f"Transferencia de R$ {valor:.2f}")
    print("Transferencia realizada. Saldo atual: R$ {conta['saldo]}")

def extrato(conta):
    print("\n --- EXTRATO DE {conta['titular'].upper()}---")
    if not conta["historico"]:
        print("Não houve movimentação ainda")
    else:
        for movimento in conta["historico"]:
            print(f" - {movimento}")

    print(f"Saldo atual: R$ {conta['saldo']:.2f}")

#LOOP PRINCIPAL 

print("---BEM VINDO--- \n")
conta = ("carregarusuario {'conta}")

if conta is None:
    print("Não encontramos nenhuma conta, crie uma conta nova já!")
    nome_input = input("Qual o seu nome? ")
    telefone_input = (input("Digite seu numero de telefone"))
    cpf_input = (input("Digite seu CPF"))
    email = input("Digite seu email")
    idade = int(input("Digite sua idade"))
    estado_civil = input("Qual seu estado civil")

    conta = {
        "titular": nome_input,
        "saldo": 0.0,
        "historico": [],
        "telefone": telefone_input,
        "cpf": cpf_input,
        "email": email,
        "idade": idade,
        "estado_civil": estado_civil
    }

else: 
    print("Bem vindo de volta {'conta'}!")
    print(input(f"calma lá meu patrão, insira sua senha bem devagar"))

while True:
    print("\n Saldo atual: R$ {conta['saldo']:.2f} ")
    opcao = int(input("[1] Deposito | [2] Saque | [3] Extrato | [4]transferir | [5] Salvar \n"))

    
    match(opcao):

    case 1: deposito
         valor = float(conta{'saldo'})
    if deposito >= 0:
            print("Erro, não foi possivel fazer o deposito")
    else:
            valor = float(conta{'saldo'}) += "saldo"

    case 2: saque
        valor = float(conta{'saldo'})
    if saque >= 0:
        print("Erro, não foi possivel realizar o saque")
    else:
        valor = float(conta{'saldo'}) -= "saldo"



        apenas um comentário, acabei apagando os case 3 e 4, e o pouco progresso que tive por conta do nervosismo, não é uma desculpa, apenas uma explicação pelo meu péssimo desempenho
