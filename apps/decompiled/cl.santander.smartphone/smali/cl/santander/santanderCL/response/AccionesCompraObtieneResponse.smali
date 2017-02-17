.class public Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
.super Ljava/lang/Object;
.source "AccionesCompraObtieneResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

.field clienteClasificado:Ljava/lang/String;

.field cuentaCustodia:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field mail:Ljava/lang/String;

.field telefono:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcciones()Lcl/santander/santanderCL/data/MatrizAccionesCompra;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    return-object v0
.end method

.method public getClienteClasificado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->clienteClasificado:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCustodia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->cuentaCustodia:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCustodiaScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->cuentaCustodia:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getTelefono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public isClienteClasificado()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->clienteClasificado:Ljava/lang/String;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 25
    if-eqz p1, :cond_1

    .line 26
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 30
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 32
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v3, v2

    .line 36
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "ESCALARES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 39
    const-string v4, "CLI_CALIFICADO"

    move-object v3, v0

    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->clienteClasificado:Ljava/lang/String;

    .line 40
    const-string v4, "CUENTA_CUSTODIA"

    move-object v3, v0

    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->cuentaCustodia:Ljava/lang/String;

    .line 41
    const-string v4, "TELEFONO"

    move-object v3, v0

    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->telefono:Ljava/lang/String;

    .line 42
    const-string v3, "EMIAL"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v3, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->mail:Ljava/lang/String;

    .line 51
    :goto_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 53
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .line 54
    .end local v0    # "aux":Ljava/lang/Object;
    const-string v3, "MATRIZACCIONES"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    .line 56
    new-instance v3, Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v3, v1}, Lcl/santander/santanderCL/data/MatrizAccionesCompra;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    .line 66
    :cond_1
    return-void

    .line 45
    .restart local v0    # "aux":Ljava/lang/Object;
    .restart local v2    # "root":Ljava/lang/Object;
    :cond_2
    const-string v3, ""

    iput-object v3, p0, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->clienteClasificado:Ljava/lang/String;

    goto :goto_0
.end method
