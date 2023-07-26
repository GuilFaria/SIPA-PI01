import PySimpleGUI as sg
import psycopg2

sg.theme("LightGrey5")
###TELA DE CADASTRO ALUNO

###FUNCAO CADASTRO ALUNO
def limpar():
    window['-Nome_alu-'].update('')
    window['-Email_alu-'].update('')
    window['-Num_cel-'].update('')
    window['-CPF_alu-'].update('')
    window['-GENERO-F-'].update(True)
    window['-Profissao-'].update('')
    window['-Data_nasc-'].update('')
    window['-CEP_alu-'].update('')
    window['-Cidade-'].update('')
    window['-UF-'].update('')
    window['-Nome_rua-'].update('')
    window['-Num_end-'].update('')
    window['-Bairro-'].update('')


def atualiza():
    if len(lista) == 0:
        limpar()
    else:
        print (lista)
        window['-Nome_alu-'].update(lista[indice][0])
        window['-Email_alu-'].update(lista[indice][1])
        window['-Num_cel-'].update(lista[indice][2])
        window['-CPF_alu-'].update(lista[indice][3])
        if lista[indice][4]:
            window['-GENERO-M-'].update(True)
        else:
            window['-GENERO-F-'].update(True)
        window['-Profissao-'].update(lista[indice][5])
        window['-Data_nasc-'].update(lista[indice][6])
        window['-CEP_alu-'].update(lista[indice][7])
        window['-Cidade-'].update(lista[indice][8])
        window['-UF-'].update(lista[indice][9])
        window['-Nome_rua-'].update(lista[indice][10])
        window['-Num_end-'].update(lista[indice][11])
        window['-Bairro-'].update(lista[indice][12])


def todos():
    global indice
    global lista
    resposta = []
    with con:
        with con.cursor() as cursor:
            cursor.execute("SELECT * FROM aluno;")
            resposta = cursor.fetchall()
    lista.clear()
    for i in range(len(resposta)):
        lista.append(list(resposta[i]))

    sg.popup('Quantidade de registros: ' + str(len(resposta)))
    indice = 0

#2- aba

def aba1():
    layoutEsquerda = [
        [   sg.Text("", size=(8, 1)),
            sg.Text('Cadastro de Aluno', size=(16, 1), font=("", 19)),
            sg.Text("", size=(4, 1))
        ],
        [
            sg.Text("Nome:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Nome_alu-", focus=True)
        ],
        [
            sg.Text("E-mail:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Email_alu-")
        ],
        [
            sg.Text("Celular:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Num_cel-")
        ],
        [
            sg.Text("CPF:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-CPF_alu-")
        ],
        [
            sg.Text("Gênero:", size=(8, 1)),
            sg.Radio('Masculino', 'GRUPO1', default=False, key="-GENERO-M-"),
            sg.Radio('Feminino', 'GRUPO1', default=True, key="-GENERO-F-")
        ],
        [
            sg.Text("Profissão:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Profissao-")
        ],
        [
            sg.Text("Data. Nasc:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Data_nasc-")
        ],
        [
            sg.Text("CEP:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-CEP_alu-")
        ],
        [
            sg.Text("Cidade:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Cidade-")
        ],
        [
            sg.Text("UF:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-UF-")
        ],
        [
            sg.Text("Rua:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Nome_rua-")
        ],
        [
            sg.Text("Num. Endereço:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Num_end-")
        ],
        [
            sg.Text("Bairro:", size=(8, 1)),
            sg.InputText(size=(40, 1), key="-Bairro-")
        ],
        [
            sg.Text('', size=(1, 1))
        ],
        [   sg.Button('Inserir', size=(15, 1), key="-INSERIR-"),
            sg.Button('Limpar', size=(8, 1), key="-LIMPAR-"),
            sg.Button('Atualizar', size=(8, 1), key="-ATUALIZAR-")
        ],
        [   sg.Button('Remover', size=(8, 1), key="-REMOVER-"),
            sg.Button('Todos', size=(8, 1), key="-TODOS-"),
            sg.Button('Lançar nota', size=(15, 1), key="-LANÇAR NOTA-")
        ]
    ]

    ipaImage = [[sg.Image('IPAB.png', size=(1000, 600))]]
    layout = [
        [sg.Column(layoutEsquerda),
         sg.VSeperator(),
         sg.Column(ipaImage),]
    ]
    
    
    return sg.Window("SIPA - Sistema IPA", layout, use_default_focus=False, finalize=True)




    
    
