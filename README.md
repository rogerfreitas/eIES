e-IES
=====

**Sistema de Gestão para Instituição de Ensino Superior**

É uma poderosa ferramenta de gestão acadêmica para IES (Instituição de Ensino Superior), que segue todos os critérios estipulados pelo MEC (Ministério da Educação) em 2013 e pela LDB (Lei de Diretrizes e Bases da Educação Nacional - 6 Edição em 2011). Esta ferramenta é fruto de mais de 15 anos de experiência em IES por todo o Brasil de diversos profissionais comprometido com a gestão do ensino no país.

O e-IES conta com os seguintes sub-sistemas: WAC - WebAcadêmico; WAL - WebAluno; WPR - WebProfessor; WCO - WebCoordenador; WPS - WebProcessoSeletivo; WFI - WebFinanceiro. Abaixo segue as principais funcionalidades do sistema.

O conceito de "Cadastro" será ampliado e utilizado como sendo as operações conhecidas como (CRUD: Create=Criar, Read=Ler, Update=Atualizar, Delete=Apagar) e/ou uma execução de rotina de programação que irá interagir com a base de dados e/ou um sistema de pesquisa eficiente para consultar os registros envolvidos da funcionalidade. Portanto adotaremos a sigla CRUDES (Create, Read, Update, Delete, Execute, Search).

WAC,WAL,WPR,WCO
===============

**1) IES (WAC)**

*Cadastro da IES* com as informações da mantida, mantenedora e contendo o código INEP da IES. O sistema permite ser utilizado por mais de uma mantida ao mesmo tempo.

**2) Cursos (WAC)**

*Cadastro dos Tipo de Cursos* (Graduação Presencial, Graduação a Distância, Pós Graduação Latu Sensu, Pós Graduação Stricto Sensu Mestrado, Pós Graduação Stricto Sensu Doutorado)

*Cadastro dos Cursos* contendo todas as sua informações: Nome do Curso, Habilitação, Sigla do Curso, Quantidade de Períodos, Período Máximo estipulado para Jubilamento do aluno, Centro de Custo do Curso, Código no ENADE e 
forma de cobrança do curso que poderá ser: Gratuito, Pago com valor fechado por Curso e Pago com a realização de Matrícula por disciplinas.

*Cadastro das Portarias dos Cursos*, para os cursos que precisam de autoriazação e reconhecimento, contém informações Data da Portaria, Data da Publicação da Portaria, Número da Portaria, Número do Despacho, Número do Processo e do Registro Sapiens. 

*Cadastro do Preço dos Cursos* define o período acadêmico para início da vigência do preço, o preço do curso e o número de parcelas para pagamento. Somente os Cursos com a forma de cobrança (Pago com valor fechado por Curso) utilizarão estes registros.

**3) Disciplinas e Currículo dos Cursos (WAC)**

*Cadastro dos Currículos dos Cursos* informa o período acadêmico que o currículo foi criado, se está ativo ou não (Novos alunos sempre serão inseridos no currículo ativo), as cargas horárias mínimas optativas e da matrícula no período e relaciona para cada currículo do curso as disciplinas a serem cursadas definindo em que periodo será cursada, se é optativa ou não e Peso (Créditos da Disciplina no Currículo) que poderá ser atribuido para um posterior cálculo do rendimento do aluno.

*Cadastro dos Pré-Requisitos das disciplinas curriculares* indicam qual disciplina deverá ser cursada como predecessora a matrícula da disciplina solicitada. Também podemos ter um pré-requisito obrigatório ou não. Quando o pré-requisito não é obrigatório e a disciplina não é ofertada naquele período acadêmico o sistema desconsidera este pré-requisito.

