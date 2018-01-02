﻿<%@ Page Language="C#" Inherits="SiteServer.BackgroundPages.Settings.ModalPermissionsSet" Trace="false"%>
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

          <div class="form-group">
            <label class="col-xs-3 text-right control-label">管理员级别</label>
            <div class="col-xs-8">
              <asp:DropDownList ID="DdlPredefinedRole" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="DdlPredefinedRole_SelectedIndexChanged"
                runat="server"></asp:DropDownList>
            </div>
            <div class="col-xs-1 help-block"></div>
          </div>

          <asp:PlaceHolder id="PhPublishmentSystemId" runat="server">
            <div class="form-group">
              <label class="col-xs-3 text-right control-label">可以管理的站点</label>
              <div class="col-xs-8">
                <asp:CheckBoxList ID="CblPublishmentSystemId" class="checkbox checkbox-primary" repeatColumns="2" runat="server"></asp:CheckBoxList>
              </div>
              <div class="col-xs-1 help-block"></div>
            </div>
          </asp:PlaceHolder>

          <asp:PlaceHolder id="PhRoles" runat="server">
            <div class="form-group">
              <div class="col-xs-1"></div>
              <label class="col-xs-4 text-center">
                <strong>可用的角色</strong>
              </label>
              <div class="col-xs-2">
              </div>
              <label class="col-xs-4 text-center">
                <strong>用户拥有的角色</strong>
              </label>
              <div class="col-xs-1 help-block"></div>
            </div>
            <div class="form-group">
              <div class="col-xs-1"></div>
              <div class="col-xs-4">
                <asp:ListBox ID="LbAvailableRoles" runat="server" SelectionMode="Multiple" Rows="14" class="form-control pull-right"></asp:ListBox>
              </div>
              <div class="col-xs-2 text-center">
                <table height="100%" cols="1" cellpadding="0" width="100%">
                  <tr>
                    <td valign="middle">
                      <p>
                        <asp:Button class="btn" text=" -> " onclick="AddRole_OnClick" runat="server" />
                      </p>
                      <p>
                        <asp:Button class="btn" text=" <- " onclick="DeleteRole_OnClick" runat="server" />
                      </p>
                      <p>
                        <asp:Button class="btn" text=" >> " onclick="AddRoles_OnClick" runat="server" />
                      </p>
                      <p>
                        <asp:Button class="btn" text=" << " onclick="DeleteRoles_OnClick" runat="server" />
                      </p>
                    </td>
                  </tr>
                </table>
              </div>
              <div class="col-xs-4">
                <asp:ListBox ID="LbAssignedRoles" runat="server" SelectionMode="Multiple" Rows="14" class="form-control pull-left"></asp:ListBox>
              </div>
              <div class="col-xs-1"></div>
            </div>

          </asp:PlaceHolder>

          <hr />

          <div class="form-group m-b-0">
            <div class="col-xs-11 text-right">
              <asp:Button class="btn btn-primary m-l-10" text="确 定" runat="server" onClick="Submit_OnClick" />
              <button type="button" class="btn btn-default m-l-10" onclick="window.parent.layer.closeAll()">取 消</button>
            </div>
            <div class="col-xs-1"></div>
          </div>

        </div>

      </form>
    </body>

    </html>