.class public Lcl/santander/santanderCL/operations/EstadoDeCuenta;
.super Ljava/lang/Object;
.source "EstadoDeCuenta.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field private input:Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;

.field private resp:Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private getEstadoDeCuenta(Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;)Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;
    .locals 12
    .param p1, "req"    # Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v8, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    invoke-direct {v8}, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;-><init>()V

    .line 51
    .local v8, "resp":Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;
    const-string v0, "estadoCuenta"

    .line 53
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v10

    invoke-virtual {v10}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v10

    invoke-static {v10}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 55
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getESTADO_DE_CUENTA()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 57
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 58
    sget-object v10, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->VERSION_11:Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    invoke-virtual {v2, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;->setVersionSOAP(Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;)V

    .line 59
    const-string v10, "urn:estadoCuenta"

    invoke-virtual {v2, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;->setSOAPAction(Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "est:estadoCuenta"

    invoke-virtual {v1, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v7, "namespaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "est"

    const-string v11, "http://ws.mvld.itg.isban.cl"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v2, v1, v7}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v9

    .line 68
    .local v9, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v8, v9}, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 89
    .end local v7    # "namespaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v8

    .line 70
    :catch_0
    move-exception v4

    .line 72
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v10

    iget-object v10, v10, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 74
    :cond_0
    throw v4

    .line 76
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 78
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v10

    sget v11, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v10, v11, :cond_1

    .line 79
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v10

    invoke-virtual {v10}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 81
    :cond_1
    throw v5

    .line 84
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 86
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
            Ljava/lang/Exception;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcl/santander/santanderCL/request/EstadoDeCuentaRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/EstadoDeCuentaRequest;-><init>()V

    .line 99
    .local v0, "req":Lcl/santander/santanderCL/request/EstadoDeCuentaRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->input:Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;

    invoke-direct {p0, v1}, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->getEstadoDeCuenta(Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;)Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->resp:Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    .line 101
    iget-object v1, p0, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->resp:Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->resp:Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->resp:Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->resp:Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 105
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->resp:Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;)V
    .locals 7
    .param p1, "item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v6, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v6}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 38
    .local v6, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v6, p2}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;

    invoke-virtual {v6}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->ENTIDAD:Ljava/lang/String;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getOficinaContrato()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/EstadoDeCuenta;->input:Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;

    .line 43
    return-void
.end method
