.class public Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;
.super Ljava/lang/Object;
.source "AccionesCompraConfirmar.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;

.field resp:Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccionesCompraConfirmar(Lcl/santander/santanderCL/request/AccionesCompraConfirmarRequest;)Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/AccionesCompraConfirmarRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v6, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;-><init>()V

    .line 46
    .local v6, "resp":Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    const-string v0, "Mvld_SP_Comision_Cliente/ConfirmaCompraAcciones"

    .line 47
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    .line 48
    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    .line 47
    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 49
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getACCIONES_COMPRA_CONFIRMA()Ljava/lang/String;

    move-result-object v9

    .line 49
    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 52
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "ConfirmaComprasAcciones_Request"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 58
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    return-object v6

    .line 60
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 62
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 64
    :cond_0
    throw v4

    .line 66
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 68
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
    .line 78
    new-instance v0, Lcl/santander/santanderCL/request/AccionesCompraConfirmarRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/AccionesCompraConfirmarRequest;-><init>()V

    .line 79
    .local v0, "req":Lcl/santander/santanderCL/request/AccionesCompraConfirmarRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/AccionesCompraConfirmarRequest;->setInput(Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;)V

    .line 80
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->getAccionesCompraConfirmar(Lcl/santander/santanderCL/request/AccionesCompraConfirmarRequest;)Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->resp:Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    .line 82
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->resp:Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->resp:Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->resp:Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->resp:Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 88
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->resp:Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "cuentaCustodia"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 32
    .local v0, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object v1, p0, Lcl/santander/santanderCL/operations/AccionesCompraConfirmar;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;

    .line 38
    return-void
.end method
