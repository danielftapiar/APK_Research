.class public Lcl/santander/santanderCL/operations/ChequesAsociados;
.super Ljava/lang/Object;
.source "ChequesAsociados.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field boleta:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

.field divisa:Ljava/lang/String;

.field input:Lcl/santander/santanderCL/data/request/InputChequesAsociados;

.field resp:Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

.field tieneBoleta:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChequeAsociados(Lcl/santander/santanderCL/request/ChequesAsociadosRequest;)Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/ChequesAsociadosRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v7, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;-><init>()V

    .line 57
    .local v7, "resp":Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    const-string v0, "Mvld_HS_CCCKC206/CartolaExplicativa"

    .line 59
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 61
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getCHEQUES_ASOCIADOS()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 63
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "CartolaExplicativa_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 70
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    iget-object v9, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->divisa:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 72
    :catch_0
    move-exception v4

    .line 74
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 75
    throw v4

    .line 77
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 79
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_0

    .line 80
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 82
    :cond_0
    throw v5

    .line 85
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcl/santander/santanderCL/request/ChequesAsociadosRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/ChequesAsociadosRequest;-><init>()V

    .line 99
    .local v0, "req":Lcl/santander/santanderCL/request/ChequesAsociadosRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->input:Lcl/santander/santanderCL/data/request/InputChequesAsociados;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/ChequesAsociadosRequest;->setInput(Lcl/santander/santanderCL/data/request/InputChequesAsociados;)V

    .line 100
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/ChequesAsociados;->getChequeAsociados(Lcl/santander/santanderCL/request/ChequesAsociadosRequest;)Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->resp:Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    .line 101
    iget-boolean v1, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->tieneBoleta:Z

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->resp:Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->getCheques()Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizChequesAsociados;->getDetalle()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->boleta:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->resp:Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->resp:Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->resp:Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->resp:Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 109
    :cond_1
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->resp:Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemMovimiento;)V
    .locals 5
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "movimiento"    # Lcl/santander/santanderCL/data/response/ItemMovimiento;

    .prologue
    .line 38
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->divisa:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta()Z

    move-result v0

    iput-boolean v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->tieneBoleta:Z

    .line 40
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->boleta:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->boleta:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporte()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->setMontoDocumento(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->boleta:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getNumeroPapeleta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->setSerieDocumento(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->boleta:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    const-string v1, "Boleta Dep\u00f3sito"

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->setTipoDocto(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->boleta:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    const-string v1, "Boleta Dep\u00f3sito"

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->setTipoDoctoScreen(Ljava/lang/String;)V

    .line 50
    :cond_0
    new-instance v0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->divisa:Ljava/lang/String;

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getNumeroMov()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/santander/santanderCL/data/request/InputChequesAsociados;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/ChequesAsociados;->input:Lcl/santander/santanderCL/data/request/InputChequesAsociados;

    .line 51
    return-void
.end method
