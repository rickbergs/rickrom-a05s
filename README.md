# RickROM A05s SM-A057M

[![RickROM v1.0](https://img.shields.io/badge/RickROM-v1.0-blue)](https://github.com/rickbergs/rickrom-a05s/releases/tag/v1.0)
[![Pre--release](https://img.shields.io/badge/status-pre--release-orange)](https://github.com/rickbergs/rickrom-a05s/releases/tag/v1.0)
[![Device](https://img.shields.io/badge/device-Galaxy%20A05s%20SM--A057M-green)](https://github.com/rickbergs/rickrom-a05s)

RickROM é uma ROM Android stock-based para o Samsung Galaxy A05s SM-A057M/ZTO, baseada no firmware oficial Samsung A057MUBSCDYJ2 com Android 15.

Projeto criado, organizado, montado, validado e publicado por **Richard Bergamaschi (@rickbergs)**.

> **RickROM Supreme Dev:** Richard Bergamaschi.

> Estado: v1.0 publicada como pre-release. A build foi validada estruturalmente, mas ainda não foi testada em hardware real após o flash final.

---

## Download direto

Baixe todos os arquivos abaixo na mesma pasta:

| Arquivo | Download |
|---|---|
| Parte 1 | [RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.part-00](https://github.com/rickbergs/rickrom-a05s/releases/download/v1.0/RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.part-00) |
| Parte 2 | [RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.part-01](https://github.com/rickbergs/rickrom-a05s/releases/download/v1.0/RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.part-01) |
| SHA-256 do AP final | [RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.sha256](https://github.com/rickbergs/rickrom-a05s/releases/download/v1.0/RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.sha256) |
| SHA-256 das partes | [RickROM_A05s_SM-A057M_v1.0_parts.sha256](https://github.com/rickbergs/rickrom-a05s/releases/download/v1.0/RickROM_A05s_SM-A057M_v1.0_parts.sha256) |

Página completa da release:

https://github.com/rickbergs/rickrom-a05s/releases/tag/v1.0

---

## Como reconstruir no Linux

```bash
cat RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.part-* > RickROM_A05s_SM-A057M_v1.0_AP.tar.md5
sha256sum -c RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.sha256
```

O resultado precisa ser:

```text
RickROM_A05s_SM-A057M_v1.0_AP.tar.md5: OK
```

## Como reconstruir no Windows

```bat
copy /b RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.part-00+RickROM_A05s_SM-A057M_v1.0_AP.tar.md5.part-01 RickROM_A05s_SM-A057M_v1.0_AP.tar.md5
certutil -hashfile RickROM_A05s_SM-A057M_v1.0_AP.tar.md5 SHA256
```

O SHA-256 final precisa ser exatamente:

```text
5f3b7e1f86080c5d046f164ee9a98b454de5019f0f45756fb329439d299db2ca
```

Se o hash não bater, não flasheie.

---

## Compatibilidade

| Item | Valor |
|---|---|
| Modelo alvo | Samsung Galaxy A05s SM-A057M |
| Região/base usada | Brasil / ZTO |
| Firmware base | A057MUBSCDYJ2 |
| Android base | Android 15 |
| Plataforma | Qualcomm SM6225 / Bengal / Snapdragon 680 |
| Produto | a05sub |
| Instalação | Odin/Odin4 pelo slot AP |

Não use em outro modelo sem saber exatamente o que está fazendo.

---

## Conteúdo do pacote Odin AP

O arquivo reconstruído `RickROM_A05s_SM-A057M_v1.0_AP.tar.md5` contém:

- `boot.img`
- `super.img.lz4`
- `vbmeta.img`
- `dtbo.img`
- `vbmeta_system.img`

## Principais modificações

- ROM stock-based, não GSI.
- Debloat físico de apps desnecessários.
- Ajustes em `build.prop`.
- Ajustes de áudio via mixer paths.
- Script init RickROM em `/system/etc/init/99-rickrom-performance.rc`.
- Kernel Ciallo com SukiSU/KernelSU via `boot.img`.
- `vbmeta.img` e `vbmeta_system.img` com verificação desativada.
- `super.img.lz4` contendo `system`, `odm`, `product`, `system_dlkm`, `system_ext`, `vendor` e `vendor_dlkm`.

---

## Flash via Odin/Odin4

Pré-requisitos:

- Bootloader desbloqueado.
- Cabo USB de dados funcionando.
- Backup dos seus dados.
- Bateria carregada.
- Samsung Galaxy A05s SM-A057M.

No Odin para Windows:

- Coloque o arquivo reconstruído no slot AP.
- Auto Reboot: ligado.
- F. Reset Time: ligado.
- Re-Partition: desligado.
- Nand Erase: desligado.

No Linux com Odin4:

```bash
sudo odin4 -a RickROM_A05s_SM-A057M_v1.0_AP.tar.md5
```

---

## Ferramentas usadas

Este projeto só foi possível graças a várias ferramentas e projetos da comunidade Android/Linux:

- **Odin4**: flash do pacote AP em ambiente Linux.
- **lz4**: compressão do `super.img` para `super.img.lz4`.
- **avbtool**: geração e inspeção de `vbmeta.img` e `vbmeta_system.img`.
- **lpmake/lpdump**: criação e auditoria da `super.img` com partições dinâmicas.
- **erofs-utils / mkfs.erofs**: geração das imagens EROFS.
- **Git e GitHub CLI**: versionamento, limpeza do repositório e publicação da release.
- **SukiSU / KernelSU**: root integrado via `boot.img`.
- **Kernel Ciallo**: base de kernel custom usada no projeto.

As ferramentas recebem crédito pela função técnica que tiveram. A RickROM em si, a organização da build, as decisões de modificação, a montagem final, a validação e a publicação foram conduzidas por **Richard Bergamaschi (@rickbergs)**.

---

## Avisos

- Use por sua conta e risco.
- Pode exigir wipe/factory reset após o flash.
- A build final ainda está marcada como pre-release porque falta teste real em hardware.
- Backups pessoais de partições não são publicados neste repositório.
- Blobs proprietários, árvores importadas, toolchains e imagens grandes não ficam no código do repo; assets flasháveis ficam na aba Releases.

## Packages

A aba Packages do GitHub fica vazia de propósito. Esta ROM é distribuída como GitHub Release, não como pacote npm, Maven, NuGet, Docker ou Container Registry.

## Créditos

- Criador, desenvolvedor principal e RickROM Supreme Dev: **Richard Bergamaschi (@rickbergs)**
- Base: firmware Samsung A057MUBSCDYJ2
- Kernel/root: Ciallo + SukiSU/KernelSU
- Ferramentas: Odin4, lz4, avbtool, lpmake/lpdump, erofs-utils, Git e GitHub CLI
