.class public Lcl/santander/santanderCL/response/CategoriasResponse;
.super Ljava/lang/Object;
.source "CategoriasResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field categorias:Lcl/santander/santanderCL/data/MatrizCategorias;

.field info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategorias()Lcl/santander/santanderCL/data/MatrizCategorias;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcl/santander/santanderCL/response/CategoriasResponse;->categorias:Lcl/santander/santanderCL/data/MatrizCategorias;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/response/CategoriasResponse;->info:Lcl/santander/santanderCL/data/response/Info;

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
    .line 24
    if-eqz p1, :cond_1

    .line 26
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "root":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 31
    instance-of v4, v3, Ljava/util/Vector;

    if-eqz v4, :cond_0

    .line 32
    check-cast v3, Ljava/util/Vector;

    .end local v3    # "root":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 33
    .local v2, "infoSoap":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_0

    .line 37
    :try_start_0
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    invoke-direct {v4}, Lcl/santander/santanderCL/data/response/Info;-><init>()V

    iput-object v4, p0, Lcl/santander/santanderCL/response/CategoriasResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 38
    iget-object v5, p0, Lcl/santander/santanderCL/response/CategoriasResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    const-string v6, "codError"

    move-object v0, v2

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v4, v0

    invoke-static {v6, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcl/santander/santanderCL/data/response/Info;->setCodError(Ljava/lang/String;)V

    .line 39
    iget-object v4, p0, Lcl/santander/santanderCL/response/CategoriasResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    const-string v5, "descError"

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "infoSoap":Ljava/lang/Object;
    invoke-static {v5, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/data/response/Info;->setDesErr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    const-string v4, "listaCategorias"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 51
    .restart local v3    # "root":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/util/Vector;

    if-eqz v4, :cond_1

    .line 53
    new-instance v4, Lcl/santander/santanderCL/data/MatrizCategorias;

    check-cast v3, Ljava/util/Vector;

    .end local v3    # "root":Ljava/lang/Object;
    invoke-direct {v4, v3}, Lcl/santander/santanderCL/data/MatrizCategorias;-><init>(Ljava/util/Vector;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/CategoriasResponse;->categorias:Lcl/santander/santanderCL/data/MatrizCategorias;

    .line 58
    :cond_1
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
