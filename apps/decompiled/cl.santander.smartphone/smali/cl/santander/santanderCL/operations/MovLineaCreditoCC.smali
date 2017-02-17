.class Lcl/santander/santanderCL/operations/MovLineaCreditoCC;
.super Ljava/lang/Object;
.source "MovLineaCreditoCC.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field divisa:Ljava/lang/String;

.field input:Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;

.field resp:Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private getMovLineaCreditoCC(Lcl/santander/santanderCL/request/MovLineaCreditoCCRequest;)Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;
    .locals 11
    .param p1, "req"    # Lcl/santander/santanderCL/request/MovLineaCreditoCCRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v7, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    invoke-direct {v7}, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;-><init>()V

    .line 45
    .local v7, "resp":Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;
    const-string v0, "Mvld_HS_Consulta_Mvto_Depo_Doc_Cta/ConsultaMvtoDepoDocCta"

    .line 46
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v6

    .line 48
    .local v6, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lcl/santander/santanderCL/operations/IOperations;->getMOVLINEACREDITOCC()Ljava/lang/String;

    move-result-object v10

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
    const-string v9, "ConsultaMvtoDepoDocCta_Request"

    invoke-virtual {v1, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    .line 57
    .local v8, "result":Lorg/ksoap2/serialization/SoapObject;
    iget-object v9, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->divisa:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
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
    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v9

    iget-object v9, v9, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 63
    :cond_0
    throw v4

    .line 65
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v5

    .line 67
    .local v5, "ex1":Lcl/santander/santanderCL/exceptions/CommunicationException;
    invoke-virtual {v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v9

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    if-ne v9, v10, :cond_1

    .line 68
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 70
    :cond_1
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
    .line 87
    new-instance v0, Lcl/santander/santanderCL/request/MovLineaCreditoCCRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/MovLineaCreditoCCRequest;-><init>()V

    .line 88
    .local v0, "req":Lcl/santander/santanderCL/request/MovLineaCreditoCCRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->input:Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/MovLineaCreditoCCRequest;->setInput(Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;)V

    .line 89
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->getMovLineaCreditoCC(Lcl/santander/santanderCL/request/MovLineaCreditoCCRequest;)Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->resp:Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    .line 91
    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->resp:Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->resp:Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->resp:Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->resp:Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 94
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->resp:Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    return-object v0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;)V
    .locals 6
    .param p1, "producto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "fechaDesde"    # Ljava/util/Date;
    .param p3, "fechaHasta"    # Ljava/util/Date;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->divisa:Ljava/lang/String;

    .line 37
    new-instance v0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->input:Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;

    .line 38
    return-void
.end method
