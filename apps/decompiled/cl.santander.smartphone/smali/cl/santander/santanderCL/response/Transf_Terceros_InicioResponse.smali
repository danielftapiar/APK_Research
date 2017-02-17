.class public Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;
.super Ljava/lang/Object;
.source "Transf_Terceros_InicioResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field captaciones:Lcl/santander/santanderCL/data/MatrizInicioTransf;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field limites:Lcl/santander/santanderCL/data/LimitesTransferencias;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getInicio()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemInicioTransf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizInicioTransf;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizInicioTransf;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInicioTransf;->getTransferencias()Ljava/util/ArrayList;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getLimitesTransferencias()Lcl/santander/santanderCL/data/LimitesTransferencias;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 11
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide/16 v7, 0x0

    .line 25
    if-eqz p1, :cond_3

    .line 26
    const-string v4, "OUTPUT"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_3

    move-object v4, v2

    .line 30
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "INFO"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 32
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v4, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v4, v2

    .line 35
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "ESCALARES"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 37
    new-instance v4, Lcl/santander/santanderCL/data/LimitesTransferencias;

    invoke-direct {v4}, Lcl/santander/santanderCL/data/LimitesTransferencias;-><init>()V

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    .line 38
    const-string v5, "MONTO-MAXIMO-OTROS-BCOS"

    move-object v4, v0

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "valor":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 40
    iget-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcl/santander/santanderCL/data/LimitesTransferencias;->setOtrosBancos(D)V

    .line 42
    iget-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getOtrosBancos()D

    move-result-wide v4

    cmpl-double v4, v4, v7

    if-nez v4, :cond_4

    .line 43
    iget-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    sget v5, Lcl/santander/santanderCL/utils/Constant;->LIMITE_TRANSF_OTROS_BANCOS:I

    int-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcl/santander/santanderCL/data/LimitesTransferencias;->setOtrosBancos(D)V

    .line 49
    :cond_1
    :goto_0
    const-string v4, "MONTO-MAXIMO-MISMO-BCO"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v4, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    .line 50
    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 51
    iget-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcl/santander/santanderCL/data/LimitesTransferencias;->setMismoBanco(D)V

    .line 53
    iget-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getMismoBanco()D

    move-result-wide v4

    cmpl-double v4, v4, v7

    if-nez v4, :cond_5

    .line 54
    iget-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    sget v5, Lcl/santander/santanderCL/utils/Constant;->LIMITE_TRANSF_MISMO_BANCO:I

    int-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcl/santander/santanderCL/data/LimitesTransferencias;->setMismoBanco(D)V

    .line 63
    .end local v3    # "valor":Ljava/lang/String;
    :cond_2
    :goto_1
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v4, "MATRICES"

    invoke-virtual {v2, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 65
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v4, "MATRIZ-CAPTACIONES"

    invoke-virtual {v0, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_3

    instance-of v4, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_3

    .line 69
    new-instance v4, Lcl/santander/santanderCL/data/MatrizInicioTransf;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lcl/santander/santanderCL/data/MatrizInicioTransf;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->captaciones:Lcl/santander/santanderCL/data/MatrizInicioTransf;

    .line 74
    :cond_3
    return-void

    .line 45
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local v2    # "root":Ljava/lang/Object;
    .restart local v3    # "valor":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    iget-object v5, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getOtrosBancos()D

    move-result-wide v5

    div-double/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Lcl/santander/santanderCL/data/LimitesTransferencias;->setOtrosBancos(D)V

    goto :goto_0

    .line 56
    .end local v0    # "data":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    iget-object v5, p0, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->limites:Lcl/santander/santanderCL/data/LimitesTransferencias;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/LimitesTransferencias;->getMismoBanco()D

    move-result-wide v5

    div-double/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Lcl/santander/santanderCL/data/LimitesTransferencias;->setMismoBanco(D)V

    goto :goto_1
.end method
