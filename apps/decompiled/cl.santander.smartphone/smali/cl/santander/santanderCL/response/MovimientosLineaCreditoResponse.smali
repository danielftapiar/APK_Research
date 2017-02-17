.class public Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
.super Ljava/lang/Object;
.source "MovimientosLineaCreditoResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field chequeCargos:Ljava/lang/String;

.field depositoAbonos:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field movimientos:Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

.field saldoFinal:Ljava/lang/String;

.field saldoInicial:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChequeCargos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->chequeCargos:Ljava/lang/String;

    return-object v0
.end method

.method public getDepositoAbonos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->depositoAbonos:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

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
    .line 132
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;->getMovimientos()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSaldoFinal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->saldoFinal:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoInicial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->saldoInicial:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 7
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 25
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    .line 26
    .local v1, "divisa":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 27
    const-string v4, "OUTPUT"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "root":Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v4, v3, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 31
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "INFO"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 33
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v4, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v4, v3

    .line 36
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "ESCALARES"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 38
    const-string v5, "DIVISA-R-E"

    move-object v4, v0

    .line 39
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .line 38
    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v5, "CHEQCAR-R-E"

    move-object v4, v0

    .line 44
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .line 43
    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-static {v4, v1, v6}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->chequeCargos:Ljava/lang/String;

    .line 46
    const-string v5, "DEPABON-R-E"

    move-object v4, v0

    .line 47
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .line 46
    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-static {v4, v1, v6}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->depositoAbonos:Ljava/lang/String;

    .line 49
    const-string v5, "SALDOIN-R-E"

    move-object v4, v0

    .line 50
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .line 49
    invoke-static {v5, v4}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v4, v1, v6}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->saldoInicial:Ljava/lang/String;

    .line 52
    const-string v4, "SALDFIN-R-E"

    .line 53
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .line 52
    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v4, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v4, v1, v6}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->saldoFinal:Ljava/lang/String;

    .line 57
    :cond_1
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "root":Ljava/lang/Object;
    const-string v4, "MATRICES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 59
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .line 60
    .end local v0    # "data":Ljava/lang/Object;
    const-string v4, "MatrizMovimiento"

    invoke-virtual {v0, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, "matrices":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_2

    .line 63
    new-instance v4, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

    .line 64
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "matrices":Ljava/lang/Object;
    invoke-direct {v4, v2, v1}, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;-><init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V

    .line 63
    iput-object v4, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

    .line 70
    :cond_2
    return-void
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "divisa"    # Ljava/lang/String;
    .param p3, "resumen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 75
    if-eqz p1, :cond_1

    .line 76
    const-string v3, "OUTPUT"

    invoke-virtual {p1, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "root":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 80
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 82
    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 85
    :cond_0
    if-eqz p3, :cond_2

    .line 86
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "ESCALARES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 90
    const-string v4, "CHEQCAR-R-E"

    move-object v3, v0

    .line 91
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 90
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v3, p2, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->chequeCargos:Ljava/lang/String;

    .line 93
    const-string v4, "DEPABON-R-E"

    move-object v3, v0

    .line 94
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 93
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v3, p2, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->depositoAbonos:Ljava/lang/String;

    .line 96
    const-string v4, "SALDOIN-R-E"

    move-object v3, v0

    .line 97
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .line 96
    invoke-static {v4, v3}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v3, p2, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->saldoInicial:Ljava/lang/String;

    .line 99
    const-string v3, "SALDFIN-R-E"

    .line 100
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .line 99
    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v3, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v3, p2, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->saldoFinal:Ljava/lang/String;

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 106
    .restart local v2    # "root":Ljava/lang/Object;
    :cond_2
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "root":Ljava/lang/Object;
    const-string v3, "MATRICES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 108
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .line 109
    .end local v0    # "data":Ljava/lang/Object;
    const-string v3, "MatrizMovimiento"

    invoke-virtual {v0, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "matrices":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_1

    .line 112
    new-instance v3, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

    .line 113
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "matrices":Ljava/lang/Object;
    invoke-direct {v3, v1, p2}, Lcl/santander/santanderCL/data/MatrizMovLineasCredito;-><init>(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V

    .line 112
    iput-object v3, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

    goto :goto_0
.end method

.method public setChequeCargos(Ljava/lang/String;)V
    .locals 0
    .param p1, "chequeCargos"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->chequeCargos:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setDepositoAbonos(Ljava/lang/String;)V
    .locals 0
    .param p1, "depositoAbonos"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->depositoAbonos:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setInfo(Lcl/santander/santanderCL/data/response/Info;)V
    .locals 0
    .param p1, "info"    # Lcl/santander/santanderCL/data/response/Info;

    .prologue
    .line 128
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 129
    return-void
.end method

.method public setMovimientos(Lcl/santander/santanderCL/data/MatrizMovLineasCredito;)V
    .locals 0
    .param p1, "movimientos"    # Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

    .prologue
    .line 139
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->movimientos:Lcl/santander/santanderCL/data/MatrizMovLineasCredito;

    .line 140
    return-void
.end method

.method public setSaldoFinal(Ljava/lang/String;)V
    .locals 0
    .param p1, "saldoFinal"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->saldoFinal:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setSaldoInicial(Ljava/lang/String;)V
    .locals 0
    .param p1, "saldoInicial"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->saldoInicial:Ljava/lang/String;

    .line 148
    return-void
.end method
