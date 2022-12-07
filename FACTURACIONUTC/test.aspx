<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="FACTURACIONUTC.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 166px;
        }
    </style>
</head>
<body>


    <form id="form1" runat="server">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>  $(document).ready(function () {
                $("#ImprimirImg").click(function () {
                    window.print();
                })
            });  </script>    

        @media print{
    .doNotPrint{display:none !important;}
}

      <div id="div_resultados" class="doNotPrint">

    <table id="tablaCD" class="table table-bordered table-responsive table-hover doNotPrint">
        <tr style="background-color:#78C2AD">
            <th>
                Id Comprobante
            </th>
            <th>
                Casa
            </th>
            <th>
                Fecha
            </th>
            <th>
                Monto depositado
            </th>
            <th>
                Comentarios
            </th>
            <th>
                Foto
            </th>

        </tr>
         <tr>
            <td class="auto-style1">
                @i.idComprobante
            </td>

            <td class="auto-style1">
                @i.Casa
            </td>

            <td class="auto-style1">
                @i.Fecha
            </td>
            <td class="auto-style1">
                @i.Monto
            </td>

            <td class="auto-style1">
                @i.Comentarios
            </td>

            <td class="auto-style1">
                <img class="zoomable" src="http://2.bp.blogspot.com/-TMy7BOvV5rM/TueumWbb_aI/AAAAAAAAAQo/Z0jardFmbPo/s1600/WPN%2BSuper%2B1.jpg" width="150" height="150">

            </td>
            <td class="auto-style1">
                <button id="btnImprimir" class="btn btn-success" data-toggle="modal" data-target="#MyModalOpen" >Ver</button>
            </td>
        </tr>
    </table>

</div>

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<!-- Modal -->
<div class="modal fade" id="MyModalOpen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header doNotPrint">
        <button type="button" class="close doNotPrint" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Titulo</h4>
      </div>
       <div class="modal-body">
       <div id="areaImprime">
        <img class="zoomable" src="http://2.bp.blogspot.com/-TMy7BOvV5rM/TueumWbb_aI/AAAAAAAAAQo/Z0jardFmbPo/s1600/WPN%2BSuper%2B1.jpg" width="350" height="280">
      <div>
      </div>
       <div class="modal-footer doNotPrint">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="ImprimirImg">Imprimir</button>
      </div>
      
    </div>
  </div>
</div>
    </form>
</body>
</html>
