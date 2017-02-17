.class public final Lcl/santander/santanderCL/operations/Operations_HOMO;
.super Ljava/lang/Object;
.source "Operations_HOMO.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IOperations;


# static fields
.field static final ACCIONES:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consolidado_acciones.ws_consolidado_accionesHttpEndpoint"

.field static final ACCIONES_COMPRA_CONFIRMA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_compras_confirma.ws_acciones_compras_confirmaHttpEndpoint"

.field static final ACCIONES_COMPRA_OBTIENE:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_compras_obtiene.ws_acciones_compras_obtieneHttpEndpoint"

.field static final ACCIONES_COMPRA_RIESGO:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_compra_riesgo.ws_acciones_compra_riesgoHttpEndpoint"

.field static final ACCIONES_COMPRA_VALIDA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_compras_valida.ws_acciones_compras_validaHttpEndpoint"

.field static final ACCIONES_CONFIRMA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_ventas_confirma.ws_acciones_ventas_confirmaHttpEndpoint"

.field static final ACCIONES_SOLICITA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_ventas_solicita.ws_acciones_ventas_solicitaHttpEndpoint"

.field static final ACCIONES_VALIDA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_ventas_valida.ws_acciones_ventas_validaHttpEndpoint"

.field static final BUSCARSUCURSALES:Ljava/lang/String; = "http://170.18.191.163/pubMovil/mvldpublic/services/ws_consulta_georeferenciacion.ws_consulta_georeferenciacionHttpEndpoint"

.field static final CHEQUES_ASOCIADOS:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_cartola_explicativa.ws_cartola_explicativaHttpEndpoint"

.field static final COBRO_DEPOSITOPLAZO_ACEPTAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_aceptar_cobro.ws_deposito_a_plazo_aceptar_cobroHttpEndpoint"

.field static final COBRO_DEPOSITOPLAZO_CONFIRMAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_confirmar_cobro.ws_deposito_a_plazo_confirmar_cobroHttpEndpoint"

.field static final COBRO_DEPOSITOPLAZO_INICIO:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_iniciar_cobro.ws_deposito_a_plazo_iniciar_cobroHttpEndpoint"

.field static final CONSULTACHEQUE:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_cheque.ws_consulta_chequeHttpEndpoint"

.field static final CONSULTASALDO:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_sldo.ws_consulta_sldoHttpEndpoint"

.field static final CONSULTA_APV:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_mvld_apvkx002.ws_mvld_apvkx002HttpEndpoint"

.field static final CREDITOSCONSUMODATOS:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_email_celu_clte.ws_consulta_email_celu_clteHttpEndpoint"

.field static final CREDITOSCONSUMOSOLICITUD:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_solicita_credito_consumo_movil.ws_solicita_credito_consumo_movilHttpEndpoint"

.field static final DEPOSITOS_PLAZO:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo.ws_deposito_a_plazoHttpEndpoint"

.field static final DESAFIORECARGA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_valida_clte_tarjeta_coordenadas.ws_valida_clte_tarjeta_coordenadasHttpEndpoint"

.field static final DETALLESUSCRIPCIONES:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_deuda_valida_tarjcoordenadas.ws_consulta_deuda_valida_tarjcoordenadasHttpEndpoint"

.field static final ESTADO_DE_CUENTA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv1/services/WsEstCtaService.WsEstCtaServiceHttpSoap11Endpoint"

.field static final FONDOS_MUTUOS:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_mvld_fmukx058.ws_mvld_fmukx058HttpEndpoint"

.field static final IMPERDIBLES:Ljava/lang/String; = "http://servicios.imperdible.cl/servicio.php"

.field static final INDICADORES_FINANCIEROS:Ljava/lang/String; = "http://170.18.191.163/pubMovil/mvldpublic/services/ws_indicadores_financieros.ws_indicadores_financierosHttpEndpoint"

.field static final INVERSIONES_DEPOSITOAPLAZO_ACEPTAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_aceptar_inversion.ws_deposito_a_plazo_aceptar_inversionHttpEndpoint"

.field static final INVERSIONES_DEPOSITOAPLAZO_CONFIRMAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_confirmar_inversion.ws_deposito_a_plazo_confirmar_inversionHttpEndpoint"

