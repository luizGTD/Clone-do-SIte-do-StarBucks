salario = float(input('Quanto que é o seu salário ? '))
# 1. Calcular o valor do aumento (15% de 2000 é 300)
valor_aumento = salario * 0.15

# 2. Calcular o preço final (Salário + Aumento)
salario_final = salario + valor_aumento
print('O valor do seu salário que era {}, vamos adicionar {} nele. Então vai ficar {}'.format(salario, valor_aumento, salario_final ))