package br.com.omnia.draft.dao;
import br.com.omnia.draft.model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdutoDao {

    private Connection connection;
    //private final Connection connection;

    public ProdutoDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void adiciona(Produto produto) {
        String sql = "insert into produto (nome, unidade, valor) values (?,?,?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getUnidade());
            stmt.setDouble(3, produto.getValor());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }//fim try//
    }//fim adiciona

    public List<Produto> getLista() {
        String sql = "select * from produto";
        List<Produto> produtos = new ArrayList();
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setCodigo(rs.getInt("codigo"));
                produto.setNome(rs.getString("nome"));
                produto.setUnidade(rs.getInt("unidade"));
                produto.setValor(rs.getDouble("valor"));
                produtos.add(produto);
            }//fim while
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }//fim try
        return produtos;
    }//fim lista

    public Produto busca(Integer codigo) {
        String sql = "select * from produto where codigo = ?";
        Produto produto = null;
        try (PreparedStatement stmt = connection.prepareStatement(sql))
        {
            stmt.setInt(1, codigo);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                produto = new Produto();
                produto.setCodigo(rs.getInt("codigo"));
                produto.setNome(rs.getString("nome"));
                produto.setUnidade(rs.getInt("unidade"));
                produto.setValor(rs.getDouble("valor"));
            }//fim if
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }//fim try
            return produto;
        }//fim busca

    public void altera(Produto produto) {
        String sql = "update produto set nome = ?, unidade = ?, valor = ? where codigo = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getUnidade());
            stmt.setDouble(3, produto.getValor());
            stmt.setInt(4, produto.getCodigo());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }//fim try
    }//fim altera

    public void remove(Produto produto) {
        String sql = "delete from produto where codigo = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, produto.getCodigo());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }//fim try
    } //fim remove
}






