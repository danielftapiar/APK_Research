.class public Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;
.super Ljava/lang/Object;
.source "ItemInvDepositoPlazo.java"


# instance fields
.field divisa:Ljava/lang/String;

.field nombre:Ljava/lang/String;

.field reAjustabilidad:Z

.field renovacionAutomatica:Z

.field subProducto:Ljava/lang/String;

.field unidadReajuste:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_2

    .line 20
    const-string v1, "SUB-PRODUCTO"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->subProducto:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->subProducto:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->parseSubProducto(Ljava/lang/String;)V

    .line 22
    const-string v1, "DIVISA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->divisa:Ljava/lang/String;

    .line 23
    const-string v1, "INDICADOR-RENOVACION-AUTOMATICA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "aux":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 25
    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->renovacionAutomatica:Z

    .line 27
    :cond_0
    const-string v1, "INDICADOR-REAJUSTABILIDAD"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iput-boolean v2, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->reAjustabilidad:Z

    .line 31
    :cond_1
    const-string v1, "UNIDAD-REAJUSTE"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->unidadReajuste:Ljava/lang/String;

    .line 34
    .end local v0    # "aux":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v0    # "aux":Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 25
    goto :goto_0

    :cond_4
    move v2, v3

    .line 29
    goto :goto_1
.end method

.method private parseSubProducto(Ljava/lang/String;)V
    .locals 4
    .param p1, "subProducto"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 40
    .local v1, "valor":I
    const-string v2, "-"

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->nombre:Ljava/lang/String;

    .line 41
    sparse-switch v1, :sswitch_data_0

    .line 59
    .end local v1    # "valor":I
    :goto_0
    return-void

    .line 44
    .restart local v1    # "valor":I
    :sswitch_0
    const-string v2, "Fijo"

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->nombre:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v1    # "valor":I
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error Parseo: codigo de subproducto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "valor":I
    :sswitch_1
    :try_start_1
    const-string v2, "Renovable"

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->nombre:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0xdc -> :sswitch_0
        0xf0 -> :sswitch_1
        0x4c4 -> :sswitch_0
        0x4d8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getSubProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->subProducto:Ljava/lang/String;

    return-object v0
.end method

.method public isReAjustabilidad()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->reAjustabilidad:Z

    return v0
.end method

.method public isRenovacionAutomatica()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->renovacionAutomatica:Z

    return v0
.end method

.method public setDivisa(Ljava/lang/String;)V
    .locals 0
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->divisa:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setReAjustabilidad(Z)V
    .locals 0
    .param p1, "reAjustabilidad"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->reAjustabilidad:Z

    .line 90
    return-void
.end method

.method public setRenovacionAutomatica(Z)V
    .locals 0
    .param p1, "renovacionAutomatica"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->renovacionAutomatica:Z

    .line 82
    return-void
.end method

.method public setSubProducto(Ljava/lang/String;)V
    .locals 0
    .param p1, "subProducto"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;->subProducto:Ljava/lang/String;

    .line 66
    return-void
.end method
