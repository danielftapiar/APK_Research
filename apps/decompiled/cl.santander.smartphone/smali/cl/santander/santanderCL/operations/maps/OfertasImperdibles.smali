.class Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;
.super Ljava/lang/Object;
.source "OfertasImperdibles.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field lat:D

.field lng:D

.field req:Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;

.field resp:Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOfertasImperdibles(Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;)Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;
    .locals 12
    .param p1, "req"    # Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;

    invoke-direct {v0}, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;-><init>()V

    .line 45
    .local v0, "resp":Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;
    const-string v6, "getOfertasImperdibles"

    .line 46
    .local v6, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v11

    .line 47
    .local v11, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v8, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v11}, Lcl/santander/santanderCL/operations/IOperations;->getIMPERDIBLES()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;)V

    .line 48
    .local v8, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v8, v6}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 50
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v7, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "getOfertasImperdibles"

    invoke-virtual {v7, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :try_start_0
    sget-object v2, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->VERSION_11:Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    invoke-virtual {v8, v2}, Lcl/santander/santanderCL/ws/CommunicationWS;->setVersionSOAP(Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;)V

    .line 55
    invoke-virtual {v8, v7}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v1

    .line 57
    .local v1, "result":Lorg/ksoap2/serialization/SoapObject;
    iget-wide v2, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->lat:D

    iget-wide v4, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->lng:D

    invoke-virtual/range {v0 .. v5}, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->parse(Lorg/ksoap2/serialization/SoapObject;DD)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    return-object v0

    .line 59
    .end local v1    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v10

    .line 61
    .local v10, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v10, :cond_0

    .line 62
    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v2

    iget-object v2, v2, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 63
    :cond_0
    throw v10

    .line 65
    .end local v10    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v9

    .line 67
    .local v9, "e":Ljava/lang/Exception;
    throw v9
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
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->req:Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;

    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->getOfertasImperdibles(Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;)Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->resp:Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;

    .line 78
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->resp:Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->resp:Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->resp:Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->resp:Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->resp:Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/OfertasImperdiblesResponse;->getImperdibles()Ljava/util/ArrayList;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(DDILjava/util/ArrayList;Landroid/util/DisplayMetrics;I)V
    .locals 7
    .param p1, "Lat"    # D
    .param p3, "Lng"    # D
    .param p5, "radio"    # I
    .param p7, "ratio"    # Landroid/util/DisplayMetrics;
    .param p8, "totalRegistros"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p6, "idCategorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-wide p1, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->lat:D

    .line 36
    iput-wide p3, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->lng:D

    .line 38
    new-instance v0, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p7}, Lcl/santander/santanderCL/utils/Utils;->parserDisplayMetrics(Landroid/util/DisplayMetrics;)Lcl/santander/santanderCL/utils/Constant$RATIO;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/utils/Constant$RATIO;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p6

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->req:Lcl/santander/santanderCL/request/OfertasImperdiblesRequest;

    .line 39
    return-void
.end method