.field static final INVERSIONES_DEPOSITOAPLAZO_INICIAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_iniciar_inversion.ws_deposito_a_plazo_iniciar_inversionHttpEndpoint"

.field static final INVERSIONES_DEPOSITOAPLAZO_SIMULAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_simular_inversion.ws_deposito_a_plazo_simular_inversionHttpEndpoint"

.field static final LISTASUSCRIPCIONES:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_lista_suscripciones_cliente.ws_lista_suscripciones_clienteHttpEndpoint"

.field static final LOGIN:Ljava/lang/String; = "http://170.18.191.163/lgnMovil/EAIMovil/login.do"

.field static final LOGOUT:Ljava/lang/String; = "http://170.18.191.163/pkmslogout"

.field static final MOVLINEACREDITO:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_mov_linea_credito.ws_consulta_mov_linea_creditoHttpEndpoint"

.field static final MOVLINEACREDITOCC:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_mvto_depo_doc_cta.ws_consulta_mvto_depo_doc_ctaHttpEndpoint"

.field static final MOV_POR_FACTURAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_tdc_movimientos_por_facturar.ws_tdc_movimientos_por_facturarHttpEndpoint"

.field static final NAMESPACES:Ljava/lang/String; = "http://com.isban.eai.hub.mn/"

.field static final PAGORECARGA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_pago_recarga_celular.ws_pago_recarga_celularHttpEndpoint"

.field static final PAGOSUSCRIPCION:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_valida_coordenadas_pagodeuda.ws_valida_coordenadas_pagodeudaHttpEndpoint"

.field static final PRODUCTOS:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_cruce_producto_online.ws_cruce_producto_onlineHttpEndpoint"

.field static final TIMEOUT_APP:I = 0xa

.field static final TRANSFERENCIA_MIS_PRODUCTOS:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_entre_misproductos.ws_transferencias_entre_misproductosHttpEndpoint"

.field static final TRANSFERENCIA_SUPERGIRO_INGRESO:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_ingreso_super_giro.ws_ingreso_super_giroHttpEndpoint"

.field static final TRANSFERENCIA_SUPERGIRO_REALIZAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_realiza_super_giro.ws_realiza_super_giroHttpEndpoint"

.field static final TRANSFERENCIA_SUPERGIRO_VERIFICAR:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_verifica_super_giro.ws_verifica_super_giroHttpEndpoint"

.field static final TRANSFERENCIA_TERCEROS_INICIO:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_a_terceros_inicio.ws_transferencias_a_terceros_inicioHttpEndpoint"

.field static final TRANSFERENCIA_TERCEROS_ULTIMAS_TRANSF:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_ultimos_destinatarios.ws_consulta_ultimos_destinatariosHttpEndpoint"

.field static final TRANSFERENCIA_TERCEROS_VALIDA_OTP:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_a_terceros_valida_otp.ws_transferencias_a_terceros_valida_otpHttpEndpoint"

.field static final TRANSFERENCIA_TERCEROS_VALIDA_SUPERCLAVE:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_a_terceros_val_super_clave.ws_transferencias_a_terceros_val_super_claveHttpEndpoint"

.field static final TRANSFERENCIA_TERCEROS_VERIFICA:Ljava/lang/String; = "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_a_terceros_verifica.ws_transferencias_a_terceros_verificaHttpEndpoint"

.field static final USUARIO_ALT:Ljava/lang/String; = "GHOBH"

.field static final confiarCertificado:Z


# instance fields
.field final CONNECTION_TIMEOUT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const v0, 0x927c0

    iput v0, p0, Lcl/santander/santanderCL/operations/Operations_HOMO;->CONNECTION_TIMEOUT:I

    .line 3
    return-void
.end method


# virtual methods
.method public LOGIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "http://170.18.191.163/lgnMovil/EAIMovil/login.do"

    return-object v0
.end method

.method public getACCIONES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consolidado_acciones.ws_consolidado_accionesHttpEndpoint"

    return-object v0
.end method

.method public getACCIONES_COMPRA_CONFIRMA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_compras_confirma.ws_acciones_compras_confirmaHttpEndpoint"

    return-object v0
.end method

