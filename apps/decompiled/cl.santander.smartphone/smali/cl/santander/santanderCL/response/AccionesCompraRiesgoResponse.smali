.class public Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
.super Ljava/lang/Object;
.source "AccionesCompraRiesgoResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field tieneRiesgo:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public isTieneRiesgo()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;->tieneRiesgo:Z

    return v0
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
    .line 15
    if-eqz p1, :cond_1

    .line 16
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 20
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 22
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 25
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "ESCALARES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 27
    const-string v3, "TIENERIESGO"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v3, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "buf":Ljava/lang/String;
    const-string v3, "SI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;->tieneRiesgo:Z

    .line 37
    .end local v1    # "buf":Ljava/lang/String;
    :cond_1
    return-void
.end method
