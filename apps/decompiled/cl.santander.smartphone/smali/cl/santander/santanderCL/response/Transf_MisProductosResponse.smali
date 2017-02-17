.class public Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
.super Ljava/lang/Object;
.source "Transf_MisProductosResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/response/ResponseBase;


# instance fields
.field info:Lcl/santander/santanderCL/data/response/Info;

.field montoTransferido:Ljava/lang/String;

.field numCuentaDestino:Ljava/lang/String;

.field numCuentaOrigen:Ljava/lang/String;

.field saldoCuentaDestino:Ljava/lang/String;

.field saldoCuentaOrigen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMontoTransferido()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->montoTransferido:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoTransferidoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->montoTransferido:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumCuentaDestino()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->numCuentaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public getNumCuentaDestinoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->numCuentaDestino:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumCuentaOrigen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->numCuentaOrigen:Ljava/lang/String;

    return-object v0
.end method

.method public getNumCuentaOrigenScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->numCuentaOrigen:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoCuentaDestino()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->saldoCuentaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoCuentaDestinoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->saldoCuentaDestino:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoCuentaOrigen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->saldoCuentaOrigen:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoCuentaOrigenScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->saldoCuentaOrigen:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 23
    if-eqz p1, :cond_1

    .line 24
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 28
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 30
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    .line 33
    :cond_0
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "ESCALARES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .restart local v0    # "data":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 35
    const-string v3, "NUMCUENTAORIGEN"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->numCuentaOrigen:Ljava/lang/String;

    .line 36
    const-string v3, "SLDCUENTAORIGEN"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->saldoCuentaOrigen:Ljava/lang/String;

    .line 38
    const-string v3, "NUMCUENTADESTINO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->numCuentaDestino:Ljava/lang/String;

    .line 39
    const-string v3, "SLDCUENTADESTINO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->saldoCuentaDestino:Ljava/lang/String;

    .line 41
    const-string v2, "MONTOTRANS"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->montoTransferido:Ljava/lang/String;

    .line 47
    :cond_1
    return-void
.end method
