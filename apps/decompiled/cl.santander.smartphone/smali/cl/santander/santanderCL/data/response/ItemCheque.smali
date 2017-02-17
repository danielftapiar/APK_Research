.class public Lcl/santander/santanderCL/data/response/ItemCheque;
.super Ljava/lang/Object;
.source "ItemCheque.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field cheque:Ljava/lang/String;

.field codigoEmpresa:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field descripcionEmpresa:Ljava/lang/String;

.field imagenBack:Landroid/graphics/Bitmap;

.field imagenFront:Landroid/graphics/Bitmap;

.field importe:Ljava/lang/String;

.field pagado:Z

.field sucursal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->pagado:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->pagado:Z

    .line 32
    if-eqz p1, :cond_1

    .line 37
    const-string v1, "CHEQUE"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->cheque:Ljava/lang/String;

    .line 38
    const-string v1, "ESTADO"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "aux":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->pagado:Z

    .line 41
    :cond_0
    const-string v1, "CODIGOSUC"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->sucursal:Ljava/lang/String;

    .line 42
    const-string v1, "CODIGOEMPCANJE"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->codigoEmpresa:Ljava/lang/String;

    .line 43
    const-string v1, "GLOSAEMPCANJE"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->descripcionEmpresa:Ljava/lang/String;

    .line 45
    const-string v1, "IMPORTE"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->importe:Ljava/lang/String;

    .line 47
    const-string v1, "IMGNBS64INV"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->translateBase64toImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->imagenFront:Landroid/graphics/Bitmap;

    .line 48
    const-string v1, "IMGNBS64REV"

    invoke-static {v1, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->translateBase64toImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->imagenBack:Landroid/graphics/Bitmap;

    .line 51
    .end local v0    # "aux":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public estaPagado()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->pagado:Z

    return v0
.end method

.method public getCheque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->cheque:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoEmpresa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->codigoEmpresa:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getDescripcionEmpresa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->descripcionEmpresa:Ljava/lang/String;

    return-object v0
.end method

.method public getImagenBack()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->imagenBack:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImagenFront()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->imagenFront:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImporte()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->importe:Ljava/lang/String;

    return-object v0
.end method

.method public getSucursal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->sucursal:Ljava/lang/String;

    return-object v0
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->cuenta:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setImporte(Ljava/lang/String;)V
    .locals 0
    .param p1, "importe"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemCheque;->importe:Ljava/lang/String;

    .line 83
    return-void
.end method
