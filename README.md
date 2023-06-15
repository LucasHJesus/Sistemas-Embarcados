# Sistemas-Embarcados
Projeto final da matéria de sistemas embarcados
PAINEL SOLAR SEGUIDOR DE SOL
(SUN TRACKING SOLAR PANEL)

Lucas Humberto Jesus de Lima - 12011ECP011
Bruno Pavan Ciriani da SIlva - 12011ECP012

Objetivo
O projeto tem como finalidade a construção de um circuito que controla a
rotação(posição relativa) de um painel solar baseado na incidência luminosa, de forma a
maximizar a irradiação na superfície da placa. Tal tarefa é realizada por meio da utilização de
sensores LDR(posicionados nas bordas da placa), cuja medição serve de referência para
rotação em torno do eixo de um servo motor.
Dados como energia gerada em tempo real serão monitorados, exibidos em um display
LCD e armazenados em uma memória externa.
Principais Requisitos
Para o funcionamento adequado do projeto, existem certos requisitos, como os
seguintes componentes:
● Painel Solar
● Microcontrolador STM32F411CE
● 2 Sensores LDR
● 3 Resistores de 10kΩ
● Servo Motor
● Push Button (NA)
● Placa para apoio do painel solar
● Fios de conexão
● Bateria 9V
● Regulador de Tensão
● Display LCD
● Memória externa e adaptador
● Resistores para medição da energia gerada

As funções dos principais componentes são:
Painel Solar : Transforma energia luminosa em energia elétrica.
STM32F411CE: Microcontrolador usado para comparar os sinais enviados e coordenar o
funcionamento dos demais componentes do projeto.
Sensores LDR: Geram diferentes valores de resistência de acordo com a incidência de luz solar
sobre eles, para serem comparados pelo microcontrolador.
Servo Motor: Rotaciona a placa na direção desejada.
Push Button: Habilita(ou desabilita) a alimentação do circuito.
Bateria 9V: Alimentar os componentes do circuito.
Regulador de Tensão: Regula o valor de tensão para o valor usado pelos componentes do
circuito.
Display: Exibe dados de interesse coletados pelo circuito medidor em tempo real.
Memória Externa: Armazena dados de interesse coletados pelo circuito medidor.
Resistores para medição da energia gerada: Divisor de tensão com o intuito de limitar o valor
em 3.3V para que possa ser medido pelo microcontrolador.

Diagrama de blocos

![Diagrama PRJ1](https://github.com/LucasHJesus/Sistemas-Embarcados/assets/96553038/2c7bb359-5f02-4862-87e3-07d50ac0b426)
