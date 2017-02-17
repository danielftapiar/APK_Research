.class public Lcl/santander/santanderCL/data/response/ItemCartera;
.super Ljava/lang/Object;
.source "ItemCartera.java"


# instance fields
.field carteraValorizadaMercado:Ljava/lang/String;

.field cuentaCantidad:Ljava/lang/String;

.field cuentaNemo:Ljava/lang/String;

.field precioMercado:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 20
    const-string v0, "CARTERA_CUENTA_NEMO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->cuentaNemo:Ljava/lang/String;

    .line 21
    const-string v0, "PRECIO_MERCADO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->precioMercado:Ljava/lang/String;

    .line 22
    const-string v0, "CARTERA_CUENTA_CANTIDAD"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->cuentaCantidad:Ljava/lang/String;

    .line 23
    const-string v0, "CARTERA_VALORIZADA_MERCADO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->carteraValorizadaMercado:Ljava/lang/String;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public getCarteraValorizadaMercado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->carteraValorizadaMercado:Ljava/lang/String;

    return-object v0
.end method

.method public getCarteraValorizadaMercadoScreen()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    :try_start_0
    iget-object v2, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->carteraValorizadaMercado:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "numeroDecimales":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->carteraValorizadaMercado:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    sub-int v1, v2, v3

    .line 82
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v3}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->carteraValorizadaMercado:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 84
    .end local v1    # "numeroDecimales":I
    :goto_1
    return-object v2

    .line 79
    .restart local v1    # "numeroDecimales":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    .end local v1    # "numeroDecimales":I
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->carteraValorizadaMercado:Ljava/lang/String;

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getCuentaCantidad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->cuentaCantidad:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCantidadScreen()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->cuentaCantidad:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCuentaNemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->cuentaNemo:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaNemoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->cuentaNemo:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecioMercado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->precioMercado:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecioMercadoScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->precioMercado:Ljava/lang/String;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCartera;->precioMercado:Ljava/lang/String;

    goto :goto_0
.end method
