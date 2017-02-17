.class public Lcl/santander/santanderCL/operations/maps/Categorias;
.super Ljava/lang/Object;
.source "Categorias.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field ratio:Landroid/util/DisplayMetrics;

.field resp:Lcl/santander/santanderCL/response/CategoriasResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCategorias(Lcl/santander/santanderCL/request/CategoriasRequest;)Lcl/santander/santanderCL/response/CategoriasResponse;
    .locals 9
    .param p1, "req"    # Lcl/santander/santanderCL/request/CategoriasRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v6, Lcl/santander/santanderCL/response/CategoriasResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/CategoriasResponse;-><init>()V

    .line 37
    .local v6, "resp":Lcl/santander/santanderCL/response/CategoriasResponse;
    const-string v0, "getCategorias"

    .line 38
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

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getIMPERDIBLES()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 42
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 43
    sget-object v8, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->VERSION_11:Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setVersionSOAP(Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;)V

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "getCategorias"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 50
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/CategoriasResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    return-object v6

    .line 52
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 54
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 56
    :cond_0
    throw v4

    .line 58
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 60
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcl/santander/santanderCL/request/CategoriasRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/Categorias;->ratio:Landroid/util/DisplayMetrics;

    invoke-static {v2}, Lcl/santander/santanderCL/utils/Utils;->parserDisplayMetrics(Landroid/util/DisplayMetrics;)Lcl/santander/santanderCL/utils/Constant$RATIO;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/utils/Constant$RATIO;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/request/CategoriasRequest;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "req":Lcl/santander/santanderCL/request/CategoriasRequest;
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/maps/Categorias;->getCategorias(Lcl/santander/santanderCL/request/CategoriasRequest;)Lcl/santander/santanderCL/response/CategoriasResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/Categorias;->resp:Lcl/santander/santanderCL/response/CategoriasResponse;

    .line 76
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/Categorias;->resp:Lcl/santander/santanderCL/response/CategoriasResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/CategoriasResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/Categorias;->resp:Lcl/santander/santanderCL/response/CategoriasResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CategoriasResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 80
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
            "Lcl/santander/santanderCL/data/response/ItemCategoria;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/Categorias;->resp:Lcl/santander/santanderCL/response/CategoriasResponse;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/Categorias;->resp:Lcl/santander/santanderCL/response/CategoriasResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/CategoriasResponse;->getCategorias()Lcl/santander/santanderCL/data/MatrizCategorias;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizCategorias;->getCategorias()Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public init(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "ratio"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 30
    iput-object p1, p0, Lcl/santander/santanderCL/operations/maps/Categorias;->ratio:Landroid/util/DisplayMetrics;

    .line 31
    return-void
.end method