*Cadastro da Disciplina* contém o tipo de curso que irá atender, Nome da Disciplina, Ementa, Carga Horária Teória, Carga Horária Prática e Área de Conhecimento CNPq da disciplina. Neste cadastro também consiste da realização das equivalências entre as disciplinas que são utilizados para a matrícula e histórico escolar da currículo de entrada do aluno. A equivalência é realizada como um Produtório Somatório. Por exemplo: A disciplina X é equivalente a (disciplina Y e disciplina Z) ou (disciplina W e disciplina R), ou seja, utilizando lógica booleana, X = (Y+Z).(W+R) e numa fórmula geral podemos expressar X=Produtorio(Somatorio(Aij)).

*Cadastro do Preço da Disciplina* contém o período acadêmico de início de vigência do preço e o preço da disciplina. Reajustes automáticos das disciplinas são permitidos, alterando todos os preço das disciplinas de um determinado tipo de curso.

*Cadastro do Programa da Disciplina* contém o programa, os objetivos, recursos, forma de avaliação, BiBliografia e se está ativo ou não. A disciplina poderá ter diversos programas, mas apenas um ativo.

**4) Período Acadêmico (WAC)**

*Cadastro do Período Acadêmico* define a data inicial e final do período, a descrição, o ano e o semestre, além dos parâmetros para um tipo de curso. Parâmetros como o percentual máxima de faltas permitida,a nota mínima entre (0-10) ou opção de trabalhar por conceito (A,B,C,D,E), neste caso A (8-10), B(6-8), C(4-6), D(2-4) e E (0-2). A quantidade de letras no conceito pode ser alterada e a redistribuição ocorre linearmente. Neste também cadastro todos os eventos do período acadêmico, inclusive intervalos de datas relacionados a pedidos de protocolos.

*Cadastro do SAP (Situação do Aluno no Período)* consite em informar em cada período acadêmico qual é a situação do aluno. Só poderá haver uma situação do aluno por período acadêmico. As situações do aluno são as seguintes:
NM - Não Matriculado (Aluno ATIVO)
MA - Matriculado (Aluno ATIVO)
AL - Amparo Legal (Aluno ATIVO)
TR - Transferência Saída (Aluno INATIVO)
DL - Desligamento (Aluno INATIVO)
TC - Trancamento (Aluno ATIVO)
RC - Reopção de Curso (Aluno INATIVO)
DC - Desistência de Curso (Aluno INATIVO)
JB - Jubilamento (Aluno INATIVO)
AB - Abandono (Aluno ATIVO)

**5) Registro do Aluno (WAC)**

*Cadastro da Turma de Ingresso* define o currículo do curso que será utilizado para os alunos nela cadastrados, o periodo acadêmico de entrada desta turma e o turno.

*Cadastro da Forma de Ingresso* como por exemplo: Processo Seletivo, Reopção de Curso ou Novo Curso Superior. Estas forma de entrada quando indicada no cadastro do aluno deverá ser corroborado pelo seu protocolo respectivo.

*Cadastro do Aluno* é composto pelo registro dos dados pessoais e pelo número de matrícula do aluno gerado pelo sistema. Os registros de dados pessoais são unificados para todos os subsistemas para evitar duplicidades e amarradas ao CPF. Essa tabela de dados pessoais é utilizada para Alunos, Inscritos, Clientes Pessoa Física, Professores, Administrativos e Coordenadores. E junto a ela temos além dos dados pessoais completos, telefones, endereços conforme INEP, Rede Sociais, E-mails, Registro de qualquer tipo de deficiência, Login para acesso ao sistema e documentos complementares. Caso o aluno realize um segundo curso na IES é gerado um novo registro com um novo número de matrícula, mas os dados pessoais já serão reaproveitados, não sendo necessário a relização do cadastro novamente.


**6) Registro dos Recursos (WAC)**

*Cadastro do Professor* possui o registro dos dados pessoais, o número de matrícula do professor e a URL do curriculo lattes. Como é de comume exigência do MEC que os professores universitários possuam o curriculum cadastrado no lattes, não há sentindo duplicar esta informação para dentro do sistema.

*Cadastro das Salas* possui o registro das Salas que serão utilizadas na criação das Pautas (Registro de Classe).


