.class public Lcl/santander/santanderCL/data/response/ItemAPV;
.super Ljava/lang/Object;
.source "ItemAPV.java"


# instance fields
.field descFondo:Ljava/lang/String;

.field fechaValorCuotas:Ljava/lang/String;

.field saldoCuotas:Ljava/lang/String;

.field saldoPesos:Ljava/lang/String;

.field tipoCuenta:Ljava/lang/String;

.field valorCuotas:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_0

    .line 22
    const-string v0, "DESCFONDO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->descFondo:Ljava/lang/String;

    .line 23
    const-string v0, "SALDOPESOS"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->saldoPesos:Ljava/lang/String;

    .line 24
    const-string v0, "SALDOCUOTAS"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->saldoCuotas:Ljava/lang/String;

    .line 25
    const-string v0, "VALORCUOTAS"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->valorCuotas:Ljava/lang/String;

    .line 26
    const-string v0, "FECHAVALORCUOTA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->fechaValorCuotas:Ljava/lang/String;

    .line 27
    const-string v0, "TIPOCUENTA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->tipoCuenta:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public getDescFondo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->descFondo:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaValorCuotas()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->fechaValorCuotas:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoCuotas()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->saldoCuotas:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoPesos()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->saldoPesos:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTipoCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->tipoCuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getValorCuotas()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAPV;->valorCuotas:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
