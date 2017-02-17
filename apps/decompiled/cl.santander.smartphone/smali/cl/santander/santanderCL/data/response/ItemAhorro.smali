.class public Lcl/santander/santanderCL/data/response/ItemAhorro;
.super Ljava/lang/Object;
.source "ItemAhorro.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field abono:Ljava/lang/String;

.field cargo:Ljava/lang/String;

.field descripcion:Ljava/lang/String;

.field fecha:Ljava/lang/String;

.field saldoCuenta:Ljava/lang/String;

.field tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 30
    const-string v0, "PEFECMOV-MR1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->fecha:Ljava/lang/String;

    .line 31
    const-string v0, "PEDESCRI-MR1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->descripcion:Ljava/lang/String;

    .line 32
    const-string v0, "PEMOVCAR-MR1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->cargo:Ljava/lang/String;

    .line 33
    const-string v0, "PEMOVABO-MR1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->abono:Ljava/lang/String;

    .line 34
    const-string v0, "PESALCON-MR1"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->saldoCuenta:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->cargo:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->convertirImporteADouble(Ljava/lang/String;I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 38
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->ABONO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->CARGO:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    goto :goto_0
.end method


# virtual methods
.method public getAbono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->abono:Ljava/lang/String;

    return-object v0
.end method

.method public getCargo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->cargo:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getFecha()Ljava/util/Date;
    .locals 5

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "d":Ljava/util/Date;
    :try_start_0
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->fecha:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 54
    const-string v3, "yyyy-MM-dd"

    .line 53
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "curFormater":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->fecha:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    .end local v0    # "curFormater":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ITEM AHORRO VALOR DE FECHA: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSaldoCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->saldoCuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoMovimiento()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAhorro;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    return-object v0
.end method
