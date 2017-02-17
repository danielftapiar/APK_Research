.class public Lcl/santander/santanderCL/data/response/ItemCaptacion;
.super Ljava/lang/Object;
.source "ItemCaptacion.java"


# instance fields
.field cupo:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field montoDisponible:Ljava/lang/String;

.field numeroContrato:Ljava/lang/String;

.field numeroPan:Ljava/lang/String;

.field producto:Ljava/lang/String;


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
    const-string v0, "NUMERO-CONTRATO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->numeroContrato:Ljava/lang/String;

    .line 21
    const-string v0, "PRODUCTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->producto:Ljava/lang/String;

    .line 22
    const-string v0, "MONTO-DISPONIBLE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->montoDisponible:Ljava/lang/String;

    .line 23
    const-string v0, "NUMERO-PAM"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->numeroPan:Ljava/lang/String;

    .line 24
    const-string v0, "CUPO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->cupo:Ljava/lang/String;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public getCupo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->cupo:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoDisponible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->montoDisponible:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoDisponibleScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->montoDisponible:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->montoDisponible:Ljava/lang/String;

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->divisa:Ljava/lang/String;

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public getNumeroContrato()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->numeroContrato:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroContratoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->numeroContrato:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumeroPan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->numeroPan:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroPanScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->numeroPan:Ljava/lang/String;

    const-string v2, "L"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "Aux":Ljava/lang/String;
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->producto:Ljava/lang/String;

    return-object v0
.end method

.method public getProductoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->producto:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->getProductoCuentaCliente(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public montoDisponible()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->montoDisponible:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDivisa(Ljava/lang/String;)V
    .locals 0
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemCaptacion;->divisa:Ljava/lang/String;

    .line 59
    return-void
.end method
