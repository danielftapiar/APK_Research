.class public Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;
.super Ljava/lang/Object;
.source "Cobro_DepositoAPlazoInicio.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;

.field resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCobro_DepositoAPlazoInicio(Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v6, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;-><init>()V

    .line 38
    .local v6, "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    const-string v0, "Mvld_Deposito_a_Plazo_Iniciar_Cobro/Deposito_a_Plazo_Iniciar_Cobro"

    .line 39
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 40
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getCOBRO_DEPOSITOPLAZO_INICIO()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 42
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "Mvld_Deposito_a_Plazo_Iniciar_Cobro_Request"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 48
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    return-object v6

    .line 50
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 52
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 54
    :cond_0
    throw v4

    .line 56
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 58
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
    .line 68
    new-instance v0, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;-><init>()V

    .line 69
    .local v0, "req":Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;->setInput(Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;)V

    .line 70
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->getCobro_DepositoAPlazoInicio(Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    .line 72
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 77
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "rut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 28
    .local v0, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoInicio;->input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;

    .line 31
    return-void
.end method
