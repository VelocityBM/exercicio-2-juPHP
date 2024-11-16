<?php
require_once __DIR__ . '/../models/Produto.php';
require_once __DIR__ . '/../../vendor/autoload.php';
class ProdutoController
{
    private $produtoModel;
    public function __construct($db)
    {
        $this->produtoModel = new Produto($db);
    }
    public function gerarRelatorioPDF()
    {
        $produtos = $this->produtoModel->listarProdutos();
        //requisicao da visualizacao (relatorio do html)
        ob_start();
        include __DIR__ . '/../views/relatorio_produtos.php';
        $html = ob_get_clean();
        // gera o pdf
        $mpdf = new \Mpdf\Mpdf();
        $mpdf->WriteHTML($html);
        $mpdf->Output('relatorio_produtos.pdf', \Mpdf\Output\Destination::INLINE);
    }
}
