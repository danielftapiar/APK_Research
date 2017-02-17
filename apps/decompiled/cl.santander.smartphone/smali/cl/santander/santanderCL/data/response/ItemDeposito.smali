.class public Lcl/santander/santanderCL/data/response/ItemDeposito;
.super Ljava/lang/Object;
.source "ItemDeposito.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field descripcion:Ljava/lang/String;

.field fechoper:Ljava/lang/String;

.field importe:Ljava/lang/String;

.field indcargabo:Ljava/lang/String;

.field numPapeleta:Ljava/lang/String;

.field numeroMov:Ljava/lang/String;

.field observa:Ljava/lang/String;

.field referencia:Ljava/lang/String;

.field tieneBoleta:Z

.field tieneCheques:Z


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 7
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v5, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneBoleta:Z

    .line 24
    iput-boolean v5, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneCheques:Z

    .line 28
    if-eqz p1, :cond_1

    .line 30
    const-string v4, "IMPORTE"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->importe:Ljava/lang/String;

    .line 31
    const-string v4, "FECHCONTA"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->fechoper:Ljava/lang/String;

    .line 32
    const-string v4, "INDCARGABO"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->indcargabo:Ljava/lang/String;

    .line 33
    const-string v4, "OBSERVA"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->observa:Ljava/lang/String;

    .line 35
    const-string v4, "NUMMOV"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->numeroMov:Ljava/lang/String;

    .line 36
    const-string v4, "CODIGOAMP"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->descripcion:Ljava/lang/String;

    .line 37
    const-string v4, "REFER-MVTO"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->referencia:Ljava/lang/String;

    .line 39
    const-string v4, "NUM-PAPELETA"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->numPapeleta:Ljava/lang/String;

    .line 41
    const-string v4, "CHEQUE"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "cheque":Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    const-string v4, "000000000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    iput-boolean v6, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneCheques:Z

    .line 48
    :cond_0
    :try_start_0
    const-string v4, "CODIGO"

    invoke-static {v4, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "boleta":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 51
    .local v2, "codigoBoleta":I
    const/16 v4, 0x1c3

    if-lt v2, v4, :cond_2

    const/16 v4, 0x1c5

    if-gt v2, v4, :cond_2

    .line 52
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneBoleta:Z

    .line 53
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneCheques:Z

    .line 67
    .end local v0    # "boleta":Ljava/lang/String;
    .end local v1    # "cheque":Ljava/lang/String;
    .end local v2    # "codigoBoleta":I
    :cond_1
    :goto_0
    return-void

    .line 54
    .restart local v0    # "boleta":Ljava/lang/String;
    .restart local v1    # "cheque":Ljava/lang/String;
    .restart local v2    # "codigoBoleta":I
    :cond_2
    const/16 v4, 0x1f9

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1fe

    if-eq v2, v4, :cond_3

    .line 55
    const/16 v4, 0x258

    if-eq v2, v4, :cond_3

    const/16 v4, 0x37b

    if-ne v2, v4, :cond_1

    .line 56
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneCheques:Z

    .line 57
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneBoleta:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "boleta":Ljava/lang/String;
    .end local v2    # "codigoBoleta":I
    :catch_0
    move-exception v3

    .line 61
    .local v3, "ex":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneBoleta:Z

    goto :goto_0
.end method


# virtual methods
.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaOperacion()Ljava/util/Date;
    .locals 5

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "d":Ljava/util/Date;
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 92
    const-string v3, "yyyyMMdd"

    .line 91
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "curFormater":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->fechoper:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    .end local v0    # "curFormater":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VALOR DE FECHA: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFechaOperacionCustomScreen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "formato"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->fechoper:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->fechoper:Ljava/lang/String;

    const-string v1, "yyyyMMdd"

    invoke-static {v0, v1, p1}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFechaOperacionScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->fechoper:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->fechoper:Ljava/lang/String;

    const-string v1, "yyyyMMdd"

    const-string v2, "mm-yyyy"

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImporte()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->importe:Ljava/lang/String;

    return-object v0
.end method

.method public getImporteScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->importe:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumPapeleta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->numPapeleta:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroMovimiento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->numeroMov:Ljava/lang/String;

    return-object v0
.end method

.method public getObservaciones()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->observa:Ljava/lang/String;

    return-object v0
.end method

.method public getReferencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->referencia:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoMovimiento()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->indcargabo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->indcargabo:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->indcargabo:Ljava/lang/String;

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->CARGO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    goto :goto_0

    .line 132
    :cond_2
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ABONO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    goto :goto_0
.end method

.method public tieneBoleta()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneBoleta:Z

    return v0
.end method

.method public tieneCheques()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemDeposito;->tieneCheques:Z

    return v0
.end method
