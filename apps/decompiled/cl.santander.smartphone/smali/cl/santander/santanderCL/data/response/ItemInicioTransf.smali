.class public Lcl/santander/santanderCL/data/response/ItemInicioTransf;
.super Ljava/lang/Object;
.source "ItemInicioTransf.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field montoDisponible:Ljava/lang/String;

.field nombreProducto:Ljava/lang/String;

.field numeroContrato:Ljava/lang/String;

.field numeroPan:Ljava/lang/String;

.field producto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    const-string v0, "PRODUCTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->producto:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->producto:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->getProductoCuentaCliente(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->nombreProducto:Ljava/lang/String;

    .line 27
    const-string v0, "NUMERO-CONTRATO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->numeroContrato:Ljava/lang/String;

    .line 28
    const-string v0, "MONTO-DISPONIBLE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->montoDisponible:Ljava/lang/String;

    .line 30
    const-string v0, "NUMERO-PAM"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->numeroPan:Ljava/lang/String;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public getMontoDisponible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->montoDisponible:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoDisponibleScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->montoDisponible:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNombreProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->nombreProducto:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroContrato()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->numeroContrato:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroPan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->numeroPan:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroPanScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->numeroPan:Ljava/lang/String;

    const-string v2, "L"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 59
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
    .line 36
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemInicioTransf;->producto:Ljava/lang/String;

    return-object v0
.end method
