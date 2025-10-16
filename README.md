# 💍 Painel de Planejamento D&L

Sistema completo para planejamento de casamento e organização da casa nova, desenvolvido para Douglas & Laura.

## ✨ Funcionalidades

### 💍 **Casamento**
- Gestão de fornecedores por categoria
- Controle de orçamentos e parcelas
- Sistema de pagamentos com vencimentos
- Status de cotação e escolha de fornecedores

### 🏠 **Casa Nova**
- Organização por cômodos
- Lista de itens necessários
- Controle de situação: "Precisamos comprar", "Já temos", "Vamos ganhar"
- Progresso visual por cômodo

### 📊 **Dashboard**
- Contador de dias até o casamento
- Progresso do planejamento em tempo real
- Acompanhamento de parcelas pagas
- Métricas visuais com barras de progresso

### 📋 **Resumo Financeiro**
- Consolidação apenas de fornecedores escolhidos
- Próximos vencimentos
- Status detalhado de pagamentos

## 🛠️ Tecnologias

- **Frontend**: HTML, CSS, JavaScript (Vanilla)
- **Backend**: Supabase (PostgreSQL)
- **Armazenamento**: Supabase + localStorage (fallback)
- **Real-time**: Supabase Real-time subscriptions

## 🚀 Como usar

### 1. **Configurar Supabase**
```sql
-- Execute o arquivo criar-tabelas-supabase.sql no SQL Editor do Supabase
```

### 2. **Abrir o sistema**
- Abra o arquivo `index.html` no navegador
- O sistema detecta automaticamente a conexão com Supabase
- Se offline, funciona com localStorage

### 3. **Funcionalidades principais**
- **Adicionar fornecedores**: Clique em "+ Fornecedor" em qualquer categoria
- **Controle financeiro**: Marque fornecedores como "Escolhido" para ativar detalhes financeiros
- **Casa nova**: Adicione itens por cômodo e acompanhe o progresso
- **Dashboard**: Visualize métricas em tempo real

## 🎨 Design

- **Tema elegante** em tons dourados e bege
- **Responsivo** para desktop e mobile
- **Animações suaves** para melhor UX
- **Tipografia**: Poppins + Playfair Display

## 💾 Armazenamento

- **Primary**: Supabase (sincronização em tempo real)
- **Fallback**: localStorage (funcionamento offline)
- **Backup**: Sistema de export/import JSON

## 🔧 Configuração do Supabase

As credenciais já estão configuradas no código. Para usar seu próprio Supabase:

1. Crie um projeto no [Supabase](https://supabase.com)
2. Execute o SQL em `criar-tabelas-supabase.sql`
3. Substitua as credenciais no código HTML

## 📱 Compatibilidade

- ✅ Chrome, Firefox, Safari, Edge
- ✅ Desktop e Mobile
- ✅ Funciona offline com localStorage

---

**Desenvolvido com ❤️ para Douglas & Laura**

*Sistema de planejamento completo para tornar o grande dia ainda mais especial! 💕*