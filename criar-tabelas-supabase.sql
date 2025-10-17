-- ============================================
-- SQL PARA CRIAR TABELAS NO SUPABASE
-- ============================================
--
-- Copie e cole este código no SQL Editor do Supabase
-- (Painel do Supabase > SQL Editor > Nova Query)

-- Tabela de configurações
CREATE TABLE IF NOT EXISTS configuracoes (
    id SERIAL PRIMARY KEY,
    chave VARCHAR UNIQUE NOT NULL,
    valor JSONB,
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Tabela de categorias de casamento
CREATE TABLE IF NOT EXISTS categorias_casamento (
    id SERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL UNIQUE,
    icone VARCHAR(10),
    fornecedores JSONB DEFAULT '[]',
    valor DECIMAL(10,2) DEFAULT 0,
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Tabela de cômodos da casa
CREATE TABLE IF NOT EXISTS comodos_casa (
    id SERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL UNIQUE,
    itens JSONB DEFAULT '[]',
    valor DECIMAL(10,2) DEFAULT 0,
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Habilitar RLS (Row Level Security) - OPCIONAL
-- Se você quiser adicionar segurança no futuro
-- ALTER TABLE configuracoes ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE categorias_casamento ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE comodos_casa ENABLE ROW LEVEL SECURITY;

-- Políticas públicas para acesso sem autenticação
-- (Remova se quiser adicionar autenticação no futuro)
CREATE POLICY "Permitir acesso público a configuracoes" ON configuracoes
    FOR ALL TO anon USING (true) WITH CHECK (true);

CREATE POLICY "Permitir acesso público a categorias_casamento" ON categorias_casamento
    FOR ALL TO anon USING (true) WITH CHECK (true);

CREATE POLICY "Permitir acesso público a comodos_casa" ON comodos_casa
    FOR ALL TO anon USING (true) WITH CHECK (true);

-- ============================================
-- ADICIONAR COLUNA VALOR (se já existir tabelas)
-- ============================================
-- Execute apenas se as tabelas já existirem e não tiverem a coluna 'valor'

ALTER TABLE categorias_casamento ADD COLUMN IF NOT EXISTS valor DECIMAL(10,2) DEFAULT 0;
ALTER TABLE comodos_casa ADD COLUMN IF NOT EXISTS valor DECIMAL(10,2) DEFAULT 0;