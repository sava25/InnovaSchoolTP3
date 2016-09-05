﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage/SiteInnovaSchool.Master" AutoEventWireup="true" CodeBehind="frmSolicitudActividad.aspx.cs" Inherits="InnovaSchool.UserLayer.Interfaces.frmSolicitudActividad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row-fluid sortable ui-sortable">
        <div class="box span12" id="divSolicitudActividades" runat="server">
            <div class="box-header" data-original-title="">
                <h2><i class="halflings-icon white edit"></i><span class="break"></span>Solicitud de Actividades</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>                    
                </div>                
            </div>                        
            <div class="box-content">           
                <div class="form-horizontal">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="txtNombreActividad">Nombre Actividad</label>
                            <div class="controls">
                                <asp:TextBox ID="txtNombreActividad" runat="server" type="text" class="input-xlarge editable-input"
                                 title="Se necesita un nombre" ValidationGroup="SolicitudValid" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfNombreActividad" runat="server"
                                    ValidationGroup="SolicitudValid"
                                    ControlToValidate="txtNombreActividad"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita un nombre</i></div>">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="ddlActividad">Actividad</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlActividad" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlActividad_SelectedIndexChanged"></asp:DropDownList>
                                <asp:CompareValidator ID="cvActividad" runat="server" 
                                    ValidationGroup="SolicitudValid"
                                    ControlToValidate="ddlActividad"
                                    Operator="GreaterThan"
                                    ValueToCompare="0"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita una actividad</i></div>">
                                </asp:CompareValidator>                                
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="ddlTipoActividad">Tipo de Actividad</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlTipoActividad" runat="server" OnSelectedIndexChanged="ddlTipoActividad_SelectedIndexChanged"></asp:DropDownList>
                                <asp:CompareValidator ID="cvTipoActividad" runat="server" 
                                    ValidationGroup="SolicitudValid"
                                    ControlToValidate="ddlTipoActividad"
                                    Operator="GreaterThan"
                                    ValueToCompare="0"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita un tipo de actividad</i></div>">
                                </asp:CompareValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="txtDescripcion">Descripción</label>
                            <div class="controls">
                                <asp:TextBox ID="txtDescripcion" runat="server" type="text" TextMode="MultiLine" class="input-xlarge editable-input"
                                title="Se necesita una descripción" ValidationGroup="SolicitudValid" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvDescripcion" runat="server"
                                    ValidationGroup="SolicitudValid"
                                    ControlToValidate="txtDescripcion"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita una descripción</i></div>">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="txtMotivo">Motivo</label>
                            <div class="controls">
                                <asp:TextBox ID="txtMotivo" runat="server" type="text" TextMode="MultiLine" class="input-xlarge editable-input"
                                title="Se necesita un motivo" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvMotivo" runat="server"
                                    ValidationGroup="SolicitudValid"
                                    ControlToValidate="txtMotivo"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita un motivo</i></div>">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="ddlResponsable">Responsable</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlResponsable" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlResponsable_SelectedIndexChanged"></asp:DropDownList>
                                <asp:CompareValidator ID="cvResponsable" runat="server" 
                                    ValidationGroup="SolicitudValid"
                                    ControlToValidate="ddlResponsable"
                                    Operator="GreaterThan"
                                    ValueToCompare="0"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita un responsable</i></div>">
                                </asp:CompareValidator>   
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="ddlAlcance">Alcance</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlAlcance" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAlcance_SelectedIndexChanged"></asp:DropDownList>
                                <asp:CompareValidator ID="cvAlcance" runat="server" 
                                    ValidationGroup="SolicitudValid"
                                    ControlToValidate="ddlAlcance"
                                    Operator="GreaterThan"
                                    ValueToCompare="0"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita un alcance</i></div>">
                                </asp:CompareValidator>   
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="txtFechaInicio">Fecha de Inicio</label>
                            <div class="controls">
                                <asp:TextBox ID="txtFechaInicio" runat="server" type="text" class="input-medium datepicker"
                                    title="Se necesita una fecha de inicio"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFechaInicio" runat="server"
                                    ValidationGroup="FechaValid"
                                    ControlToValidate="txtFechaInicio"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita una fecha de inicio</i></div>">
                                </asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="rvFechaInicio" runat="server" 
                                    ValidationGroup="FechaValid"
                                    ControlToValidate="txtFechaInicio"
                                    Type="Date"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*La fecha de la actividad se encuentra fuera del rango del año escolar vigente o es menor a la actual.</i></div>">
                                </asp:RangeValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="txtFechaFin">Fecha de Fin</label>
                            <div class="controls">
                                <asp:TextBox ID="txtFechaFin" runat="server" type="text" class="input-medium datepicker"
                                    title="Se necesita una fecha de fin"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFechaFin" runat="server"
                                    ValidationGroup="FechaValid"
                                    ControlToValidate="txtFechaFin"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*Se necesita una fecha de fin</i></div>">
                                </asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="rvFechaFin" runat="server" 
                                    ValidationGroup="FechaValid"
                                    ControlToValidate="txtFechaFin"
                                    Type="Date"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*La fecha de la actividad se encuentra fuera del rango del año escolar vigente o es menor a la actual.</i></div>">
                                </asp:RangeValidator>
                                <asp:CompareValidator ID="cvFechaFin" runat="server"  
                                    ValidationGroup="FechaValid"
                                    ControlToValidate="txtFechaFin"
                                    ControlToCompare="txtFechaInicio"
                                    Operator="GreaterThanEqual"
                                    Type="Date"
                                    ForeColor="Red"
                                    Font-Size="Small"
                                    Display="Dynamic"
                                    ErrorMessage="<div><i>*La fecha de fin debe ser mayor o igual a la fecha actual.</i></div>">
                                </asp:CompareValidator>
                                
                                <asp:Button ID="btnIngresarHoras" runat="server" Text="Registar Horas" class="btn btn-primary" ValidationGroup="FechaValid"
                                    OnClick="btnIngresarHoras_Click" style="margin-left: 10px;" />
                            </div>                                                        
                        </div>
                        <div class="control-group">
                            <asp:GridView ID="gvDetalleSolicitudActividad" runat="server"
                                CssClass="table table-striped table-bordered bootstrap-datatable datatable dataTable"                                                                                             
                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                OnRowDataBound="gvDetalleSolicitudActividad_RowDataBound" OnRowCommand="gvDetalleSolicitudActividad_RowCommand">
                                <Columns>                                    
                                    <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" ItemStyle-CssClass="align-cen" HeaderStyle-Width="10%" />
                                    <asp:TemplateField HeaderText ="Hora Inicio" HeaderStyle-Width="20%"> 
                                        <ItemTemplate> 
                                            <asp:DropDownList ID="ddlHoraInicio" runat="server" class="input-mini"></asp:DropDownList>                                            
                                            <asp:CompareValidator ID="cvHoraInicio" runat="server" 
                                                ValidationGroup="SolicitudValid"
                                                ControlToValidate="ddlHoraInicio"
                                                Operator="GreaterThan"
                                                ValueToCompare="0"
                                                ForeColor="Red"
                                                Font-Size="Small"
                                                Display="Dynamic"
                                                ErrorMessage="<div><i>*Ingresar Hora Inicio</i></div>">
                                            </asp:CompareValidator>&nbsp;:&nbsp;   
                                            <asp:DropDownList ID="ddlMinutoInicio" runat="server" class="input-mini"></asp:DropDownList>
                                            <asp:CompareValidator ID="cvMinutoInicio" runat="server" 
                                                ValidationGroup="SolicitudValid"
                                                ControlToValidate="ddlMinutoInicio"
                                                Operator="GreaterThan"
                                                ValueToCompare="-1"
                                                ForeColor="Red"
                                                Font-Size="Small"
                                                Display="Dynamic"
                                                ErrorMessage="<div><i>*Ingresar Hora Inicio</i></div>">
                                            </asp:CompareValidator>   
                                        </ItemTemplate> 
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField> 
                                    <asp:TemplateField HeaderText ="Hora Fin" HeaderStyle-Width="20%"> 
                                        <ItemTemplate> 
                                            <asp:DropDownList ID="ddlHoraFin" runat="server" class="input-mini"></asp:DropDownList>
                                            <asp:CompareValidator ID="cvHoraFin" runat="server" 
                                                ValidationGroup="SolicitudValid"
                                                ControlToValidate="ddlHoraFin"
                                                Operator="GreaterThan"
                                                ValueToCompare="0"
                                                ForeColor="Red"
                                                Font-Size="Small"
                                                Display="Dynamic"
                                                ErrorMessage="<div><i>*Ingresar Hora Fin</i></div>">
                                            </asp:CompareValidator>&nbsp;:&nbsp;  
                                            <asp:DropDownList ID="ddlMinutoFin" runat="server" class="input-mini"></asp:DropDownList>
                                            <asp:CompareValidator ID="cvMinutoFin" runat="server" 
                                                ValidationGroup="SolicitudValid"
                                                ControlToValidate="ddlMinutoFin"                                                
                                                Operator="GreaterThan"
                                                ValueToCompare="-1"
                                                ForeColor="Red"
                                                Font-Size="Small"
                                                Display="Dynamic"
                                                ErrorMessage="<div><i>*Ingresar Hora Fin</i></div>">
                                            </asp:CompareValidator>   
                                        </ItemTemplate> 
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField> 
                                    <asp:TemplateField HeaderText ="Ubicación" HeaderStyle-Width="15%"> 
                                        <ItemTemplate> 
                                            <asp:DropDownList ID="ddlUbicacion" runat="server" AutoPostBack="True" class="input-medium" OnSelectedIndexChanged="ddlUbicacion_SelectedIndexChanged"></asp:DropDownList>                                           
                                            <asp:CompareValidator ID="cvUbicacion" runat="server" 
                                                ValidationGroup="SolicitudValid"
                                                ControlToValidate="ddlUbicacion"
                                                Operator="GreaterThan"
                                                ValueToCompare="0"
                                                ForeColor="Red"
                                                Font-Size="Small"
                                                Display="Dynamic"
                                                ErrorMessage="<div><i>*Seleccionar ubicación</i></div>">
                                            </asp:CompareValidator>  
                                        </ItemTemplate> 
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField> 
                                    <asp:TemplateField HeaderText ="Ambiente / Dirección" HeaderStyle-Width="55%"> 
                                        <ItemTemplate> 
                                            <asp:DropDownList ID="ddlAmbiente" runat="server" AutoPostBack="True" class="input-xlarge" Visible="false"></asp:DropDownList>
                                            <asp:TextBox ID="txtDireccion" runat="server" type="text" class="input-xlarge editable-input" Visible="false" MaxLength="100"></asp:TextBox>
                                        </ItemTemplate> 
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField> 
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label id="lblHoraInicial" runat ="server" text='<%# Eval("HoraInicial")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label id="lblHoraTermino" runat ="server" text='<%# Eval("HoraTermino")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label id="lblIdAmbiente" runat ="server" text='<%# Eval("IdAmbiente")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label id="lblDireccion" runat ="server" text='<%# Eval("Direccion")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label id="lblIdDetalleActividad" runat ="server" text='<%# Eval("IdDetalleActividad")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>  
                        <div class="form-actions">
                            <asp:Button ID="btnGuardar" runat="server" type="submit" Text="Guardar" class="btn btn-primary" OnClick="btnGuardar_Click" ValidationGroup="SolicitudValid"  />
                            <asp:Button ID="btnEnviar" runat="server" type="submit" Text="Enviar" class="btn btn-primary" OnClick="btnEnviar_Click" Visible="false" />
                            <asp:Button ID="btnLimpiar" runat="server" type="submit" Text="Limpiar" class="btn btn-warning" OnClick="btnLimpiar_Click" />                            
                            <a href="../Index.aspx" class="btn btn-success">Cancelar</a>
                        </div>                      
                    </fieldset>
                </div>                 
            </div>                       
        </div>
        <div class="row-fluid sortable ui-sortable">
            <div class="box span12" id="divConsultaSolicitudes" runat="server">
                <div class="box-header" data-original-title="">
                    <h2><i class="halflings-icon white search"></i><span class="break"></span>Consulta de Solicitudes</h2>
                    <div class="box-icon">
                        <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
                    </div>
                </div>
                <div class="box-content">           
                    <div class="form-horizontal">
                        <fieldset>
                            <div class="control-group">
                                <label class="control-label" for="ddlAnio">Año Escolar</label>
                                <div class="controls">
                                    <asp:DropDownList ID="ddlAnio" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAnio_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                            <asp:GridView ID="gvConsultaSolicitudes" runat="server"
                                CssClass="table table-striped table-bordered bootstrap-datatable datatable dataTable"                                                                                             
                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                OnRowDataBound="gvConsultaSolicitudes_RowDataBound" OnRowCommand="gvConsultaSolicitudes_RowCommand"
                                DataKeyNames="IdSolicitudActividad, Motivo">
                                <Columns>                                    
                                    <asp:BoundField DataField="IdSolicitudActividad" HeaderText="IdSolicitudActividad" Visible="false" />
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label id="lblIdActividad" runat ="server" text='<%# Eval("EActividad.IdActividad")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label id="lblDescripcion" runat ="server" text='<%# Eval("EActividad.Descripcion")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Motivo" HeaderText="Motivo" Visible="false" />
                                    <asp:BoundField DataField="EActividad.IdPersona" HeaderText="IdPersona" ItemStyle-CssClass="align-cen" HeaderStyle-Width="10%" Visible="false"/>  
                                    <asp:BoundField DataField="EActividad.Nombre" HeaderText="Nombre" ItemStyle-CssClass="align-cen" HeaderStyle-Width="10%" />
                                    <asp:BoundField DataField="Tipo" HeaderText="Actividad" ItemStyle-CssClass="align-cen" HeaderStyle-Width="10%" />
                                    <asp:BoundField DataField="EActividad.Tipo" HeaderText="Tipo de Actividad" ItemStyle-CssClass="align-cen" HeaderStyle-Width="10%" />                                                                                                       
                                    <asp:BoundField DataField="EActividad.UsuCreacion" HeaderText="Responsable" ItemStyle-CssClass="align-cen" HeaderStyle-Width="10%"/>                                                              
                                    <asp:BoundField DataField="EActividad.FecInicio" HeaderText="Fecha Inicio" ItemStyle-CssClass="align-cen"  DataFormatString="{0:dd/MM/yyyy}" HeaderStyle-Width="10%" />
                                    <asp:BoundField DataField="EActividad.FecTermino" HeaderText="Fecha Fin" ItemStyle-CssClass="align-cen"  DataFormatString="{0:dd/MM/yyyy}" HeaderStyle-Width="10%" />                                                                                                          
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label id="lblAlcance" runat ="server" text='<%# Eval("EActividad.Alcance")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Estado" HeaderText="Estado" ItemStyle-CssClass="align-cen" HeaderStyle-Width="10%"/>
                                    <asp:TemplateField HeaderText ="Opciones" HeaderStyle-Width="15%"> 
                                        <ItemTemplate> 
                                        <asp:LinkButton ID="lbtEditar" CommandName="Editar" CssClass="btn btn-primary btn-gv" runat="server" ToolTip="Editar" >
                                            <i class="halflings-icon white edit"></i>
                                        </asp:LinkButton> 
                                        <asp:LinkButton ID="lbtEliminar" CommandName="Eliminar" CssClass="btn btn-danger btn-gv" runat="server" ToolTip="Eliminar" Visible="false">
                                            <i class="halflings-icon white trash"></i>
                                        </asp:LinkButton>
                                        </ItemTemplate> 
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>                                                                         
                                </Columns>
                            </asp:GridView>
                        </div>  
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- Mensaje de Confirmación de Registro --%>
    <div class="modal hide fade in" id="myModalEnviar">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h2>Guardar Actividad</h2>
        </div>
        <div class="modal-body">
            <p><asp:Label ID="lblMensajeConfirmacionEnviar" runat="server" Text=""></asp:Label></p>
        </div>
        <div class="modal-footer">            
            <asp:Button ID="btnConfirmarEnviarAprobar" runat="server" type="submit" Text="Si" class="btn btn-primary" OnClick="btnConfirmarEnviarAprobar_Click" />
            <a href="#" class="btn btn-success" data-dismiss="modal">No</a>
        </div>
    </div>    
    <asp:HiddenField runat="server" ID="hfIdSolicitudActividad" />
</asp:Content>
