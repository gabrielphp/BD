-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 17:46
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimento'),
(3, 'Político'),
(4, 'Saúde'),
(5, 'Celebridades'),
(6, 'Literatura'),
(7, 'Ciência'),
(8, 'Educação'),
(9, 'Comunidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codnoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnoticia`, `titulo`, `noticia`, `codRedator`, `codCategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'YouTube para Android muda forma de avançar em vídeos', 'O YouTube alterou a forma de avançar para determinado trecho de um vídeo no Android. Com a mudança, um simples toque sobre a barra de progresso não permite mais pular para outra parte do vídeo – o recurso visa impedir que toques acidentais prejudiquem a experiência do usuário ao assistir a um conteúdo na plataforma.\r\n\r\nYouTube vai banir fake news sobre vacinas de COVID-19\r\nGoogle lança app do YouTube Music para Apple Watch\r\nYouTube app (Android)\r\nApp do YouTube no Android (Imagem: Tecnoblog)\r\n\r\nEsse comportamento já era padrão no aplicativo do YouTube para iPhone (iOS): para avançar, o usuário deve tocar sobre a barra e deslizar o dedo até o local que corresponde ao trecho que deseja assistir.\r\n\r\nA novidade foi revelada pelo Android Police, que teve acesso a um relato do especialista em produto rjlefty96.\r\n\r\nPor que vocês estão mudando a experiência da barra de busca / barra de progresso / depuração? / Não consigo tocar para mover a barra de busca / barra de progresso / barra de progressão por algum motivo.\r\n\r\nOuvimos dizer que um único toque para mover a barra de progresso causou muita frustração com toques acidentais. Agora você pode tocar, segurar e deslizar a barra de progresso – o ponto vermelho irá rastrear seu movimento e, assim que você levantar o dedo, o vídeo irá pular para esse ponto no vídeo.\r\n\r\nSuporte do Google, via rjlefty96\r\n\r\nRecurso foi encarado como bug no passado\r\nEsse recurso já esteve no Android em 2018 – na época, foi tratado como um bug pelo Google, e “resolvido” em seguida. Agora, se o relato do especialista estiver correto, a mudança vem para ficar, como uma solução para os toques acidentais.\r\n\r\nAinda assim, há muitos usuários insatisfeitos. No fórum de suporte do Google, há reclamações sobre a dificuldade em avançar ou entender a mudança na interface.\r\n\r\n“Não consigo mais clicar na barra de busca para avançar o vídeo em momentos diferentes. Ele funciona pela metade depois de clicar algumas vezes ou não. Isso aconteceu com o aplicativo e o telefone totalmente atualizados. Tentei desinstalar e reinstalar e parece funcionar por alguns minutos, então o problema acontece novamente”, explica um usuário.\r\n\r\nO Google não se manifestou publicamente sobre a chegada do recurso ao Android.', 4, 9, 18, 7, 2019),
(2, 'Senador morto por covid-19 questionou \"vírus chinês\" e criticou isolamento.', 'Arolde Oliveira (PSD-RJ), senador que morreu ontem por causa de complicações causadas por covid-19, costumava questionar a gravidade do novo coronavírus. Aliado do presidente Jair Bolsonaro (sem partido), ele defendia o uso da cloroquina e criticava a prática do isolamento social. Quando a pandemia chegou ao Brasil, Arolde se manifestou bastante sobre o assunto no Twitter.... - Veja mais em https://noticias.uol.com.br/politica/ultimas-noticias/2020/10/22/senador-morto-por-covid-19-questionou-virus-chines-e-criticou-isolamento.htm?cmpid=copiaecola', 2, 4, 11, 4, 2020),
(3, 'Ao criticar vacina chinesa, Bolsonaro mente e contradiz medidas do governo.', 'Ao desautorizar em público o ministro da Saúde, general Eduardo Pazuello, o presidente Jair Bolsonaro (sem partido) fez críticas à CoronaVac, vacina desenvolvida pelo laboratório chinês Sinovac em parceria com o Instituto Butantan. Os ataques, no entanto, são marcados por falsidades e contradizem medidas do próprio governo durante a pandemia do novo coronavírus. A fritura de Pazuello tem tom semelhante às feitas com os ex-ministros Luiz Henrique Mandetta (DEM) e Nelson Teich. O presidente disse ainda que \"o povo brasileiro não será cobaia de ninguém\". \"Diante do exposto, minha decisão é a de não adquirir a referida vacina\", escreveu Bolsonaro em suas redes sociais.', 5, 4, 21, 10, 2020),
(4, 'Celular robusto Samsung Galaxy XCover Pro é lançado no Brasil por R$ 2,8 mil', 'Nesta terça-feira (20), a Samsung oficializou o smartphone robusto Galaxy Xcover Pro no mercado brasileiro. O modelo já havia sido lançado nos EUA em janeiro deste ano e se destaca pela durabilidade e por um recurso de comunicação como se fosse um rádio, ideal para ambientes de trabalho e prática de esportes.\r\n\r\nGalaxy Tab Active 3 é o tablet da Samsung para trabalho em qualquer lugar\r\nGalaxy S20 FE vs Galaxy S20: quais as diferenças entre os celulares da Samsung?\r\nIntermediário robusto\r\nO Galaxy XCover Pro não traz muitas novidades em relação às especificações técnicas: a tela é IPS LCD com resolução Full HD e tem 6,3 polegadas de tamanho. Voltado para o trabalho, o smartphone também pode ser usado com luvas.\r\n\r\nComo o foco do smartphone é aguentar o tranco, o Galaxy XCover possui certificação IP68 para proteção contra água e poeira, além de certificação militar MLT-STD-810, também usado nos modelos da LG mais recentes. Na prática, isso significa que o celular da Samsung passou por testes de resistência, como quedas e temperaturas extremas, e promete aguentar situações mais adversas em relação a outros celulares.', 3, 7, 18, 4, 2020),
(5, 'Xiaomi cutuca Apple e diz que vai reduzir uso de plástico e manter o carregador', 'A Xiaomi divulgou que irá reduzir em 50% o uso de plásticos em suas embalagens, a partir de modelos vendidos na Europa. A publicação da fabricante chinesa aproveita o anúncio do compromisso para uma leva provocada à rival Apple, que recentemente deixou de incluir alguns acessórios na embalagem dos iPhones.\r\n\r\nSamsung faz piada com retirada do carregador do iPhone 12\r\nXiaomi provoca Apple pela retirada do carregador da caixa do iPhone\r\nA Apple reduzirá o impacto ambiental com iPhones 12 sem carregadores? Calma lá\r\nO tuíte da Xiaomi destaca que a diminuição do uso de plástico foi feita sem comprometer o conteúdo da embalagem. “Você terá tudo o que é essencial”, escreveu a fabricante na publicação em que mostra um unboxing do celular Mi 10T Lite.\r\n\r\n\r\nAs imagens mostram que o celular acompanha uma capa protetora, um cabo de recarga e um carregador de parede. A embalagem do modelo parece ser toda de papelão, material que se decompõe rapidamente na natureza.\r\n\r\nNo caso da Apple, a redução do impacto ambiental gerado pela remoção do carregador não se restringe a um uso menor de plástico na embalagem, como uma diminuição da caixa como um todo. Uma embalagem menor tem o potencial de diminuir a poluição gerada em diversas etapas da fabricação e distribuição dos aparelhos.\r\n\r\nPor outro lado, a distribuição de um cabo Lightning – USB-C, deve exigir a compra de novos carregadores para boa parte dos clientes, já que o acessório incluído com os iPhones anteriormente utiliza o conector USB-A.\r\n\r\nFonte: Xiaomi', 1, 7, 18, 10, 2020),
(6, 'Análise: Flamengo vence, convence, ganha fôlego e boas alternativas para encarar sequência decisiva', 'Um resultado positivo e muitas vitórias para o Flamengo. O 3 a 1 da noite de quarta-feira no Maracanã, sobre o Junior Barranquilla, pela Libertadores, deve ser analisado por muitos pontos de vista. E o principal deles é o sucesso no planejamento de Domènec Torrent na equação: descansar titulares + dar rodagem e confiança aos reservas = ter o elenco na ponta dos cascos para série decisiva que vem pela frente.\r\n\r\nQuando escala um time praticamente completo de jogadores que não vão estar em campo domingo contra o Internacional (a dúvida está no substituto do suspenso Bruno Henrique), Dome evidencia a importância do duelo do Beira-Rio e dá uma oportunidade de ouro para quem busca espaço. Quem não gostaria de ser “testado” na Libertadores? E foi isso que fez o Flamengo começar a mil por hora diante dos colombianos.', 4, 1, 18, 5, 1979),
(7, 'Ramírez explica o não ao Palmeiras: \"Tenho de pisar em solos firmes\".', 'Miguel Ángel Ramírez falou depois da vitória sobre o Barcelona (EQU), pela Copa Libertadores, por que não quis deixar o Independiente Del Valle (EQU) imediatamente para assumir o Palmeiras. Segundo o treinador espanhol de 35 anos de idade, este é um momento na carreira em que precisa \"medir bem seus passos\". \"Em uma tomada de decisão assim são múltiplos os fatores. Não é só o contrato e as condições que te oferecem, não é só o projeto esportivo, não só o que você está deixando, não é só onde você vai e quando vão, são muitos fatores. Nunca é fácil, nunca é fácil, e muito menos quando os gigantes te chamam. Te tremem as pernas! É muito difícil tomar uma decisão assim! É mais difíci.', 2, 1, 17, 12, 1975),
(8, 'Volta do thriller \'Criminal\', da Netflix, traz Jon Snow e grandes reviravoltas', 'Para compartilhar esse conteúdo, por favor utilize o link https://www1.folha.uol.com.br/colunas/lucianacoelho/2020/10/volta-do-thriller-criminal-da-netflix-traz-jon-snow-e-grandes-reviravoltas.shtml ou as ferramentas oferecidas na página. Textos, fotos, artes e vídeos da Folha estão protegidos pela legislação brasileira sobre direito autoral. Não reproduza o conteúdo do jornal em qualquer meio de comunicação, eletrônico ou impresso, sem autorização da Folhapress (pesquisa@folhapress.com.br). As regras têm como objetivo proteger o investimento que a Folha faz na qualidade de seu jornalismo. Se precisa copiar trecho de texto da Folha para uso privado, por favor logue-se como assinante ou cadastrado.', 5, 5, 19, 5, 2019),
(9, 'Série brasileira \'Bom Dia, Verônica\' une serial killer, corrupção e machismo', 'Para compartilhar esse conteúdo, por favor utilize o link https://www1.folha.uol.com.br/colunas/lucianacoelho/2020/10/serie-brasileira-bom-dia-veronica-une-serial-killer-corrupcao-e-machismo.shtml ou as ferramentas oferecidas na página. Textos, fotos, artes e vídeos da Folha estão protegidos pela legislação brasileira sobre direito autoral. Não reproduza o conteúdo do jornal em qualquer meio de comunicação, eletrônico ou impresso, sem autorização da Folhapress (pesquisa@folhapress.com.br). As regras têm como objetivo proteger o investimento que a Folha faz na qualidade de seu jornalismo. Se precisa copiar trecho de texto da Folha para uso privado, por favor logue-se como assinante ou cadastrado.', 3, 2, 17, 10, 2019),
(10, 'Educação divulga regras para retorno de servidores: aulas no DF continuam remotas', 'Após o Governo do Distrito Federal (GDF) autorizar, por meio de decreto publicado no último dia 16, o retorno presencial de 100% dos servidores, a Secretaria de Educação divulgou, por meio de circular, regras para a retomada das atividades da pasta.\r\n\r\nO texto destaca que as aulas da rede pública de ensino continuarão sendo remotas e que o retorno, no caso dos servidores da Secretaria de Educação, será restrito às atividades administrativas técnico-pedagógicas.\r\n\r\nOs servidores enquadrados no grupo de risco para a Covid-19 permanecerão em teletrabalho.\r\n\r\nA circular também estabelece medidas a serem adotadas nos locais onde os servidores voltarão a trabalhar presencialmente para evitar a disseminação do novo coronavírus. Entre as quais, configuração das mesas e estações de trabalho respeitando o distanciamento e o uso permanente de máscara de proteção.\r\n\r\nA higienização das mãos com álcool em gel 70% e a realização de reuniões preferencialmente por videoconferência são outras sugestões do texto', 1, 8, 20, 10, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` varchar(2) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Rosanne', 'Rocha', 'rose@gmail.com', '11', '999999999', 'Ribeirão Pires', 5, 19, 10, 2007),
(2, 'Carlos', 'Oliveira', 'carlinhos987435@gmail.com', '11', '975461836', 'Ribeirão Pires', 3, 2, 10, 2001),
(3, 'Mega', 'Mente', 'megamind@gmail.com', '11', '745136895', 'Ribeirão Pires', 1, 11, 7, 2005),
(4, 'Albert', 'Brindgerton', 'Brid@gmail.com', '11', '999998899', 'Ribeirão Pires', 6, 27, 5, 2003),
(5, 'Lysa', 'Rodriguez', 'LL@gmail.com', '11', '987654321', 'Ribeirão Pires', 4, 31, 12, 2005);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codcategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codnoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
