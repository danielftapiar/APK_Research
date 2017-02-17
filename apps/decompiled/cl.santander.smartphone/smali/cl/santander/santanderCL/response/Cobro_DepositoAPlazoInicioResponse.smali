.class public Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
.super Ljava/lang/Object;
.source "Cobro_DepositoAPlazoInicioResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field listaDepositos:Lcl/santander/santanderCL/data/MatrizConsultaIPF;


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
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getListaDepositos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIPF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->listaDepositos:Lcl/santander/santanderCL/data/MatrizConsultaIPF;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->listaDepositos:Lcl/santander/santanderCL/data/MatrizConsultaIPF;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizConsultaIPF;->getDepositos()Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
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
    .line 22
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 25
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 26
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 28
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 31
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 33
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .line 34
    .end local v0    # "aux":Ljava/lang/Object;
    const-string v3, "MATRIZ_CONSULTA_IPF"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "matrices":Ljava/lang/Object;
    new-instance v3, Lcl/santander/santanderCL/data/MatrizConsultaIPF;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v3, v1}, Lcl/santander/santanderCL/data/MatrizConsultaIPF;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->listaDepositos:Lcl/santander/santanderCL/data/MatrizConsultaIPF;

    .line 40
    :cond_1
    return-void
.end method
