.class public Lcl/santander/santanderCL/data/response/ItemMovimiento;
.super Ljava/lang/Object;
.source "ItemMovimiento.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field ciudad:Ljava/lang/String;

.field comercio:Ljava/lang/String;

.field descripcion:Ljava/lang/String;

.field descripcionRubro:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field fecha:Ljava/util/Date;

.field importe:D

.field importeOrigen:Ljava/lang/String;

.field importeScreen:Ljava/lang/String;

.field numeroMov:Ljava/lang/String;

.field numeroPapeleta:Ljava/lang/String;

.field observacion:Ljava/lang/String;

.field referencia:Ljava/lang/String;

.field tieneBoleta:Z

.field tieneCheques:Z

.field tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

.field tipobeneficiario:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneCheques:Z

    .line 28
    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;Ljava/lang/String;)V
    .locals 3
    .param p1, "factura"    # Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;
    .param p2, "divisa"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneCheques:Z

    .line 28
    iput-boolean v2, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta:Z

    .line 50
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getCiudad()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->ciudad:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getDescripcionRubro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->descripcionRubro:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getDescripcion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->descripcion:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getComercio()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->comercio:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getTipoBen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tipobeneficiario:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getIndicadorDebeHaber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->CARGO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getFechaScreen()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->fecha:Ljava/util/Date;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->numeroPapeleta:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getFechaScreen()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->fecha:Ljava/util/Date;

    .line 66
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getImporte()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importeOrigen:Ljava/lang/String;

    .line 68
    const-string v0, "USD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getImporte()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p2, v1}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importeScreen:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importeScreen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importeScreen:Ljava/lang/String;

    .line 74
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->numeroMov:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->referencia:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->observacion:Ljava/lang/String;

    .line 77
    iput-boolean v2, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneCheques:Z

    .line 78
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->divisa:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta:Z

    .line 81
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ABONO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovSinFacturar;->getImporte()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importeScreen:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;)V
    .locals 1
    .param p1, "fecha"    # Ljava/util/Date;
    .param p2, "descripcion"    # Ljava/lang/String;
    .param p3, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneCheques:Z

    .line 28
    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta:Z

    .line 42
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->fecha:Ljava/util/Date;

    .line 43
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->descripcion:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "fecha"    # Ljava/util/Date;
    .param p2, "importe"    # Ljava/lang/String;
    .param p3, "descripcion"    # Ljava/lang/String;
    .param p4, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;
    .param p5, "numeroMov"    # Ljava/lang/String;
    .param p6, "referencia"    # Ljava/lang/String;
    .param p7, "observacion"    # Ljava/lang/String;
    .param p8, "tieneCheques"    # Z
    .param p9, "divisa"    # Ljava/lang/String;
    .param p10, "tieneBoleta"    # Z
    .param p11, "numeroPapeleta"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneCheques:Z

    .line 28
    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta:Z

    .line 89
    iput-object p11, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->numeroPapeleta:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->fecha:Ljava/util/Date;

    .line 91
    iput-object p3, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->descripcion:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importeOrigen:Ljava/lang/String;

    .line 94
    invoke-static {p2, p9, v1}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importeScreen:Ljava/lang/String;

    .line 96
    invoke-static {p2, v1}, Lcl/santander/santanderCL/utils/Utils;->convertirImporteADouble(Ljava/lang/String;I)D

    move-result-wide v0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importe:D

    .line 98
    iput-object p4, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    .line 100
    iput-object p5, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->numeroMov:Ljava/lang/String;

    .line 101
    iput-object p6, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->referencia:Ljava/lang/String;

    .line 102
    iput-object p7, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->observacion:Ljava/lang/String;

    .line 103
    iput-boolean p8, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneCheques:Z

    .line 104
    iput-object p9, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->divisa:Ljava/lang/String;

    .line 105
    iput-boolean p10, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta:Z

    .line 107
    return-void
.end method


# virtual methods
.method public getCiudad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->ciudad:Ljava/lang/String;

    return-object v0
.end method

.method public getComercio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->comercio:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcionRubro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->descripcionRubro:Ljava/lang/String;

    return-object v0
.end method

.method public getFecha()Ljava/util/Date;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->fecha:Ljava/util/Date;

    return-object v0
.end method

.method public getImporte()D
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importe:D

    return-wide v0
.end method

.method public getImporteScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->importeScreen:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroMov()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->numeroMov:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroPapeleta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->numeroPapeleta:Ljava/lang/String;

    return-object v0
.end method

.method public getObservacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->observacion:Ljava/lang/String;

    return-object v0
.end method

.method public getReferencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->referencia:Ljava/lang/String;

    return-object v0
.end method

.method public getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    return-object v0
.end method

.method public getTipobeneficiario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tipobeneficiario:Ljava/lang/String;

    return-object v0
.end method

.method public tieneBoleta()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneBoleta:Z

    return v0
.end method

.method public tieneCheques()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneCheques:Z

    return v0
.end method
