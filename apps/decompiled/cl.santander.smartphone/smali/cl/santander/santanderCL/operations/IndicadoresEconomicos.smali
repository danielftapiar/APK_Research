.class public Lcl/santander/santanderCL/operations/IndicadoresEconomicos;
.super Ljava/lang/Object;
.source "IndicadoresEconomicos.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputIndicadoresEconomicos;

.field resp:Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIndicadoresEconomicos(Lcl/santander/santanderCL/request/IndicadoresEconomicosRequest;)Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/IndicadoresEconomicosRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v6, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;-><init>()V

    .line 36
    .local v6, "resp":Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    const-string v0, "Mvld_HS_Consulta_Indices_Financieros/IndicadoresFinancieros"

    .line 37
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 38
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getINDICADORES_FINANCIEROS()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 40
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 41
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setPublic(Z)V

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "IndicadoresFinancierosRequest"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 49
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    return-object v6

    .line 51
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 53
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 55
    :cond_0
    throw v4

    .line 57
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 59
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
    .line 69
    new-instance v0, Lcl/santander/santanderCL/request/IndicadoresEconomicosRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/IndicadoresEconomicosRequest;-><init>()V

    .line 70
    .local v0, "req":Lcl/santander/santanderCL/request/IndicadoresEconomicosRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->input:Lcl/santander/santanderCL/data/request/InputIndicadoresEconomicos;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/IndicadoresEconomicosRequest;->setInput(Lcl/santander/santanderCL/data/request/InputIndicadoresEconomicos;)V

    .line 71
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->getIndicadoresEconomicos(Lcl/santander/santanderCL/request/IndicadoresEconomicosRequest;)Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->resp:Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    .line 73
    iget-object v1, p0, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->resp:Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->resp:Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->resp:Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->resp:Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 78
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->resp:Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 28
    .local v0, "hoy":Ljava/util/Date;
    new-instance v1, Lcl/santander/santanderCL/data/request/InputIndicadoresEconomicos;

    const-string v2, "dd-MM-yyyy"

    invoke-static {v0, v2}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/request/InputIndicadoresEconomicos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/IndicadoresEconomicos;->input:Lcl/santander/santanderCL/data/request/InputIndicadoresEconomicos;

    .line 29
    return-void
.end method
