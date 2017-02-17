.class public Lcl/santander/santanderCL/response/MovSinFacturarResponse;
.super Ljava/lang/Object;
.source "MovSinFacturarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field movimientos:Lcl/santander/santanderCL/data/MatrizMovSinFacturar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMovimientos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizMovSinFacturar;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizMovSinFacturar;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizMovSinFacturar;->getMovimientos()Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "divisa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 31
    if-eqz p1, :cond_1

    .line 32
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 36
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 38
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 41
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 43
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v3, "MatrizMovimientos"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    .line 46
    new-instance v3, Lcl/santander/santanderCL/data/MatrizMovSinFacturar;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v3, v1, p2}, Lcl/santander/santanderCL/data/MatrizMovSinFacturar;-><init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovSinFacturarResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizMovSinFacturar;

    .line 55
    :cond_1
    return-void
.end method
