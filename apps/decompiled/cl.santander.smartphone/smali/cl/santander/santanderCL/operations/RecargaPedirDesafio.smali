.class public Lcl/santander/santanderCL/operations/RecargaPedirDesafio;
.super Ljava/lang/Object;
.source "RecargaPedirDesafio.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;

.field resp:Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPedirDesafio(Lcl/santander/santanderCL/request/RecargaPedirDesafioRequest;)Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/RecargaPedirDesafioRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v7, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;-><init>()V

    .line 43
    .local v7, "resp":Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    const-string v0, "Mvld_WS_Valida_Clte_Tarjeta_Coordenadas/ValidaClteTarjetaCoordenadas"

    .line 45
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 47
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getDESAFIORECARGA()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 49
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "ValidaClteTarjetaCoordenadasRequest"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 56
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 58
    :catch_0
    move-exception v4

    .line 60
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 62
    :cond_0
    throw v4

    .line 64
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 66
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 67
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 69
    :cond_1
    throw v5

    .line 72
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 74
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
    .line 85
    new-instance v0, Lcl/santander/santanderCL/request/RecargaPedirDesafioRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/RecargaPedirDesafioRequest;-><init>()V

    .line 87
    .local v0, "req":Lcl/santander/santanderCL/request/RecargaPedirDesafioRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->input:Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/RecargaPedirDesafioRequest;->setInput(Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;)V

    .line 88
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->getPedirDesafio(Lcl/santander/santanderCL/request/RecargaPedirDesafioRequest;)Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->resp:Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    .line 90
    iget-object v1, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->resp:Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->resp:Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->resp:Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->resp:Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 93
    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->resp:Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getSegmento()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setSegmento(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->resp:Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

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
    .line 31
    new-instance v0, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 32
    .local v0, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getSegmento()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/RecargaPedirDesafio;->input:Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;

    .line 34
    return-void
.end method