**7) Otimização de Recursos (WAC)** - http://lalescu.ro/liviu/fet/ - Importação do XML

FET é um software livre aberto para programar automáticamente um calendário para uma faculdade/universidade. Utiliza um algoritmo rápido e eficiente para resolver o problema "TimeTable" de otimização. O FET está sob uma licença GNU GPL. O arquivo de saída do FET é uma arquio lido pelo sistema para evitar a inserção manual.

*Cadastro das Pautas (Registro de Classe)* - Apesar do sistema pertimir a importação do arquivo XML do FET, o que é aconselhável para o exercício da otimização dos recursos. Muitas IES, simplesmente realizam a alocação dos recursos seguindo os seus próprios critérios, portanto o sistema permite a inserção manual das pautas, onde pode definir-se o professor responsável pela pauta, a disciplina, o período acadêmico, o número de vagas, a situação da pauta, se está fechada ou não, e os horários das pautas, podendo ser alocado professores diferentes, como professores substitutos e auxiliares durante a informação do agendamento e horário das pautas.

**8) Matricula (WAC,WAL)**

*Realização da Matrícula* é um dos processos mais importante para IES, já que neste momento associamos um aluno a uma pauta. O conceito de matrícula (Primeira matrícula) e re-matrícula (Matrícula nos próximos períodos letivos) é o mesmo para o sistema. Alguns cursos são realizados em diversos períodos letivos e outros apenas em um período letivo e isto define a quantidade de matrícula que será necessária para a conclusão do curso. Por exemplo: Num curso de graduação de 5 anos, composto por 10 períodos letivos, caso o aluno não reprove em nenhuma pauta, o sistema irá realizar 10 matrículas ao longo da realização do curso. No entanto, se for um curso de extensão de 6 meses, o mesmo poderá ser realizado em um único período, mesmo que ele possua três disciplinas sequenciais, por exemplo. Neste caso o sistema irá realizar 1 matrícula. Nesta funcionalidade o sistema registra o aluno, o período e a situação da matrícula, juntamente com a inserção do registro do aluno na pauta que poderá ser feito pelo aluno (WAL) ou pela secretaria acadêmica (WAC) . Quando o módulo financeiro é ativado junto com o módulo acadêmico, é neste momento que o aluno torna-se Cliente e as suas ocorrências (mensalidades) são geradas conforme pré configuração no sistema financeiro (WFI), sendo importante também fazer uma pré verificação nos protocolos de Bolsas no acadêmico.


**9) Controle de Pautas (Registro de Classe) (WAC, WPR, WAL)** - Início do Período Letivo 

No sistema WAC é possível realizar o controle de todas as pautas no sistema, no entanto no WPR os professores só possuem acesso a pauta que está relacionada ao seu cadastro para realizar o controle.

*Cadastro da Frequência* - O sistema WPR possui uma avançada tela de frequência que permite que o professor faça a sua chamada em sala de aula seja pelo computador, notebook ou mobile. Esta funcionalidade também poderá ser utilizada pelo WAC,WCO para verificação. O Aluno pelo WAL possui acesso somente ao seu próprio controle de frequência.

*Cadastro do Grupo de Avaliações* - O Grupo de Avaliações é definido de acordo com os critérios acadêmicos da IES e servem apenas para agrupar avaliações durante um período acadêmico.

*Cadastro das Avaliações e Notas* - O sistema permite que seja cadastrado quantas avaliações for o critério do professor e permite o lançamento das notas ou abanar ou registrar a falta de cada uma delas. A média da pauta é calculado através de média ponderada, através de pesos definidos no cadastro da avaliação. Esta funcionalidade também poderá ser utilizada pelo WAC,WCO para verificação. O Aluno pelo WAL possui acesso somente ao sua própria nota.

*Cadastro do Acompanhamento* - Como de praxe em registro de classes o professor deverá registrar o conteúdo ministrada na aula planejada para aquela pauta naquele determinado horário da pauta pelo WPR. Esta funcionalidade também poderá ser utilizada pelo WAC,WCO para verificação.

