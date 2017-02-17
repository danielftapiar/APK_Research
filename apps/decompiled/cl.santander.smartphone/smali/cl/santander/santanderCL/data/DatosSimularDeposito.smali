.class public Lcl/santander/santanderCL/data/DatosSimularDeposito;
.super Ljava/lang/Object;
.source "DatosSimularDeposito.java"


# instance fields
.field deposito:Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

.field descripcion:Ljava/lang/String;

.field descripcionFechaInversion:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field fechaInversion:Ljava/lang/String;

.field fechaVencimiento:Ljava/lang/String;

.field indicadorInversion:Ljava/lang/String;

.field interesesPendientes:Ljava/lang/String;

.field montoAInvertir:Ljava/lang/String;

.field plazo:Ljava/lang/String;

.field saldoTotal:Ljava/lang/String;

.field signoMoneda:Ljava/lang/String;

.field tipoAjustes:Ljava/lang/String;

.field tipoInteres:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeposito()Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->deposito:Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    return-object v0
.end method

.method public getDepositoSeleccionado()Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->deposito:Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    return-object v0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcionFechaInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->descripcionFechaInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->fechaInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaVencimiento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->fechaVencimiento:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicadorInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->indicadorInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getInteresesAGanar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x4

    .line 164
    .local v0, "decimales":I
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->interesesPendientes:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->divisa:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->divisa:Ljava/lang/String;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 171
    :goto_0
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->interesesPendientes:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 173
    :goto_1
    return-object v1

    .line 169
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->interesesPendientes:Ljava/lang/String;

    goto :goto_1
.end method

.method public getInteresesPendientes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->interesesPendientes:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoACobrar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x4

    .line 182
    .local v0, "decimales":I
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->saldoTotal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->divisa:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->divisa:Ljava/lang/String;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 189
    :goto_0
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->saldoTotal:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 191
    :goto_1
    return-object v1

    .line 187
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->saldoTotal:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMontoAInvertir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->montoAInvertir:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoAInvertirScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->montoAInvertir:Ljava/lang/String;

    const-string v1, "CLP"

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlazo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->plazo:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->saldoTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getSignoMoneda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->signoMoneda:Ljava/lang/String;

    return-object v0
.end method

.method public getTasaInteres()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->tipoInteres:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->tipoInteres:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->tipoInteres:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTipoAjustes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->tipoAjustes:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoInteres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->tipoInteres:Ljava/lang/String;

    return-object v0
.end method

.method public isIndicadorInversion()Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->indicadorInversion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->indicadorInversion:Ljava/lang/String;

    const-string v1, "SI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeposito(Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;)V
    .locals 0
    .param p1, "deposito"    # Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    .prologue
    .line 139
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->deposito:Lcl/santander/santanderCL/data/response/ItemInvDepositoPlazo;

    .line 140
    return-void
.end method

.method public setDescripcion(Ljava/lang/String;)V
    .locals 0
    .param p1, "descripcion"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->descripcion:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDescripcionFechaInversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "descripcionFechaInversion"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->descripcionFechaInversion:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDivisa(Ljava/lang/String;)V
    .locals 0
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->divisa:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setFechaInversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "fechaInversion"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->fechaInversion:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setFechaVencimiento(Ljava/lang/String;)V
    .locals 0
    .param p1, "fechaVencimiento"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->fechaVencimiento:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setIndicadorInversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "indicadorInversion"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->indicadorInversion:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setInteresesPendientes(Ljava/lang/String;)V
    .locals 0
    .param p1, "interesesPendientes"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->interesesPendientes:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setMontoAInvertir(Ljava/lang/String;)V
    .locals 0
    .param p1, "montoAInvertir"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->montoAInvertir:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPlazo(Ljava/lang/String;)V
    .locals 0
    .param p1, "plazo"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->plazo:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSaldoTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "saldoTotal"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->saldoTotal:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSignoMoneda(Ljava/lang/String;)V
    .locals 0
    .param p1, "signoMoneda"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->signoMoneda:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setTipoAjustes(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoAjustes"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->tipoAjustes:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setTipoInteres(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoInteres"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcl/santander/santanderCL/data/DatosSimularDeposito;->tipoInteres:Ljava/lang/String;

    .line 87
    return-void
.end method
