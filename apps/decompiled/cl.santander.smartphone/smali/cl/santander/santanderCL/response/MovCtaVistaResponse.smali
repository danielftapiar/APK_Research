.class public Lcl/santander/santanderCL/response/MovCtaVistaResponse;
.super Ljava/lang/Object;
.source "MovCtaVistaResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field divisa:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field movimientos:Lcl/santander/santanderCL/data/MatrizCuentasAhorro;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovCtaVistaResponse;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovCtaVistaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMovimientos()Lcl/santander/santanderCL/data/MatrizCuentasAhorro;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovCtaVistaResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizCuentasAhorro;

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
    .line 19
    if-eqz p1, :cond_1

    .line 20
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 24
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 26
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovCtaVistaResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 31
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 34
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    const-string v3, "MATRIZMOVIMIENTOSDEPOSITOS"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    .line 37
    new-instance v3, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    iget-object v4, p0, Lcl/santander/santanderCL/response/MovCtaVistaResponse;->divisa:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Lcl/santander/santanderCL/data/MatrizCuentasAhorro;-><init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovCtaVistaResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizCuentasAhorro;

    .line 43
    :cond_1
    return-void
.end method

.method public setDivisa(Ljava/lang/String;)V
    .locals 0
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovCtaVistaResponse;->divisa:Ljava/lang/String;

    .line 51
    return-void
.end method
