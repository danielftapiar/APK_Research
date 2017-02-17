.class public Lcl/santander/santanderCL/data/response/ItemAccion;
.super Ljava/lang/Object;
.source "ItemAccion.java"


# instance fields
.field descripcion:Ljava/lang/String;

.field numeroAcciones:Ljava/lang/String;

.field producto:Ljava/lang/String;

.field valorMercado:Ljava/lang/String;


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
    const-string v0, "Acciones"

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccion;->producto:Ljava/lang/String;

    .line 21
    const-string v0, "CARTERA_CUENTA_NEMO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccion;->descripcion:Ljava/lang/String;

    .line 22
    const-string v0, "CARTERA_CUENTA_CANTIDAD"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccion;->numeroAcciones:Ljava/lang/String;

    .line 23
    const-string v0, "CARTERA_VALORIZADA_MERCADO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccion;->valorMercado:Ljava/lang/String;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccion;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroAcciones()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccion;->numeroAcciones:Ljava/lang/String;

    return-object v0
.end method

.method public getProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccion;->producto:Ljava/lang/String;

    return-object v0
.end method

.method public getValorMercado()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccion;->valorMercado:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
