.class public Lcl/santander/santanderCL/operations/maps/DetalleOferta;
.super Ljava/lang/Object;
.source "DetalleOferta.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;

.field resp:Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDetalleImperdibles(Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;)Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;
    .locals 9
    .param p1, "req"    # Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v6, Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;-><init>()V

    .line 39
    .local v6, "resp":Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;
    const-string v0, "getDetalleOfertasImperdibles"

    .line 40
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 41
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getIMPERDIBLES()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 43
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "getDetalleOfertasImperdibles"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :try_start_0
    sget-object v8, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->VERSION_11:Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setVersionSOAP(Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;)V

    .line 49
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 51
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    return-object v6

    .line 53
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 55
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 57
    :cond_0
    throw v4

    .line 59
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->input:Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;

    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->getDetalleImperdibles(Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;)Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->resp:Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;

    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->resp:Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->resp:Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 76
    :cond_0
    return-void
.end method

.method public getResult()Lcl/santander/santanderCL/data/response/ItemOferta;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->resp:Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->resp:Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/DetalleImperdiblesResponse;->getOferta()Lcl/santander/santanderCL/data/response/ItemOferta;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "idComercio"    # Ljava/lang/String;
    .param p2, "ratio"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 31
    new-instance v0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcl/santander/santanderCL/utils/Utils;->parserDisplayMetrics(Landroid/util/DisplayMetrics;)Lcl/santander/santanderCL/utils/Constant$RATIO;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/utils/Constant$RATIO;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/maps/DetalleOferta;->input:Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;

    .line 33
    return-void
.end method
