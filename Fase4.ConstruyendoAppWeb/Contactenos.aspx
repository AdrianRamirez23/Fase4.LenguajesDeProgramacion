<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="Fase4.ConstruyendoAppWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Datos de Contacto</h2>
   <div class="container" >
       <div class="form-group">
           <label for="exampleInputEmail1">Correo Electrónico</label>
           <input type="email" class="form-control" id="exampleInputEmail1" style="max-width:80%" placeholder="Correo Electrónico">
       </div>
       <div class="form-group">
           <label for="exampleInputPassword1">Asunto</label>
           <input type="text" class="form-control" id="exampleInputPassword1" style="max-width:80%" placeholder="Ingrese asunto de contacto">
       </div>
       <div class="form-group">
           <label for="exampleInputFile">Ingrese su solicitud</label>
           <textarea class="form-control" placeholder="Ingrese su solicitud" style="max-width:80%" id="exampleInputFile"></textarea>

       </div>

       <button type="submit" class="btn btn-default">Enviar Solicitud</button>
   </div>
</asp:Content>
