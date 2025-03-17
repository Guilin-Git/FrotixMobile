# 🚀 FrotixTeste - Aplicação com .NET MAUI, Syncfusion e SQL Server

![.NET MAUI](https://img.shields.io/badge/.NET_MAUI-Mobile_App-blueviolet?style=for-the-badge&logo=dotnet)
![Syncfusion](https://img.shields.io/badge/Syncfusion-UI_Components-orange?style=for-the-badge)
![SQL Server](https://img.shields.io/badge/SQL_Server-Database-red?style=for-the-badge&logo=microsoftsqlserver)

Este projeto é um **aplicativo móvel** desenvolvido com **.NET MAUI**, utilizando componentes gráficos da **Syncfusion**, integração com banco de dados **SQL Server** e suporte à depuração via WebView.

---

## 📱 Plataformas

- Android
- iOS
- MacCatalyst
- Windows

---

## 📂 Estrutura do Projeto

```plaintext
FrotixTeste/
│── FrotixTeste/           # Código principal do app
│   ├── Components/
│   ├── Pages/
│   ├── Services/
│   ├── MauiProgram.cs
│   ├── App.xaml
│   └── Main.razor
│── .vs/                   # (Ignorado) Arquivos temporários
│── .gitignore             # Arquivos ignorados pelo Git
│── README.md              # Documentação do projeto
```

---

## 🛠️ Pré-requisitos
- .NET SDK (última versão estável)
- Visual Studio 2022
- SQL Server (com conexões remotas habilitadas)

---

## 🔧 Configuração do SQL Server

1. Abra o **SQL Server Configuration Manager**.
2. Habilite conexões remotas (TCP/IP).
3. Libere a porta padrão TCP/IP (`1433`).

### 🔑 String de Conexão
Atualize a string no arquivo `VistoriaService.cs`:

```csharp
private readonly string connectionString = "Server=SEU_SERVIDOR;Database=SEU_BANCO;User Id=SEU_USUARIO;Password=SUA_SENHA;";
```

---

## 🚀 Como executar o projeto

### ▶️ Rodando no Android

```bash
dotnet build
```

```sh
dotnet build -t:Run -f net8.0-android
```

### Depuração no WebView (Android)
Habilite a depuração editando `MauiProgram.cs`:

```csharp
#if ANDROID && DEBUG
    Android.Webkit.WebView.SetWebContentsDebuggingEnabled(true);
#endif
```

- No navegador Chrome, acesse:
```plaintext
chrome://inspect
```

---

## ⚠️ Problemas Comuns

**Erro 40 (Não foi possível conectar ao SQL Server):**
- Verifique se o SQL Server está em execução.
- Confirme se a porta (`TCP/IP`) está liberada.
- Cheque as configurações do firewall.

---

## 🌟 Rodando o Projeto

**Android:**
```sh
dotnet build -t:Run -f net8.0-android
```

**Windows:**
Abra no Visual Studio e execute normalmente.

---

## 🤝 Como contribuir

1. Faça um Fork deste repositório.
2. Crie um branch (`git checkout -b minha-feature`).
3. Commit suas alterações (`git commit -m "Adicionando nova feature"`).
4. Faça push para o GitHub (`git push origin minha-feature`).
5. Abra um Pull Request.

---

🚀 **Desenvolvido com .NET MAUI e Syncfusion** 🌟

