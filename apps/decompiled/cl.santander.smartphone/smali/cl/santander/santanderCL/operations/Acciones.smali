.class public Lcl/santander/santanderCL/operations/Acciones;
.super Ljava/lang/Object;
.source "Acciones.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputAcciones;

.field resp:Lcl/santander/santanderCL/response/AccionesResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAcciones(Lcl/santander/santanderCL/request/AccionesRequest;)Lcl/santander/santanderCL/response/AccionesResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/AccionesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v7, Lcl/santander/santanderCL/response/AccionesResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/AccionesResponse;-><init>()V

    .line 41
    .local v7, "resp":Lcl/santander/santanderCL/response/AccionesResponse;
    const-string v0, "Mvld_SP_Consulta_Clte_Rut/ConsolidadoAcciones"

    .line 44
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    .line 44
    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 47
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    .line 48
    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getACCIONES()Ljava/lang/String;

    move-result-object v10

    .line 47
    invoke-direct {v2, v9, v10}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 50
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "Mvld_Sp_APVKX002_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 57
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/response/AccionesResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    .end local v8    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v7

    .line 59
    :catch_0
    move-exception v4

    .line 61
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 62
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

    if-ne v9, v10, :cond_0

    .line 67
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 69
    :cond_0
    throw v5

    .line 73
    .end local v5    # "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    :catch_2
    move-exception v3

    .line 75
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
    .line 84
    new-instance v0, Lcl/santander/santanderCL/request/AccionesRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/AccionesRequest;-><init>()V

    .line 85
    .local v0, "req":Lcl/santander/santanderCL/request/AccionesRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Acciones;->input:Lcl/santander/santanderCL/data/request/InputAcciones;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/AccionesRequest;->setInput(Lcl/santander/santanderCL/data/request/InputAcciones;)V

    .line 86
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/Acciones;->getAcciones(Lcl/santander/santanderCL/request/AccionesRequest;)Lcl/santander/santanderCL/response/AccionesResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Acciones;->resp:Lcl/santander/santanderCL/response/AccionesResponse;

    .line 87
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Acciones;->resp:Lcl/santander/santanderCL/response/AccionesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Acciones;->resp:Lcl/santander/santanderCL/response/AccionesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcl/santander/santanderCL/operations/Acciones;->resp:Lcl/santander/santanderCL/response/AccionesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/AccionesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/Acciones;->resp:Lcl/santander/santanderCL/response/AccionesResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/AccionesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 92
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/AccionesResponse;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/santanderCL/operations/Acciones;->resp:Lcl/santander/santanderCL/response/AccionesResponse;

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
    .line 30
    new-instance v0, Lcl/santander/santanderCL/data/AlfaNumerico11;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;-><init>()V

    .line 31
    .local v0, "rutAux":Lcl/santander/santanderCL/data/AlfaNumerico11;
    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/AlfaNumerico11;->setValue(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcl/santander/santanderCL/data/request/InputAcciones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/request/InputAcciones;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/Acciones;->input:Lcl/santander/santanderCL/data/request/InputAcciones;

    .line 35
    return-void
.end method