.method public getACCIONES_COMPRA_OBTIENE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_compras_obtiene.ws_acciones_compras_obtieneHttpEndpoint"

    return-object v0
.end method

.method public getACCIONES_COMPRA_RIESGO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_compra_riesgo.ws_acciones_compra_riesgoHttpEndpoint"

    return-object v0
.end method

.method public getACCIONES_COMPRA_VALIDA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_compras_valida.ws_acciones_compras_validaHttpEndpoint"

    return-object v0
.end method

.method public getACCIONES_CONFIRMA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_ventas_confirma.ws_acciones_ventas_confirmaHttpEndpoint"

    return-object v0
.end method

.method public getACCIONES_SOLICITA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_ventas_solicita.ws_acciones_ventas_solicitaHttpEndpoint"

    return-object v0
.end method

.method public getACCIONES_VALIDA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_acciones_ventas_valida.ws_acciones_ventas_validaHttpEndpoint"

    return-object v0
.end method

.method public getBUSCARSUCURSALES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "http://170.18.191.163/pubMovil/mvldpublic/services/ws_consulta_georeferenciacion.ws_consulta_georeferenciacionHttpEndpoint"

    return-object v0
.end method

.method public getCHEQUES_ASOCIADOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_cartola_explicativa.ws_cartola_explicativaHttpEndpoint"

    return-object v0
.end method

.method public getCOBRO_DEPOSITOPLAZO_ACEPTAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_aceptar_cobro.ws_deposito_a_plazo_aceptar_cobroHttpEndpoint"

    return-object v0
.end method

.method public getCOBRO_DEPOSITOPLAZO_CONFIRMAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_confirmar_cobro.ws_deposito_a_plazo_confirmar_cobroHttpEndpoint"

    return-object v0
.end method

.method public getCOBRO_DEPOSITOPLAZO_INICIO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_iniciar_cobro.ws_deposito_a_plazo_iniciar_cobroHttpEndpoint"

    return-object v0
.end method

.method public getCONNECTION_TIMEOUT()I
    .locals 1

    .prologue
    .line 232
    const v0, 0x927c0

    return v0
.end method

.method public getCONSULTACHEQUE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_cheque.ws_consulta_chequeHttpEndpoint"

    return-object v0
.end method

.method public getCONSULTASALDO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_sldo.ws_consulta_sldoHttpEndpoint"

    return-object v0
.end method

.method public getCONSULTA_APV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_mvld_apvkx002.ws_mvld_apvkx002HttpEndpoint"

    return-object v0
.end method

.method public getCREDITOSCONSUMODATOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_email_celu_clte.ws_consulta_email_celu_clteHttpEndpoint"

    return-object v0
.end method

.method public getCREDITOSCONSUMOSOLICITUD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_solicita_credito_consumo_movil.ws_solicita_credito_consumo_movilHttpEndpoint"

    return-object v0
.end method

.method public getConfiarCertificado()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getDEPOSITOS_PLAZO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo.ws_deposito_a_plazoHttpEndpoint"

    return-object v0
.end method

.method public getDESAFIORECARGA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_valida_clte_tarjeta_coordenadas.ws_valida_clte_tarjeta_coordenadasHttpEndpoint"

    return-object v0
.end method

.method public getDETALLESUSCRIPCIONES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_deuda_valida_tarjcoordenadas.ws_consulta_deuda_valida_tarjcoordenadasHttpEndpoint"

    return-object v0
.end method

.method public getESTADO_DE_CUENTA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv1/services/WsEstCtaService.WsEstCtaServiceHttpSoap11Endpoint"

    return-object v0
.end method

.method public getFONDOS_MUTUOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_mvld_fmukx058.ws_mvld_fmukx058HttpEndpoint"

    return-object v0
.end method

.method public getIMPERDIBLES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "http://servicios.imperdible.cl/servicio.php"

    return-object v0
.end method

.method public getINDICADORES_FINANCIEROS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "http://170.18.191.163/pubMovil/mvldpublic/services/ws_indicadores_financieros.ws_indicadores_financierosHttpEndpoint"

    return-object v0
.end method

.method public getINVERSIONES_DEPOSITOAPLAZO_ACEPTAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_aceptar_inversion.ws_deposito_a_plazo_aceptar_inversionHttpEndpoint"

    return-object v0
