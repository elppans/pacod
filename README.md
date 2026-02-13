# pacod

**pacod** is a simple command-line utility for Arch Linux that lists optional dependencies (optdepends) of packages and groups in a clean and organized way.

---

## 🇺🇸 English

### 📌 What is pacod?

`pacod` is a small Bash script that helps you inspect optional dependencies (optdepends) from Arch Linux packages using `pacman` and `expac`.

It allows you to:

- List optional dependencies of a package
- Inspect optdepends of an entire group
- See which packages use each optional dependency
- Easily install packages together with all their optdepends

---

### ⚙ Requirements

- `pacman`
- `expac`

---

### 🚀 Usage

```bash
pacod [option] <package|group> [...]
````

---

### 🔧 Options

| Option | Description                                        |
| ------ | -------------------------------------------------- |
| `-l`   | Simple list (one per line, no description)         |
| `-c`   | Single line output (space-separated)               |
| `-d`   | Show with description (groups show tree structure) |
| `-h`   | Show help                                          |

---

### 📦 Examples

List optional dependencies of a package:

```bash
pacod -l lutris
```

Show detailed output with descriptions:

```bash
pacod -d gnome
```

Single-line output:

```bash
pacod -c firefox thunderbird
```

---

### 🔥 Install a package with all its optional dependencies

You can combine `pacod` with `pacman`:

```bash
pacman --needed -S lutris $(pacod -c lutris)
```

Install multiple packages along with all their optdepends:

```bash
pacman --needed -S lutris $(pacod -c lutris wine)
```

---

### 🌳 Group Output Example

When using `-d` on groups, output is organized as a tree:

```
optdepend-name: description
  ├─ package1
  └─ package2
```

---

### 🌎 Language Support

`pacod` automatically detects system language:

* Portuguese systems → messages in Portuguese
* Other systems → messages in English

---

### 📜 License

See the LICENSE file for details.

---

---

## 🇧🇷 Português

### 📌 O que é o pacod?

O `pacod` é um pequeno script em Bash que facilita a visualização das dependências opcionais (optdepends) de pacotes e grupos no Arch Linux, utilizando `pacman` e `expac`.

Ele permite:

* Listar dependências opcionais de um pacote
* Ver optdepends de um grupo inteiro
* Saber quais pacotes utilizam cada dependência opcional
* Instalar pacotes junto com todos os seus optdepends facilmente

---

### ⚙ Requisitos

* `pacman`
* `expac`

---

### 🚀 Uso

```bash
pacod [opção] <pacote|grupo> [...]
```

---

### 🔧 Opções

| Opção | Descrição                                                |
| ----- | -------------------------------------------------------- |
| `-l`  | Lista simples (uma por linha, sem descrição)             |
| `-c`  | Saída em linha única (separada por espaço)               |
| `-d`  | Exibe com descrição (grupos mostram estrutura em árvore) |
| `-h`  | Mostra ajuda                                             |

---

### 📦 Exemplos

Listar dependências opcionais de um pacote:

```bash
pacod -l lutris
```

Mostrar saída detalhada com descrição:

```bash
pacod -d gnome
```

Saída em linha única:

```bash
pacod -c firefox thunderbird
```

---

### 🔥 Instalar pacote com todas as dependências opcionais

Você pode combinar com o `pacman`:

```bash
pacman --needed -S lutris $(pacod -c lutris)
```

Instalar múltiplos pacotes com seus optdepends:

```bash
pacman --needed -S lutris $(pacod -c lutris wine)
```

---

### 🌳 Exemplo de saída para grupos

Ao usar `-d` em grupos, a saída é organizada em árvore:

```
nome-do-optdepend: descrição
  ├─ pacote1
  └─ pacote2
```

---

### 🌎 Suporte a idioma

O `pacod` detecta automaticamente o idioma do sistema:

* Sistemas em português → mensagens em português
* Outros idiomas → mensagens em inglês

---

### 📜 Licença

Consulte o arquivo LICENSE para mais detalhes.

---

