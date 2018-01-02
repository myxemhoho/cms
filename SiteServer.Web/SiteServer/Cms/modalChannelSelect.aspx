﻿<%@ Page Language="C#" Inherits="SiteServer.BackgroundPages.Cms.ModalChannelSelect" Trace="false"%>
  <%@ Register TagPrefix="ctrl" Namespace="SiteServer.BackgroundPages.Controls" Assembly="SiteServer.BackgroundPages" %>
    <!DOCTYPE html>
    <html class="modalPage">

    <head>
      <meta charset="utf-8">
      <!--#include file="../inc/head.html"-->
    </head>

    <body>
      <form runat="server">
        <ctrl:alerts runat="server" />

        <div class="form-horizontal">

          <table class="table table-hover">
            <tr class="info thead">
              <td>
                点击栏目名称进行选择
              </td>
            </tr>
            <tr treeItemLevel="2">
              <td>
                <img align="absmiddle" style="cursor:pointer" onClick="displayChildren(this);" isAjax="false" isOpen="true" src="../assets/icons/tree/minus.gif"
                />
                <img align="absmiddle" border="0" src="../assets/icons/tree/folder.gif" /> &nbsp;
                <asp:Literal ID="LtlPublishmentSystem" runat="server"></asp:Literal>
              </td>
            </tr>
            <asp:Repeater ID="RptChannel" runat="server">
              <itemtemplate>
                <asp:Literal id="ltlHtml" runat="server" />
              </itemtemplate>
            </asp:Repeater>
          </table>

        </div>

      </form>
    </body>

    </html>