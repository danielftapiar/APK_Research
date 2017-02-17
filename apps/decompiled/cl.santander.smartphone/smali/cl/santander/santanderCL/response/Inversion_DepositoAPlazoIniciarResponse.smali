.class public Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;
.super Ljava/lang/Object;
.source "Inversion_DepositoAPlazoIniciarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field inversiones:Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

.field valorUF:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getInversiones()Lcl/santander/santanderCL/data/MatrizConsultaInversiones;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->inversiones:Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    return-object v0
.end method

.method public getValorUF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->valorUF:Ljava/lang/String;

    return-object v0
.end method

.method public getValorUFScreen()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 65
    iget-object v0, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->valorUF:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

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
    .line 21
    if-eqz p1, :cond_2

    .line 22
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    .local v2, "root":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 24
    .local v0, "data":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 25
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v3, v2

    .line 30
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "ESCALARES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 32
    const-string v3, "VALOR-UF"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v3, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->valorUF:Ljava/lang/String;

    .line 37
    :cond_1
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 39
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v3, "MATRIZ-CONSULTA"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_2

    .line 43
    new-instance v3, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v3, v1}, Lcl/santander/santanderCL/data/MatrizConsultaInversiones;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoIniciarResponse;->inversiones:Lcl/santander/santanderCL/data/MatrizConsultaInversiones;

    .line 53
    :cond_2
    return-void
.end method
