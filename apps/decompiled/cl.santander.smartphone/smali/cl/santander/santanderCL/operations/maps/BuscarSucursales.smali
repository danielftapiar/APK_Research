.class Lcl/santander/santanderCL/operations/maps/BuscarSucursales;
.super Ljava/lang/Object;
.source "BuscarSucursales.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputBuscarSucursal;

.field resp:Lcl/santander/santanderCL/response/BuscarSucursalesResponse;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBuscarSucursales(Lcl/santander/santanderCL/request/BuscarSucursalesRequest;)Lcl/santander/santanderCL/response/BuscarSucursalesResponse;
    .locals 10
    .param p1, "req"    # Lcl/santander/santanderCL/request/BuscarSucursalesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v6, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    invoke-direct {v6}, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;-><init>()V

    .line 44
    .local v6, "resp":Lcl/santander/santanderCL/response/BuscarSucursalesResponse;
    const-string v0, "Mvld_HS_Georeferenciacion/ConsultaGeoreferenciacion"

    .line 46
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v8

    invoke-virtual {v8}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v8

    invoke-static {v8}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v5

    .line 48
    .local v5, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    new-instance v2, Lcl/santander/santanderCL/ws/CommunicationWS;

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getNAMESPACES()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcl/santander/santanderCL/operations/IOperations;->getBUSCARSUCURSALES()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcl/santander/santanderCL/ws/CommunicationWS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v2, "con":Lcl/santander/santanderCL/ws/CommunicationWS;
    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/ws/CommunicationWS;->setMethodName(Ljava/lang/String;)V

    .line 50
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcl/santander/santanderCL/ws/CommunicationWS;->setHasSecurityHeader(Z)V

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "Mvld_HS_Georeferenciacion_Request"

    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :try_start_0
    invoke-virtual {v2, v1}, Lcl/santander/santanderCL/ws/CommunicationWS;->callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v7

    .line 57
    .local v7, "result":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->parse(Lorg/ksoap2/serialization/SoapObject;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    return-object v6

    .line 59
    .end local v7    # "result":Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v4

    .line 61
    .local v4, "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-virtual {v4}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getFault()Lorg/ksoap2/SoapFault;

    move-result-object v8

    iget-object v8, v8, Lorg/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-static {v8}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 62
    throw v4

    .line 64
    .end local v4    # "ex":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v3

    .line 66
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
    .line 74
    new-instance v0, Lcl/santander/santanderCL/request/BuscarSucursalesRequest;

    invoke-direct {v0}, Lcl/santander/santanderCL/request/BuscarSucursalesRequest;-><init>()V

    .line 75
    .local v0, "req":Lcl/santander/santanderCL/request/BuscarSucursalesRequest;
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->input:Lcl/santander/santanderCL/data/request/InputBuscarSucursal;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/request/BuscarSucursalesRequest;->setInput(Lcl/santander/santanderCL/data/request/InputBuscarSucursal;)V

    .line 77
    invoke-direct {p0, v0}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->getBuscarSucursales(Lcl/santander/santanderCL/request/BuscarSucursalesRequest;)Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->resp:Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    .line 79
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->resp:Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->resp:Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcl/santander/santanderCL/exceptions/InfoException;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->resp:Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-direct {v1, v2}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v1

    .line 84
    :cond_0
    return-void
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 2
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
    .line 88
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->resp:Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->resp:Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->getSucursales()Lcl/santander/santanderCL/data/MatrizPOI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->resp:Lcl/santander/santanderCL/response/BuscarSucursalesResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->getSucursales()Lcl/santander/santanderCL/data/MatrizPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizPOI;->getPOIS()Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public init(DDIILjava/lang/String;)V
    .locals 9
    .param p1, "lng"    # D
    .param p3, "lat"    # D
    .param p5, "radio"    # I
    .param p6, "registros"    # I
    .param p7, "codigoSucursal"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;

    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getBinarySecurityToken()Ljava/lang/String;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;-><init>(DDILjava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->input:Lcl/santander/santanderCL/data/request/InputBuscarSucursal;

    .line 36
    return-void
.end method
