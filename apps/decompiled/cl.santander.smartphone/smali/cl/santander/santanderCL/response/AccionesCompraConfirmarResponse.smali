.class public Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
.super Ljava/lang/Object;
.source "AccionesCompraConfirmarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

.field comision:Ljava/lang/String;

.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field derechos:Ljava/lang/String;

.field gastos:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field numeroTarjeta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcciones()Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    return-object v0
.end method

.method public getComision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->comision:Ljava/lang/String;

    return-object v0
.end method

.method public getComisionDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->comision:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCoordenada1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->coordenada1:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->coordenada2:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordenada3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->coordenada3:Ljava/lang/String;

    return-object v0
.end method

.method public getDerechos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->derechos:Ljava/lang/String;

    return-object v0
.end method

.method public getDerechosInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->derechos:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGastos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->gastos:Ljava/lang/String;

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
    .line 135
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->gastos:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getNumeroTarjeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->numeroTarjeta:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 10
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 31
    if-eqz p1, :cond_3

    .line 32
    const-string v7, "OUTPUT"

    invoke-virtual {p1, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 35
    .local v6, "root":Ljava/lang/Object;
    if-eqz v6, :cond_3

    move-object v7, v6

    .line 36
    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    const-string v8, "INFO"

    invoke-virtual {v7, v8}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "aux":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 38
    new-instance v7, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "aux":Ljava/lang/Object;
    invoke-direct {v7, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v7, v6

    .line 42
    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    const-string v8, "ESCALARES"

    invoke-virtual {v7, v8}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 46
    const-string v8, "NCOMISION"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->comision:Ljava/lang/String;

    .line 47
    const-string v8, "NDERECHOS"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->derechos:Ljava/lang/String;

    .line 48
    const-string v8, "NDERECHOS"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->gastos:Ljava/lang/String;

    .line 49
    const-string v8, "NUMEROTARJETA"

    move-object v7, v1

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v8, v7}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->numeroTarjeta:Ljava/lang/String;

    .line 51
    const-string v7, "MATRIZDESAFIO"

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "aux":Ljava/lang/Object;
    invoke-static {v7, v1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "Aux":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "des":[Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 54
    const/4 v7, 0x0

    aget-object v7, v2, v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->coordenada1:Ljava/lang/String;

    .line 55
    const/4 v7, 0x1

    aget-object v7, v2, v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->coordenada2:Ljava/lang/String;

    .line 56
    const/4 v7, 0x2

    aget-object v7, v2, v7

    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->coordenada3:Ljava/lang/String;

    .line 60
    .end local v0    # "Aux":Ljava/lang/String;
    .end local v2    # "des":[Ljava/lang/String;
    :cond_1
    check-cast v6, Lorg/ksoap2/serialization/SoapObject;

    .end local v6    # "root":Ljava/lang/Object;
    const-string v7, "MATRICES"

    invoke-virtual {v6, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 62
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .line 63
    .end local v1    # "aux":Ljava/lang/Object;
    const-string v7, "MATRIZCAPTACIONES"

    invoke-virtual {v1, v7}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 64
    .local v4, "matrices":Ljava/lang/Object;
    if-eqz v4, :cond_3

    instance-of v7, v4, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v7, :cond_3

    .line 66
    new-instance v7, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 67
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "matrices":Ljava/lang/Object;
    sget-object v8, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->CAPTACIONES:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-direct {v7, v4, v8}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V

    .line 66
    iput-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 68
    iget-object v7, p0, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/MatrizProductos;->getMatriz()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 88
    :cond_3
    return-void

    .line 68
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 70
    .local v5, "producto":Lcl/santander/santanderCL/data/response/ItemProducto;
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getAgrupacionComercial()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 71
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v8, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 73
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getAgrupacionComercial()Ljava/lang/String;

    move-result-object v8

    .line 74
    sget-object v9, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 76
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->values()[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v8

    .line 75
    aget-object v8, v8, v3

    invoke-virtual {v5, v8}, Lcl/santander/santanderCL/data/response/ItemProducto;->setTipo(Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)V

    .line 71
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
