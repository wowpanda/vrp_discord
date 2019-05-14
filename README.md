# Discord Rich Presence for VRP 2

[PT-BR]

Permite que um jogador no seu servidor exiba o nome de seu personagem, a profissão, e outras mensagens personalizadas como atividade no Discord.

[EN]

Allows a player on your server to show his character name, job and other custom messages as a Discord Activity.

![Image of the Rich Presence](https://i.imgur.com/IvaGpoj.png)

## [PT-BR]

### Instalação

Para instalar via Git:

```bash
cd resources
git clone git@github.com:mad-city/vrp_discord.git
```

Para instalar manualmente:

```bash
Efetue o download no topo da pagina e coloque dentro da sua pasta resources.
```

Não esqueça de adicionar `start vrp_discord` no seu `server.cfg`

### Configurando

O primeiro passo é [acessar o Discord e criar uma nova aplicação](https://discordapp.com/developers/applications/).

O nome da aplicação será exibido na atividade do Discord (primeira linha), após isso você poderá alterar as configurações no arquivo `cfg/discord.lua`, informando o ID do seu aplicativo recem criado no campo `cfg.DiscordAppId`, a quantidade de players que o seu servidor suporta, e também o tempo de atualização.

As demais configurações dependem dos **assets** que você deve enviar, siga o exemplo abaixo:

![Image of the asset list](https://i.imgur.com/H7yGNDB.png)

#### IMPORTANTE

Você DEVE declarar todos os trabalhos neste arquivo de config, ou isso irá gerar um erro no console do seu cliente.

Para declarar um novo trabalho você deve acrescentar uma linha no arquivo `cfg/discord.lua` seguindo este padrão:

`nomedogrupo = {name = "Nome do Grupo", asset = "nomedoasset"}`

- `nomedogrupo` - Representa o nome do grupo criado no arquivo `vrp/cfg/groups.lua`
- `name` - Representa o nome a ser exibido quando o usuário pausar o mouse sobre a imagem (SmallAsset)
- `asset` - Nome do asset enviado para seu aplicativo do Discord, utilizamos o campo asset para que você possa utilizar o mesmo arquivo para multiplas profissões, ex: Soldado, Policial, Detetive, Capitão da Policia, etc.

## [EN]

### Instalation

To install from Git:

```bash
cd resources
git clone git@github.com:mad-city/vrp_discord.git
```

To install manually:

```bash
Download the repository from the top of this page and put into your resource folder.
```

Don't forget to add `start vrp_discord` on your `server.cfg`

### Configuration

The first step is [access the Discord website and create a new application](https://discordapp.com/developers/applications/).

The name of the application will be shown as Discord activity (first line), after that you will be able to update the `cfg/discord.lua` giving your recently created application on the `cfg.DiscordAppId` field, the quantity of slots that your server have, and also the update cycle of the presence.

The other settings depends on the **assets** you should send, follow the example below:

![Image of the asset list](https://i.imgur.com/H7yGNDB.png)

#### IMPORTANT

You MUST declare every job on this config file or it will trig an error on the client console.

To set a new job you have to add a new line on your `cfg/discord.lua` following this pattern:

`groupname = {name = "Name of the Group", asset = "assetname"}`

- `groupname` - Represents the name of the group you have in `vrp/cfg/groups.lua`
- `name` - Represents the name to be displayed when the user pauses the mouse over the image (SmallAsset)
- `asset` - Name of the asset sent to your Discord application, we use the asset field so you can use the same file for multiple jobs/groups, eg: Soldier, Police Officer, Detective, Police Captain, etc.