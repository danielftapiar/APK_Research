.class public Lcl/santander/santanderCL/data/response/ItemAccionCompra;
.super Ljava/lang/Object;
.source "ItemAccionCompra.java"


# instance fields
.field nombreAccion:Ljava/lang/String;

.field precioActual:Ljava/lang/String;

.field precioMaximo:Ljava/lang/String;

.field precioMinimo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    .line 19
    const-string v0, "ACCION"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->nombreAccion:Ljava/lang/String;

    .line 20
    const-string v0, "PRECIO_ACTUAL"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioActual:Ljava/lang/String;

    .line 21
    const-string v0, "PRECIO_MIN"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioMinimo:Ljava/lang/String;

    .line 22
    const-string v0, "PRECIO_MAX"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioMaximo:Ljava/lang/String;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getNombreAccion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->nombreAccion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecioActual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioActual:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecioActualScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioActual:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecioMaximo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioMaximo:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecioMaximoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioMaximo:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecioMinimo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecioMinimoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->precioMinimo:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
