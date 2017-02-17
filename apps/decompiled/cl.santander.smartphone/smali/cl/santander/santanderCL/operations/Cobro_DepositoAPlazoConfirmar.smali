.class public Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;
.super Ljava/lang/Object;
.source "Cobro_DepositoAPlazoConfirmar.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;

.field resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCobro_DepositoAPlazoConfirmar(Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoConfirmarRequest;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoConfirmarRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v6, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;-><init>()V

    .line 42
    .local v6, "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    const-string v0, "Mvld_Deposito_a_Plazo_Confirmar_Cobro/Deposito_a_Plazo_Confirmar_Cobro"

    .line 43
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 44
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getCOBRO_DEPOSITOPLAZO_CONFIRMAR()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 46
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "Mvld_Deposito_a_Plazo_Confirmar_Cobro_Request"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 52
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    return-object v6

    .line 54
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 56
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 58
    :cond_0
    throw v4

    .line 60
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 62
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
    .line 72
    new-instance v0, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoConfirmarRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoConfirmarRequest;-><init>()V

    .line 73
    .local v0, "req":Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoConfirmarRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoConfirmarRequest;->setInput(Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;)V

    .line 74
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->getCobro_DepositoAPlazoConfirmar(Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoConfirmarRequest;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    .line 76
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 81
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->resp:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "numeroOperacion"    # Ljava/lang/String;
    .param p3, "coordenada1"    # Ljava/lang/String;
    .param p4, "coordenada2"    # Ljava/lang/String;
    .param p5, "coordenada3"    # Ljava/lang/String;
    .param p6, "cuentaAbono"    # Ljava/lang/String;
    .param p7, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v7, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v7}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 28
    .local v7, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v7, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "desafio":Ljava/lang/String;
    new-instance v0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    move-object v4, p7

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/Cobro_DepositoAPlazoConfirmar;->input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;

    .line 35
    return-void
.end method