.end method

.method public getINVERSIONES_DEPOSITOAPLAZO_CONFIRMAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_confirmar_inversion.ws_deposito_a_plazo_confirmar_inversionHttpEndpoint"

    return-object v0
.end method

.method public getINVERSIONES_DEPOSITOAPLAZO_INICIAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_iniciar_inversion.ws_deposito_a_plazo_iniciar_inversionHttpEndpoint"

    return-object v0
.end method

.method public getINVERSIONES_DEPOSITOAPLAZO_SIMULAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_deposito_a_plazo_simular_inversion.ws_deposito_a_plazo_simular_inversionHttpEndpoint"

    return-object v0
.end method

.method public getLISTASUSCRIPCIONES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_lista_suscripciones_cliente.ws_lista_suscripciones_clienteHttpEndpoint"

    return-object v0
.end method

.method public getLOGIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "http://170.18.191.163/lgnMovil/EAIMovil/login.do"

    return-object v0
.end method

.method public getLOGOUT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "http://170.18.191.163/pkmslogout"

    return-object v0
.end method

.method public getMOVLINEACREDITO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_mov_linea_credito.ws_consulta_mov_linea_creditoHttpEndpoint"

    return-object v0
.end method

.method public getMOVLINEACREDITOCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_mvto_depo_doc_cta.ws_consulta_mvto_depo_doc_ctaHttpEndpoint"

    return-object v0
.end method

.method public getMOV_POR_FACTURAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_tdc_movimientos_por_facturar.ws_tdc_movimientos_por_facturarHttpEndpoint"

    return-object v0
.end method

.method public getNAMESPACES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "http://com.isban.eai.hub.mn/"

    return-object v0
.end method

.method public getPAGORECARGA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_pago_recarga_celular.ws_pago_recarga_celularHttpEndpoint"

    return-object v0
.end method

.method public getPAGOSUSCRIPCION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_valida_coordenadas_pagodeuda.ws_valida_coordenadas_pagodeudaHttpEndpoint"

    return-object v0
.end method

.method public getPRODUCTOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_cruce_producto_online.ws_cruce_producto_onlineHttpEndpoint"

    return-object v0
.end method

.method public getTIMEOUT_APP()I
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0xa

    return v0
.end method

.method public getTRANSFERENCIA_MIS_PRODUCTOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_entre_misproductos.ws_transferencias_entre_misproductosHttpEndpoint"

    return-object v0
.end method

.method public getTRANSFERENCIA_SUPERGIRO_INGRESO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_ingreso_super_giro.ws_ingreso_super_giroHttpEndpoint"

    return-object v0
.end method

.method public getTRANSFERENCIA_SUPERGIRO_REALIZAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_realiza_super_giro.ws_realiza_super_giroHttpEndpoint"

    return-object v0
.end method

.method public getTRANSFERENCIA_SUPERGIRO_VERIFICAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_verifica_super_giro.ws_verifica_super_giroHttpEndpoint"

    return-object v0
.end method

.method public getTRANSFERENCIA_TERCEROS_INICIO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_a_terceros_inicio.ws_transferencias_a_terceros_inicioHttpEndpoint"

    return-object v0
.end method

.method public getTRANSFERENCIA_TERCEROS_ULTIMAS_TRANSF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_consulta_ultimos_destinatarios.ws_consulta_ultimos_destinatariosHttpEndpoint"

    return-object v0
.end method

.method public getTRANSFERENCIA_TERCEROS_VALIDA_OTP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_a_terceros_valida_otp.ws_transferencias_a_terceros_valida_otpHttpEndpoint"

    return-object v0
.end method

.method public getTRANSFERENCIA_TERCEROS_VALIDA_SUPERCLAVE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_a_terceros_val_super_clave.ws_transferencias_a_terceros_val_super_claveHttpEndpoint"

    return-object v0
.end method

.method public getTRANSFERENCIA_TERCEROS_VERIFICA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string v0, "http://170.18.191.163/prvMovil/mvldpriv/services/ws_transferencias_a_terceros_verifica.ws_transferencias_a_terceros_verificaHttpEndpoint"

    return-object v0
.end method

.method public getUSUARIO_ALT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, "GHOBH"

    return-object v0
.end method
