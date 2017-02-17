.class public Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;
.super Ljava/lang/Object;
.source "MovLineaCreditoCCResponse.java"


# instance fields
.field private depositos:Lcl/santander/santanderCL/data/MatrizDepositos;

.field private escalares:Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;

.field private info:Lcl/santander/santanderCL/data/response/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEscalares()Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->info:Lcl/santander/santanderCL/data/response/Info;

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
    .line 70
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->depositos:Lcl/santander/santanderCL/data/MatrizDepositos;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->depositos:Lcl/santander/santanderCL/data/MatrizDepositos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizDepositos;->getMovimientos()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 23
    if-eqz p1, :cond_2

    .line 24
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 28
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 30
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v3, v2

    .line 33
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "ESCALARES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 35
    new-instance v3, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;

    .line 36
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    .line 35
    iput-object v3, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;

    .line 40
    :cond_1
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 42
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v3, "MATRIZMOVIMIENTOSDEPOSITOS"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_2

    .line 45
    new-instance v3, Lcl/santander/santanderCL/data/MatrizDepositos;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v3, v1, p2}, Lcl/santander/santanderCL/data/MatrizDepositos;-><init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->depositos:Lcl/santander/santanderCL/data/MatrizDepositos;

    .line 51
    :cond_2
    return-void
.end method

.method public setEscalares(Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;)V
    .locals 0
    .param p1, "escalares"    # Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;

    .prologue
    .line 58
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresMovLineaCreditoCC;

    .line 59
    return-void
.end method

.method public setInfo(Lcl/santander/santanderCL/data/response/Info;)V
    .locals 0
    .param p1, "info"    # Lcl/santander/santanderCL/data/response/Info;

    .prologue
    .line 66
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 67
    return-void
.end method
