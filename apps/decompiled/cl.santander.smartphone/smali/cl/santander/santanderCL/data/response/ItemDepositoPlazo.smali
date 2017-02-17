.class public Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;
.super Ljava/lang/Object;
.source "ItemDepositoPlazo.java"


# instance fields
.field ccc:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field monto_vto:Ljava/lang/String;

.field producto:Ljava/lang/String;

.field saldo:Ljava/lang/String;

.field simboloDivisa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    .line 20
    const-string v0, "CCC"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->ccc:Ljava/lang/String;

    .line 21
    const-string v0, "SALDO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->saldo:Ljava/lang/String;

    .line 22
    const-string v0, "MONTO-VTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->monto_vto:Ljava/lang/String;

    .line 23
    const-string v0, "DIVISA-GLS"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->divisa:Ljava/lang/String;

    .line 24
    const-string v0, "PRODUCTO-GLS"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->producto:Ljava/lang/String;

    .line 26
    const-string v0, "DIVISA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->simboloDivisa:Ljava/lang/String;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getCcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->ccc:Ljava/lang/String;

    return-object v0
.end method

.method public getCccScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->ccc:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 36
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->ccc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto_vto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->monto_vto:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto_vtoScreen()Ljava/lang/String;
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->simboloDivisa:Ljava/lang/String;

    .line 54
    .local v0, "divisaUF":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->monto_vto:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->divisa:Ljava/lang/String;

    const-string v2, "UF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->divisa:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->monto_vto:Ljava/lang/String;

    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->monto_vto:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->monto_vto:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " UF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 62
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->monto_vto:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 68
    :cond_1
    const-string v1, "-"

    goto :goto_0
.end method

.method public getProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->producto:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->saldo:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->simboloDivisa:Ljava/lang/String;

    .line 82
    .local v0, "divisaUF":Ljava/lang/String;
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->saldo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->divisa:Ljava/lang/String;

    const-string v2, "UF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->divisa:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->saldo:Ljava/lang/String;

    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->saldo:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->saldo:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .end local v0    # "divisaUF":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 89
    .restart local v0    # "divisaUF":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemDepositoPlazo;->saldo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 92
    .end local v0    # "divisaUF":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 95
    :cond_1
    const-string v1, "-"

    goto :goto_0
.end method
