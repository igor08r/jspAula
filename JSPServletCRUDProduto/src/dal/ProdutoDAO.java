package dal;

import java.util.ArrayList;

import model.Produto;

public class ProdutoDAO {

	private static ArrayList<Produto> produtos = new ArrayList<Produto>();

	public static boolean cadastrarProduto(Produto produto) {
		if (produtos.size() > 0) {
			int id = produtos.get(produtos.size() - 1).getId() + 1;
			produto.setId(id);
		} else {
			produto.setId(1);
		}
			if (buscarProdutoPorNome(produto) == null) {
			
			produtos.add(produto);
			return true;
		}
	

		return false;
	}

	public static ArrayList<Produto> listarProduto() {
		return produtos;
	}

	public static Produto buscarProdutoPorNome(Produto produto) {
		for (Produto produtoCadastrado : produtos) {
			if (produtoCadastrado.getNome().equals(produto.getNome())) {
				return produtoCadastrado;
			}
		}
		return null;
	}

}