###FUNÇÃO LANÇAMENTO DE NOTAS
#1 - abas
def aba2():
    layoutCadnot = [
                [sg.Text("", size=(2, 1)), sg.Text('Nota da atividade', size=(13, 1), font=("", 19)), sg.Text("", size=(1, 1))],
                [sg.Text('', size=(1, 1), font=('', 1))],
                [sg.Text('Codigo do curso', size=(15, 1)), sg.InputText(key='-Cod_curso-', size=(12, 1))],
                [sg.Text('Numero da atividade:', size=(15, 1)), sg.InputText(key='-num_atv-', size=(12, 1))],
                [sg.Text('ID do aluno:', size=(15, 1)), sg.InputText(key='-Id_alu-', size=(12, 1))],
                [sg.Text('Codigo da turma:', size=(15, 1)), sg.InputText(key='-Cod_turma-', size=(12, 1))],
                [sg.Text("A entrega foi feita?", size=(15, 1)), sg.Radio("Sim","ent", key='-entregas-', default=True), sg.Radio("Não","ent", key='-entregan-')],
                [sg.Text('Nota da atividade:', size=(15, 1)), sg.InputText(key='-nota_atv-', size=(12, 1))],
                [sg.Text('Id do monitor:', size=(15, 1)), sg.InputText(size=(12, 1), key='-Id_monitor-')],
                [sg.Button('Enviar', size=(10, 1), key='-Enviar-'), sg.Button('Voltar', size=(10,1), key='-Voltar1-')]
             ]
    ipaImage = [[sg.Image('IPAB.png', size=(1000, 600))]]
    layout2 = [
        [sg.Column(layoutCadnot),
         sg.VSeperator(),
         sg.Column(ipaImage),]
    ]
    
    
    return sg.Window("SIPA - Sistema IPA", layout2, use_default_focus=False, finalize=True)



#2 - Funcionalidades

def limparLanNota():
    window['-Cod_curso-'].update('')
    window['-num_atv-'].update('')
    window['-Id_alu-'].update('')
    window['-Cod_turma-'].update('')
    window['-entregas-'].update(True)
    window['-entregan-'].update(False)
    window['-nota_atv-'].update('')
    window['-Id_monitor-'].update('')



# Inicialização BD
con = psycopg2.connect(
    host="localhost", database="Teste_sipa", user="postgres", password="123456")


lista = []
indice = 0

window1, window2 = aba1(), None
# Run the Event Loop
while True:
    window, event, values = sg.read_all_windows()
    if event == sg.WIN_CLOSED:
        break
    elif event == "-LIMPAR-":
        limpar()
    elif event == "-INSERIR-":
        with con:
            with con.cursor() as cursor:
                cursor.execute("INSERT INTO Aluno (Nome_alu, Email_alu, Num_cel, CPF_alu, GENERO, Profissao, Data_nasc, CEP_alu, Cidade, UF, Nome_rua, Num_end, Bairro ) VALUES (%s, %s, %s, %s,  %s,  %s,  %s,  %s,  %s,  %s,  %s,  %s,  %s);",
                               (values['-Nome_alu-'], values['-Email_alu-'], values['-Num_cel-'], values['-CPF_alu-'], ('M' if values['-GENERO-M-'] else 'F'), values['-Profissao-'], values['-Data_nasc-'], values['-CEP_alu-'], values['-Cidade-'], values['-UF-'], values['-Nome_rua-'], values['-Num_end-'], values['-Bairro-']))
        limpar()
    elif event == "-ATUALIZAR-":
        with con:
            with con.cursor() as cursor:
                cursor.execute("UPDATE Aluno SET  Nome_alu = %s, Email_alu = %s, Num_cel = %s, CPF_alu = %s, GENERO = %s, Profissao = %s, Data_nasc = %s, CEP_alu = %s, Cidade = %s, UF = %s, Nome_rua = %s, Num_end = %s, Bairro = %s  WHERE Id_aluno = %s;",
                               (values['-Nome_alu-'], values['-Email_alu-'], values['-Num_cel-'], values['-CPF_alu-'], ('M' if values['-GENERO-M-'] else 'F'), values['-Profissao-'], values['-Data_nasc-'], values['-CEP_alu-'], values['-Cidade-'], values['-UF-'], values['-Nome_rua-'], values['-Num_end-'], values['-Bairro-'], lista[indice][0]))
        lista[indice] = [lista[indice][0], values['-Nome_alu-'], values['-Email_alu-'], values['-Num_cel-'],  values['-CPF_alu-'],
                         ('M' if values['-GENERO-M-'] else 'F'), values['-Profissao-'], values['-Data_nasc-'], values['-CEP_alu-'], values['-Cidade-'], values['-UF-'], values['-Nome_rua-'], values['-Num_end-'], values['-Bairro-']]
    elif event == "-REMOVER-":
        with con:
            with con.cursor() as cursor:
                cursor.execute("DELETE FROM Aluno WHERE ( = %s)",
                               (values['-Id_aluno-'],))
        lista.pop(indice)
        indice -= 1
        atualiza()

    elif event == "-TODOS-":
        todos()
    elif event == "-LANÇAR NOTA-" and not window2:
        window2 = aba2()
        window1.close()
        window1 = None
        
        
        
#aba2
    elif event == '-Enviar-':
            with con:
                with con.cursor() as cursor:
                    cursor.execute("INSERT INTO atividade_feita (Cod_curso, num_atv, Id_alu, Cod_turma, entrega, nota_atv, Id_monitor) VALUES (%s, %s, %s, %s, %s, %s, %s);",
                    (values['-Cod_curso-'], values['-num_atv-'], values['-Id_alu-'], values['-Cod_turma-'], ('True' if values['-entregas-'] else 'False'), values['-nota_atv-'], values['-Id_monitor-']))
            limparLanNota()
    elif event == "-Voltar1-" and not window1:
        window1 = aba1()
        window2.close()
        window2 = None
    
window.close()
# Fazer as mudanças para a base persistente
#con.commit()


#cursor.close()
#con.close()
