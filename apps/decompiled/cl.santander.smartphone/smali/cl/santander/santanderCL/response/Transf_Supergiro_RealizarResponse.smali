.class public Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
.super Ljava/lang/Object;
.source "Transf_Supergiro_RealizarResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field claveTransf:Ljava/lang/String;

.field cod:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field monto:Ljava/lang/String;

.field nuevoSaldo:Ljava/lang/String;

.field rutDestino:Ljava/lang/String;

.field telefono:Ljava/lang/String;

.field tipoCuenta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClaveTransf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->claveTransf:Ljava/lang/String;

    return-object v0
.end method

.method public getCod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->cod:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getNuevoSaldo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->nuevoSaldo:Ljava/lang/String;

    return-object v0
.end method

.method public getNuevoSaldoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->nuevoSaldo:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRutDestino()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->rutDestino:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->tipoCuenta:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "root":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 31
    .local v0, "data":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 32
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 38
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 41
    const-string v3, "NUEVO_SALDO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->nuevoSaldo:Ljava/lang/String;

    .line 42
    const-string v3, "COD"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->cod:Ljava/lang/String;

    .line 43
    const-string v2, "CLAVE_TRANSFER"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->claveTransf:Ljava/lang/String;

    .line 49
    :cond_1
    return-void
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->cuenta:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setMonto(Ljava/lang/String;)V
    .locals 0
    .param p1, "monto"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->monto:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setRutDestino(Ljava/lang/String;)V
    .locals 0
    .param p1, "rutDestino"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->rutDestino:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTipoCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoCuenta"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->tipoCuenta:Ljava/lang/String;

    .line 65
    return-void
.end method