**10) Protocolos (WAC, WAL)**

Todos os protocolos possuem em comum os seguintes campos: Número do Protocolo, o Aluno, o Período Acadêmico, Tipo do Protocolo, Data de Abertura, Data de Fechamento, Deferimento (S/N) e o texto de análise. Também é permitido anexar qualquer arquivo junto ao registro do protocolo, na intenção de protocolar arquivos escaneados e autenticados pela secretaria acadêmica.

**Protocolo de Amparo Legal (Altera o SAP do Aluno para "AL")**- Este protocolo permite o trancamento (interrupção) dos estudos do aluno por período indeterminado conforme Lei ou regimento interno estabelecido. São exemplos de amparo legal: 

*Amparo à Gestante*
Quem pode solicitar:
Aluna regular, a partir do 8º mês de gestação.
Quando pode solicitar: 
A qualquer tempo (solicitação não vinculada ao Calendário Acadêmico).
Documentos necessários:
Fase 1 - Atestado médico indicando o mês de gestação em que a aluna se encontra.
Fase 2 - Certidão de Nascimento e Atestado médico.

*Amparo à Afecções congênitas*
Quem pode solicitar:
Alunos merecedores de tratamento excepcional ou procurador mediante uma cópia do documento de identidade do aluno e uma autorização. Nessa autorização deve estar escrito o nome do procurador o seu CPF ou RG, os dados do aluno (nome, matrícula, RG) e ainda a assinatura do aluno que coincida com a assinada no seu documento de identidade.
Quando pode solicitar:
A qualquer tempo (solicitação não vinculada ao Calendário Acadêmico).
Documentos necessários:
Laudo médico e cópia do documento de identidade

Outros tipos de Amparo Legais poderão ser permitido conforme regimento interno, Lei ou mandato judicial. Quando o aluno retornar para os estudos o protocolo deverá informar o período acadêmico de retorno,e desta forma o SAP do aluno retorna para a situação NM (Não Matriculado) permitindo que o mesmo realize novamente a matrícula no período acadêmico vigente.


**Protocolo de Transferência Saída (Altera o SAP do Aluno para "TR")** - Este protocolo é solicitado pelo aluno em intervalos registrados no calendário acadêmico ou em qualquer momento para sair da IES atual e ser transferido para outra IES a qual poderá ou não ser informado na solicitação de protocolo. Este protocolo torna o aluno inativo para a IES atual. Normalmente a IES de destino solicita a IES atual diversas informações que poderá tramitar eletronicamente através de autenticidade digital ou em meio físico, conforme regimento interno.

**Protocolo de Desligamento (Altera o SAP do Aluno para "DL")** - Este protocolo é realizado pelo sistema em intervalos registrados no calendário acadêmico quando o aluno extrapola os limites determinados de abandonos estabelecidos no regimento intero e definido nos parâmetros acadêmicos. Este protocolo torna o aluno inativo para a IES atual.

**Protocolo de Trancamento (Altera o SAP do Aluno para "TC")** - Este protocolo é solicitado pelo aluno em intervalos registrados no calendário acadêmico ou em qualquer momento, e permite o trancamento (interrupção) dos estudos do aluno por período determinado nos parâmetros acadêmicos. Dentro do intervalo do trancamento o aluno poderá retornar aos estudos e deverá ser informado o período acadêmico de retorno, e desta forma o SAP do aluno retorna para a situação NM (Não Matriculado) permitindo que o mesmo realize novamente a matrícula no período acadêmico vigente.

**Protocolo de Reopção de Curso (Altera o SAP do Aluno para "RC")** - Este protocolo é solicitado pelo aluno para transfência de curso dentro da IES atual em intervalos registrados no calendário acadêmico ou em qualquer momento. Este protocolo torna o aluno (matricula atual) inativo para a IES atual. E desta forma um novo número de matrícula é gerado para o cadastro do aluno quando o mesmo é deferido pela IES. Com este novo número de matrícula, o aluno deverá solicitar protocolos de Aproveitamento de Estudos das disciplinas similares cursadas no curso anterior e realizar a matrícula no novo curso.

