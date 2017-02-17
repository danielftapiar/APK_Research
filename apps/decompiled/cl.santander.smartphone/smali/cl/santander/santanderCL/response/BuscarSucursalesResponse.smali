.class public Lcl/santander/santanderCL/response/BuscarSucursalesResponse;
.super Ljava/lang/Object;
.source "BuscarSucursalesResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field sucursales:Lcl/santander/santanderCL/data/MatrizPOI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getSucursales()Lcl/santander/santanderCL/data/MatrizPOI;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->sucursales:Lcl/santander/santanderCL/data/MatrizPOI;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 7
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 21
    if-eqz p1, :cond_1

    .line 22
    const-string v5, "OUTPUT"

    invoke-virtual {p1, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 25
    .local v4, "root":Ljava/lang/Object;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 26
    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    const-string v6, "INFO"

    invoke-virtual {v5, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "aux":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 28
    new-instance v5, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "aux":Ljava/lang/Object;
    invoke-direct {v5, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v5, p0, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 35
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/Info;->getCodError()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    move-object v0, v4

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v5, v0

    const-string v6, "MATRICES"

    invoke-virtual {v5, v6}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 39
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .line 40
    .end local v1    # "aux":Ljava/lang/Object;
    const-string v5, "MATRIZ-GEOREFERENCIA"

    invoke-virtual {v1, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 41
    .local v3, "matrices":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v5, :cond_1

    .line 42
    new-instance v5, Lcl/santander/santanderCL/data/MatrizPOI;

    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "matrices":Ljava/lang/Object;
    invoke-direct {v5, v3}, Lcl/santander/santanderCL/data/MatrizPOI;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v5, p0, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->sucursales:Lcl/santander/santanderCL/data/MatrizPOI;

    .line 65
    .end local v4    # "root":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 47
    .restart local v4    # "root":Ljava/lang/Object;
    :cond_2
    new-instance v5, Lcl/santander/santanderCL/data/MatrizPOI;

    invoke-direct {v5}, Lcl/santander/santanderCL/data/MatrizPOI;-><init>()V

    iput-object v5, p0, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->sucursales:Lcl/santander/santanderCL/data/MatrizPOI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 52
    .local v2, "ex":Ljava/lang/Exception;
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "root":Ljava/lang/Object;
    const-string v5, "MATRICES"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 54
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .line 55
    .end local v1    # "aux":Ljava/lang/Object;
    const-string v5, "MATRIZ-GEOREFERENCIA"

    invoke-virtual {v1, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .restart local v3    # "matrices":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v5, :cond_1

    .line 57
    new-instance v5, Lcl/santander/santanderCL/data/MatrizPOI;

    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "matrices":Ljava/lang/Object;
    invoke-direct {v5, v3}, Lcl/santander/santanderCL/data/MatrizPOI;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v5, p0, Lcl/santander/santanderCL/response/BuscarSucursalesResponse;->sucursales:Lcl/santander/santanderCL/data/MatrizPOI;

    goto :goto_0
.end method
