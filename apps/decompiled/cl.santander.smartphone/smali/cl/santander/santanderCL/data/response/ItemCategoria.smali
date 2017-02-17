.class public Lcl/santander/santanderCL/data/response/ItemCategoria;
.super Ljava/lang/Object;
.source "ItemCategoria.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field icono:Landroid/graphics/drawable/Drawable;

.field idCategoria:Ljava/lang/String;

.field nombre:Ljava/lang/String;

.field urlIcono:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "idCategoria"    # Ljava/lang/String;
    .param p2, "nombre"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->idCategoria:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->nombre:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 1
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    .line 28
    const-string v0, "idCat"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->idCategoria:Ljava/lang/String;

    .line 29
    const-string v0, "nombre"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->nombre:Ljava/lang/String;

    .line 30
    const-string v0, "urlIcono"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->urlIcono:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getIcono()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->icono:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIdCategoria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->idCategoria:Ljava/lang/String;

    return-object v0
.end method

.method public getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlIcono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->urlIcono:Ljava/lang/String;

    return-object v0
.end method

.method public setIcono(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icono"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemCategoria;->icono:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method
