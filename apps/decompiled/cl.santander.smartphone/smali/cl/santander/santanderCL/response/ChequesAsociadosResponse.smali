.class public Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
.super Ljava/lang/Object;
.source "ChequesAsociadosResponse.java"


# instance fields
.field cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

.field cuentaDeposito:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field fecha:Ljava/lang/String;

.field info:Lcl/santander/santanderCL/data/response/Info;

.field monto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheques()Lcl/santander/santanderCL/data/MatrizChequesAsociados;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    return-object v0
.end method

.method public getCuentaDeposito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->cuentaDeposito:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaDepositoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->cuentaDeposito:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFecha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->fecha:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->fecha:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->fecha:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->fecha:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd"

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getMontoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->monto:Ljava/lang/String;

    iget-object v1, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->divisa:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "divisa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 34
    iput-object p2, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->divisa:Ljava/lang/String;

    .line 35
    if-eqz p1, :cond_2

    .line 36
    const-string v2, "OUTPUT"

    invoke-virtual {p1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "root":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 40
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "INFO"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 42
    new-instance v2, Lcl/santander/santanderCL/data/response/Info;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v2, v1

    .line 47
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    const-string v3, "ESCALARES"

    invoke-virtual {v2, v3}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 51
    const-string v3, "CUENTADEPOS"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->cuentaDeposito:Ljava/lang/String;

    .line 52
    const-string v3, "MONTODOCUMENTO"

    move-object v2, v0

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-static {v3, v2}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->monto:Ljava/lang/String;

    .line 53
    const-string v2, "FECHAMOVIMIENTO"

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-static {v2, v0}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->fecha:Ljava/lang/String;

    .line 56
    :cond_1
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "root":Ljava/lang/Object;
    const-string v2, "MATRICES"

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .restart local v0    # "aux":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 58
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    const-string v2, "MATRIZCARTOLA"

    invoke-virtual {v0, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .restart local v0    # "aux":Ljava/lang/Object;
    new-instance v2, Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-direct {v2, v0}, Lcl/santander/santanderCL/data/MatrizChequesAsociados;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v2, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    .line 66
    :cond_2
    :goto_0
    return-void

    .line 61
    .restart local v0    # "aux":Ljava/lang/Object;
    :cond_3
    new-instance v2, Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    invoke-direct {v2}, Lcl/santander/santanderCL/data/MatrizChequesAsociados;-><init>()V

    iput-object v2, p0, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    goto :goto_0
.end method
