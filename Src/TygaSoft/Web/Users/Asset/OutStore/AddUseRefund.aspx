﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUseRefund.aspx.cs" Inherits="TygaSoft.Web.Users.Asset.OutStore.AddUseRefund" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新增/编辑资产领用退库信息</title>
</head>
<body>
    <form id="dlgFm" runat="server">
        <div class="layout-h">
            <div class="fl-h">
                <div class="row mt10">
                    <span class="rl"><span class="cr">*</span>领用人：</span>
                    <div class="fl">
                        <input name="UsePerson" class="easyui-validatebox txt" data-options="required:true" />
                    </div>
                </div>
            </div>
            <div class="fl-h">
                <div class="row mt10">
                    <span class="rl"><span class="cr">*</span>领用时间：</span>
                    <div class="fl">
                        <input id="txtUseTime" name="UseTime" class="easyui-datebox txt" data-options="editable:false" />
                    </div>
                    <span class="clr"></span>
                </div>
            </div>
            <div class="fl-h">
                <div class="row mt10">
                    <span class="rl">预计退库时间：</span>
                    <div class="fl">
                        <input id="txtEstimateRefundTime" name="EstimateRefundTime" class="easyui-datebox txt" data-options="editable:false" />
                    </div>
                    <span class="clr"></span>
                </div>
            </div>
            <div class="fl-h">
                <div class="row mt10">
                    <span class="rl">领用处理人：</span>
                    <div class="fl">
                        <input name="UseUserName" class="easyui-validatebox txt form-readonly" data-options="editable:false" />
                    </div>
                </div>
            </div>
            <div class="fl-h">
                <div class="row mt10">
                    <span class="rl">实际退库时间：</span>
                    <div class="fl">
                        <input name="SRealRefundTime" class="easyui-validatebox txt form-readonly" data-options="editable:false" />
                    </div>
                    <span class="clr"></span>
                </div>
            </div>
            <div class="fl-h">
                <div class="row mt10">
                    <span class="rl">退库处理人：</span>
                    <div class="fl">
                        <input name="RefundDealUserName" class="easyui-validatebox txt form-readonly" data-options="editable:false" />
                    </div>
                </div>
            </div>
            <span class="clr"></span>
            <div class="row mt10">
                <span class="rl">说明：</span>
                <div class="fl">
                    <input name="Remark" class="mtxt" />
                </div>
            </div>

            <div id="dgAssetToolbar">
                <a name="abtnAddAsset" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">选择资产</a>
                <a name="abtnDelAsset" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'">删除</a>
            </div>
            <div class="row mt10">
                <table id="dgAsset" title="" data-options="rownumbers:true,fitColumns:false,toolbar:'#dgAssetToolbar'">
                    <thead>
                        <tr>
                            <th data-options="field:'AssetId',hidden:true"></th>
                            <th data-options="field:'PictureUrl',width:100">照片</th>
                            <th data-options="field:'Barcode',width:100">资产条码</th>
                            <th data-options="field:'AssetName',width:100">资产名称</th>
                            <th data-options="field:'OwnedCompany',width:100">所属公司</th>
                            <th data-options="field:'UseCompany',width:100">当前所在公司</th>
                            <th data-options="field:'UseCompanyDepmt',width:100">当前所在部门</th>
                            <th data-options="field:'AssetUsePerson',width:100">当前使用人</th>
                            <th data-options="field:'StoreLocation',width:100">存放地点</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>

        <input type="hidden" name="Id" />

    </form>
    <script type="text/javascript" src="../Scripts/Users/Asset/OutStore/AddUseRefund.js"></script>
    <script type="text/javascript" src="/Asset/Scripts/Users/Asset/OutStore/DlgAssetInStore.js"></script>
    <script type="text/javascript">
        $(function () {
            AddUseRefund.Init();
        })
    </script>
</body>
</html>