**Protocolo de Desistência de Curso (Altera o SAP do Aluno para "DC")** - Este protocolo é solicitado pelo aluno para sair da IES atual em intervalos registrados no calendário acadêmico ou em qualquer momento. Este protocolo torna o aluno inativo para a IES atual.

**Protocolo de Jubilamento (Altera o SAP do Aluno para "JB")** - Este protocolo é realizado pelo sistema em intervalos registrados no calendário acadêmico quando o aluno extrapola os limites determinados de periodos acadêmicos estabelecidos no regimento intero e definido nos parâmetros acadêmicos. Este protocolo torna o aluno inativo para a IES atual.

**Protocolo de Abandono (Altera o SAP do Aluno para "AB")** - Este protocolo é realizado pelo sistema em intervalos registrados no calendário acadêmico quando o aluno não realiza a matrícula no período acadêmico vigente. Tornando a situação do Aluno de "NM" para "AB". O Aluno ainda está ativo se estiver dentro da quantidade de períodos aceitáveis definido nos parâmetros acadêmicos. Caso contrário o sistema abrirá o protocolo de Desligamento "DL".

**Protocolo de Aproveitamento de Estudo** - Este protocolo é solicitado pelo aluno para obter dispensa de disicplinas no currículo ativo do curso, as disciplinas similares ou idênticas podem ter sido cursadas ou dentro da IES atual ou mesmo em outra IES. Normalmente esta análise e deferimento é realizada pelo coordenador de curso. Um protocolo permite solicitar N disciplinas, no entanto, o deferimento portanto ocorrer para cada disciplina. O deferimento negativo do protocolo só ocorre quando todas as disciplinas solicitadas são negadas. As disciplinas deferidas positivamente neste protocolo são exibidas no momento da matrícula e no histórico escolar do aluno como "AE".

**Protocolo de Colação de Grau** - 

**Protocolo de Registro de Diploma**

**Protocolo de Provas Substitutivas**

**Protocolo de Revisão de Nota**

**Protocolo de Aluno Especial**

**Protocolo de Solicitação de Documentos**

**Protocolo de Revisão de Dados Cadastrais**

**Protocolo de Revisão de Histórico Escolar**

**Protocolo de Monografia, Dissertação e Teses**

**Protocolo de Bolsas**

**Protocolo de Solicitação de Matrícula**

**Protocolo de Processo Seletivo**

**Protocolo de Novo Curso Superior**

**Protocolo de Transferência de Entrada**

WPS
===

11) Processo Seletivo

Cadastro do Processo Seletivo

Cadastro das Vagas do Processo Seletivo

Cadastro do Vestibular

Cadastro dos Grupos de Conhecimento

12) Registro dos Inscritos do Processo Seletivo

Cadastro do Inscrito no WPS e Online

Cadastro das opções dos cursos

Cadastro das Respostas das Questões Sócio Educacionais

13) Alocação de Salas do Processo Seletivo

Cadastro das Salas do Processo Seletivo

Alocação das Salas por Vestibular

14) Provas do Vestibular por Grupo

Cadastro das Provas do Vestibular por Grupo

15) Vestibular Online e Questões Sócio Educacionais

Cadastro das Questões e Opções das Questões

Cadastro do Vestibular Online com as Questões Selecionadas

16) Respostas do Vestibular Online e Resultado Final

Resposta do Vestibular Online

Resultado Final do Inscrito por prova e geral 

WFI
===

17) Plano de Contas

18) Centro de Custo

19) Registro de Clientes

20) Registro de Fornecedores

21) Registro de Funcionários

22) Registro de Impostos

23) Ocorrências

24) Ordens de Pagamento

25) Títulos

26) Controle de Dedução e Acrescimo

27) Folha de Pagamento


ADM - Sistema de Administração
==============================

28) Administração do Sistema
















