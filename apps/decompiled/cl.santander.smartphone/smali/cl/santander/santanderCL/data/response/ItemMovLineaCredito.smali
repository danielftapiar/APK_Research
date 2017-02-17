.class public Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;
.super Ljava/lang/Object;
.source "ItemMovLineaCredito.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field descripcion:Ljava/lang/String;

.field fecha:Ljava/lang/String;

.field importe:Ljava/lang/String;

.field numeroMov:Ljava/lang/String;

.field referencia:Ljava/lang/String;

.field tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    const-string v1, "IMPORTE-R-M"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->importe:Ljava/lang/String;

    .line 35
    const-string v1, "FECHVAL-R-M"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->fecha:Ljava/lang/String;

    .line 36
    const-string v1, "CODAMP-R-M"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->descripcion:Ljava/lang/String;

    .line 37
    const-string v1, "CARGABO-R-M"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "strTipo":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 41
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->CARGO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    .line 51
    :goto_0
    const-string v1, "NUMMOV-R-M"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->numeroMov:Ljava/lang/String;

    .line 52
    const-string v1, "CODIGO-R-M"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->referencia:Ljava/lang/String;

    .line 55
    .end local v0    # "strTipo":Ljava/lang/String;
    :cond_0
    return-void

    .line 44
    .restart local v0    # "strTipo":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ABONO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    goto :goto_0

    .line 48
    :cond_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    goto :goto_0
.end method


# virtual methods
.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getFecha()Ljava/util/Date;
    .locals 5

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "d":Ljava/util/Date;
    :try_start_0
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->fecha:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 81
    const-string v3, "yyyy-MM-dd"

    .line 80
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "curFormater":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->fecha:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    .end local v0    # "curFormater":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ITEM LINEA CREDITO VALOR DE FECHA: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getImporte()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->importe:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroMovimiento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->numeroMov:Ljava/lang/String;

    return-object v0
.end method

.method public getReferencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->referencia:Ljava/lang/String;

    return-object v0
.end method

.method public getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemMovLineaCredito;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    return-object v0
.end method
