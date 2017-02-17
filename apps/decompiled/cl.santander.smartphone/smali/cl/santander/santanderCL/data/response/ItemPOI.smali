.class public Lcl/santander/santanderCL/data/response/ItemPOI;
.super Ljava/lang/Object;
.source "ItemPOI.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

.field sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

.field tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;


# direct methods
.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemImperdible;)V
    .locals 1
    .param p1, "oferta"    # Lcl/santander/santanderCL/data/response/ItemImperdible;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    .line 30
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemSucursal;)V
    .locals 1
    .param p1, "sucursal"    # Lcl/santander/santanderCL/data/response/ItemSucursal;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getTipoServicio()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    .line 22
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    .line 25
    return-void
.end method


# virtual methods
.method public getDireccion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getDireccion()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getDireccion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDistancia()D
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getDistancia()I

    move-result v0

    int-to-double v0, v0

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getDistancia()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getDistanciaScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getDistanciaScreen()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getDistanciaScreen()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIcono()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLatitud()D
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getLat()D

    move-result-wide v0

    .line 112
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getLatitud()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getLongitud()D
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getLng()D

    move-result-wide v0

    .line 119
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getLongitud()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getNombre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getNombre()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->CAJERO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_1

    .line 38
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getNombreCajero()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getEstablecimiento()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    return-object v0
.end method

.method public getSucursal()Lcl/santander/santanderCL/data/response/ItemSucursal;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    return-object v0
.end method

.method public getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    return-object v0
.end method

.method public setIcono(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icono"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 58
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->oferta:Lcl/santander/santanderCL/data/response/ItemImperdible;

    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/response/ItemImperdible;->setIcono(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemPOI;->sucursal:Lcl/santander/santanderCL/data/response/ItemSucursal;

    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/response/ItemSucursal;->setIcono(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
