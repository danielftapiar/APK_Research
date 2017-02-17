.class public Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
.super Ljava/lang/Object;
.source "AccionesVentaValidaResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

.field email:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field iva:Ljava/lang/String;

.field nComision:Ljava/lang/String;

.field nDerechos:Ljava/lang/String;

.field nGastos:Ljava/lang/String;

.field numCelular:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptaciones()Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcl/santander/santanderCL/data/MatrizProductos;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(I)V

    goto :goto_0
.end method

.method public getComisionDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nComision:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDerechosInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nDerechos:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGastosDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nGastos:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getIva()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->iva:Ljava/lang/String;

    return-object v0
.end method

.method public getIvaDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->iva:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumCelular()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->numCelular:Ljava/lang/String;

    return-object v0
.end method

.method public getnComision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nComision:Ljava/lang/String;

    return-object v0
.end method

.method public getnDerechos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nDerechos:Ljava/lang/String;

    return-object v0
.end method

.method public getnGastos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nGastos:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 8
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 30
    if-eqz p1, :cond_3

    .line 31
    const-string v5, "OUTPUT"

    invoke-virtual {p1, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    .local v4, "root":Ljava/lang/Object;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 35
    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    const-string v6, "INFO"

    invoke-virtual {v5, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 37
    new-instance v5, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v5, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v5, v4

    .line 41
    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    const-string v6, "ESCALARES"

    invoke-virtual {v5, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 46
    const-string v6, "NCOMISION"

    move-object v5, v0

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v6, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nComision:Ljava/lang/String;

    .line 47
    const-string v6, "NDERECHOS"

    move-object v5, v0

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v6, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nDerechos:Ljava/lang/String;

    .line 48
    const-string v6, "NGASTOS"

    move-object v5, v0

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v6, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->nGastos:Ljava/lang/String;

    .line 49
    const-string v6, "NUMCELULAR"

    move-object v5, v0

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v6, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->numCelular:Ljava/lang/String;

    .line 50
    const-string v6, "EMAIL"

    move-object v5, v0

    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v6, v5}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->email:Ljava/lang/String;

    .line 51
    const-string v5, "IVA"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v5, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->iva:Ljava/lang/String;

    .line 56
    :cond_1
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "root":Ljava/lang/Object;
    const-string v5, "MATRICES"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 58
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    const-string v5, "MATRIZCAPTACIONES"

    invoke-virtual {v0, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, "matrices":Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v5, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v5, :cond_3

    .line 61
    new-instance v5, Lcl/santander/santanderCL/data/MatrizProductos;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "matrices":Ljava/lang/Object;
    sget-object v6, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->CAPTACIONES:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-direct {v5, v2, v6}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V

    iput-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 63
    iget-object v5, p0, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizProductos;->getMatriz()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 79
    :cond_3
    return-void

    .line 63
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 65
    .local v3, "producto":Lcl/santander/santanderCL/data/response/ItemProducto;
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getAgrupacionComercial()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 67
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getAgrupacionComercial()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 68
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->values()[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v3, v6}, Lcl/santander/santanderCL/data/response/ItemProducto;->setTipo(Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)V

    .line 66
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
