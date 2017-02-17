.class public Lcl/santander/santanderCL/operations/MovSinFacturar;
.super Ljava/lang/Object;
.source "MovSinFacturar.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field divisa:Ljava/lang/String;

.field input:Lcl/santander/santanderCL/data/request/InputMovSinFacturar;

.field resp:Lcl/santander/santanderCL/response/MovSinFacturarResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMovSinFacturar(Lcl/santander/santanderCL/request/MovSinFacturarRequest;Ljava/lang/String;)Lcl/santander/santanderCL/response/MovSinFacturarResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/MovSinFacturarRequest;
    .param p2, "divisa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v7, Lcl/santander/santanderCL/response/MovSinFacturarResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/MovSinFacturarResponse;-><init>()V

    .line 55
    .local v7, "resp":Lcl/santander/santanderCL/response/MovSinFacturarResponse;
    const-string v0, "Mvld_HS_SMAMP224/TDC_Movimientos_por_Facturar"

    .line 56
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 58
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getMOV_POR_FACTURAR()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 60
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "TDC_Movimientos_por_Facturar_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 67
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8, p2}, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 88
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 69
    :catch_0
    move-exception v4

    .line 71
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 73
    :cond_0
    throw v4

    .line 75
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 77
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 78
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 80
    :cond_1
    throw v5

    .line 83
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 85
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
    .line 97
    new-instance v0, Lcl/santander/santanderCL/request/MovSinFacturarRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/MovSinFacturarRequest;-><init>()V

    .line 98
    .local v0, "req":Lcl/santander/santanderCL/request/MovSinFacturarRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->input:Lcl/santander/santanderCL/data/request/InputMovSinFacturar;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/MovSinFacturarRequest;->setInput(Lcl/santander/santanderCL/data/request/InputMovSinFacturar;)V

    .line 99
    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->divisa:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcl/santander/santanderCL/operations/MovSinFacturar;->getMovSinFacturar(Lcl/santander/santanderCL/request/MovSinFacturarRequest;Ljava/lang/String;)Lcl/santander/santanderCL/response/MovSinFacturarResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->resp:Lcl/santander/santanderCL/response/MovSinFacturarResponse;

    .line 101
    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->resp:Lcl/santander/santanderCL/response/MovSinFacturarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->resp:Lcl/santander/santanderCL/response/MovSinFacturarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->resp:Lcl/santander/santanderCL/response/MovSinFacturarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->resp:Lcl/santander/santanderCL/response/MovSinFacturarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 104
    :cond_0
    return-void
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->resp:Lcl/santander/santanderCL/response/MovSinFacturarResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->getMovimientos()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Z)V
    .locals 5
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "nacional"    # Z

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Lcl/santander/santanderCL/data/response/ItemProducto;->setNacional(Z)V

    .line 45
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->divisa:Ljava/lang/String;

    .line 47
    new-instance v0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getOficinaContrato()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/MovSinFacturar;->input:Lcl/santander/santanderCL/data/request/InputMovSinFacturar;

    .line 48
    return-void
.end method
