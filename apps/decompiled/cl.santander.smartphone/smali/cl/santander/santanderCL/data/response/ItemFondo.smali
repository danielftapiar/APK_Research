.class public Lcl/santander/santanderCL/data/response/ItemFondo;
.super Ljava/lang/Object;
.source "ItemFondo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field glosaFondo:Ljava/lang/String;

.field moneda:Ljava/lang/String;

.field saldo:Ljava/lang/String;

.field simboloMoneda:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_1

    .line 23
    const-string v1, "GLOSAFONDO"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->glosaFondo:Ljava/lang/String;

    .line 24
    const-string v1, "MONEDA"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    .line 29
    const-string v1, "Pesos"

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->moneda:Ljava/lang/String;

    .line 40
    :cond_0
    :goto_0
    :try_start_0
    const-string v1, "SALDO"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;

    iget-object v2, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_1
    :goto_1
    return-void

    .line 30
    :cond_2
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    const-string v2, "DO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    const-string v1, "D\u00f3lares"

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->moneda:Ljava/lang/String;

    .line 32
    const-string v1, "USD"

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_3
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    const-string v2, "EU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "Euros"

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->moneda:Ljava/lang/String;

    .line 35
    const-string v1, "EUR"

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->simboloMoneda:Ljava/lang/String;

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "-"

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getGlosaFondo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->glosaFondo:Ljava/lang/String;

    return-object v0
.end method

.method public getMoneda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->moneda:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemFondo;->saldo:Ljava/lang/String;

    return-object v0
.end method
