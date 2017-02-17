.class public Lcl/santander/santanderCL/response/ListaSuscripcionesResponse;
.super Ljava/lang/Object;
.source "ListaSuscripcionesResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field suscripciones:Lcl/santander/santanderCL/data/MatrizSuscripciones;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/response/ListaSuscripcionesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getSuscripciones()Lcl/santander/santanderCL/data/MatrizSuscripciones;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcl/santander/santanderCL/response/ListaSuscripcionesResponse;->suscripciones:Lcl/santander/santanderCL/data/MatrizSuscripciones;

    return-object v0
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
    .line 18
    if-eqz p1, :cond_1

    .line 19
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    .local v2, "root":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 21
    .local v0, "data":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 22
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/ListaSuscripcionesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 28
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 30
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v3, "MatrizSuscripciones"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    .line 34
    new-instance v3, Lcl/santander/santanderCL/data/MatrizSuscripciones;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v3, v1}, Lcl/santander/santanderCL/data/MatrizSuscripciones;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/ListaSuscripcionesResponse;->suscripciones:Lcl/santander/santanderCL/data/MatrizSuscripciones;

    .line 40
    :cond_1
    return-void
.end method

.method public setInfo(Lcl/santander/santanderCL/data/response/Info;)V
    .locals 0
    .param p1, "info"    # Lcl/santander/santanderCL/data/response/Info;

    .prologue
    .line 47
    iput-object p1, p0, Lcl/santander/santanderCL/response/ListaSuscripcionesResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 48
    return-void
.end method

.method public setSuscripciones(Lcl/santander/santanderCL/data/MatrizSuscripciones;)V
    .locals 0
    .param p1, "suscripciones"    # Lcl/santander/santanderCL/data/MatrizSuscripciones;

    .prologue
    .line 55
    iput-object p1, p0, Lcl/santander/santanderCL/response/ListaSuscripcionesResponse;->suscripciones:Lcl/santander/santanderCL/data/MatrizSuscripciones;

    .line 56
    return-void
.end method
