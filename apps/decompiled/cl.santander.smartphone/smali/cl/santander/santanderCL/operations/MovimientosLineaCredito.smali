.class public Lcl/santander/santanderCL/operations/MovimientosLineaCredito;
.super Ljava/lang/Object;
.source "MovimientosLineaCredito.java"


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;

.field item:Lcl/santander/santanderCL/data/response/ItemProducto;

.field resp:Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

.field resumen:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMovimientosLineaCredito(Lcl/santander/santanderCL/request/MovimientosLineaCreditoRequest;)Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/MovimientosLineaCreditoRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v7, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;-><init>()V

    .line 45
    .local v7, "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    const-string v0, "Mvld_HS_CCCKC157/ConsMovLineaCredito"

    .line 47
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 49
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getMOVLINEACREDITO()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 51
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "Mvld_HS_CCCKC157_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 58
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    iget-object v9, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->item:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->resumen:Z

    invoke-virtual {v7, v8, v9, v10}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 60
    :catch_0
    move-exception v4

    .line 62
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 64
    :cond_0
    throw v4

    .line 66
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 68
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 69
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 71
    :cond_1
    throw v5

    .line 74
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcl/santander/santanderCL/request/MovimientosLineaCreditoRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/MovimientosLineaCreditoRequest;-><init>()V

    .line 88
    .local v0, "req":Lcl/santander/santanderCL/request/MovimientosLineaCreditoRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->input:Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/MovimientosLineaCreditoRequest;->setInput(Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;)V

    .line 89
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->getMovimientosLineaCredito(Lcl/santander/santanderCL/request/MovimientosLineaCreditoRequest;)Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->resp:Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    .line 90
    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->resp:Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->resp:Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->resp:Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->resp:Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 95
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->resp:Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Z)V
    .locals 3
    .param p1, "item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "resumen"    # Z

    .prologue
    .line 34
    iput-object p1, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->item:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 35
    iput-boolean p2, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->resumen:Z

    .line 36
    new-instance v0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosLineaCredito;->input:Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;

    .line 39
    return-void
.end method
