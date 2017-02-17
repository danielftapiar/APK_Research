.class public Lcl/santander/santanderCL/operations/ConsultaCheques;
.super Ljava/lang/Object;
.source "ConsultaCheques.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field cuenta:Ljava/lang/String;

.field input:Lcl/santander/santanderCL/data/request/InputConsultaCheques;

.field resp:Lcl/santander/santanderCL/response/ConsultaChequesResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConsultaCheque(Lcl/santander/santanderCL/request/ConsultaChequesRequest;)Lcl/santander/santanderCL/response/ConsultaChequesResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/ConsultaChequesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v7, Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/ConsultaChequesResponse;-><init>()V

    .line 50
    .local v7, "resp":Lcl/santander/santanderCL/response/ConsultaChequesResponse;
    const-string v0, "Mvld_HS_Consulta_Cheque/ConsultaCheque"

    .line 52
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 54
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getCONSULTACHEQUE()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 56
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "ConsultaCheque_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 63
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 65
    :catch_0
    move-exception v4

    .line 67
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 68
    throw v4

    .line 70
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 72
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_0

    .line 73
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 75
    :cond_0
    throw v5

    .line 78
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 80
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
    .line 90
    new-instance v0, Lcl/santander/santanderCL/request/ConsultaChequesRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/ConsultaChequesRequest;-><init>()V

    .line 91
    .local v0, "req":Lcl/santander/santanderCL/request/ConsultaChequesRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->input:Lcl/santander/santanderCL/data/request/InputConsultaCheques;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/ConsultaChequesRequest;->setInput(Lcl/santander/santanderCL/data/request/InputConsultaCheques;)V

    .line 92
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/ConsultaCheques;->getConsultaCheque(Lcl/santander/santanderCL/request/ConsultaChequesRequest;)Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->resp:Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    .line 93
    iget-object v1, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->resp:Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->getDetalleCheque()Lcl/santander/santanderCL/data/response/ItemCheque;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->cuenta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/response/ItemCheque;->setCuenta(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->resp:Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->resp:Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->resp:Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->resp:Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 99
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/ConsultaChequesResponse;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->resp:Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemChequeAsociado;)V
    .locals 5
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "mov"    # Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    .prologue
    .line 33
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->cuenta:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;->BOLETA:Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;

    if-eq v0, v1, :cond_0

    .line 37
    new-instance v0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getSerieDocumento()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/santander/santanderCL/data/request/InputConsultaCheques;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->input:Lcl/santander/santanderCL/data/request/InputConsultaCheques;

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getSerieDocumento()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/santander/santanderCL/data/request/InputConsultaCheques;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/ConsultaCheques;->input:Lcl/santander/santanderCL/data/request/InputConsultaCheques;

    goto :goto_0
.end method
