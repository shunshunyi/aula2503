# Banco de Dados - Atividade

## Estrutura
- Autores (id, nome)
- Livros (id, titulo, isbn, ano_publicacao, autor_id)
- `autor_id` é chave estrangeira referenciando Autores(id)

## Integridade Referencial
- Inserção válida: livro com `autor_id = 1` → funcionou  
- Inserção inválida: livro com `autor_id = 999` → erro de FK  
- Print anexado: `erro.png`

## Álgebra Relacional
- Projeção (π): `SELECT titulo FROM Livros;`
- Seleção (σ): `SELECT * FROM Livros WHERE ano_publicacao > 2020;`
- Combinação: `SELECT titulo FROM Livros WHERE ano_publicacao > 2020;`