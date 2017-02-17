.class public Lcl/santander/santanderCL/response/AccionesResponse;
.super Ljava/lang/Object;
.source "AccionesResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field acciones:Lcl/santander/santanderCL/data/MatrizInversiones;

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
.method public getAcciones()Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesResponse;->acciones:Lcl/santander/santanderCL/data/MatrizInversiones;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 6
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
    const-string v4, "OUTPUT"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "root":Ljava/lang/Object;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 30
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "INFO"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "aux":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 32
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "aux":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/AccionesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 37
    :cond_0
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "root":Ljava/lang/Object;
    const-string v4, "MATRICES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .restart local v1    # "aux":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 39
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .line 40
    .end local v1    # "aux":Ljava/lang/Object;
    const-string v4, "MATRIZCUSTODIA"

    invoke-virtual {v1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "matrices":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_1

    .line 42
    new-instance v0, Lcl/santander/santanderCL/data/MatrizAcciones;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "matrices":Ljava/lang/Object;
    invoke-direct {v0, v2}, Lcl/santander/santanderCL/data/MatrizAcciones;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 43
    .local v0, "accionesAux":Lcl/santander/santanderCL/data/MatrizAcciones;
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizAcciones;->getAcciones()Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/AccionesResponse;->acciones:Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 49
    .end local v0    # "accionesAux":Lcl/santander/santanderCL/data/MatrizAcciones;
    :cond_1
    return-void
.end method
