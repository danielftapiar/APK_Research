.class public Lcl/santander/santanderCL/data/response/ItemImperdible;
.super Ljava/lang/Object;
.source "ItemImperdible.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field descOferta:Ljava/lang/String;

.field direccion:Ljava/lang/String;

.field distancia:I

.field icono:Landroid/graphics/drawable/Drawable;

.field idCategoria:Ljava/lang/String;

.field idComercio:Ljava/lang/String;

.field lat:D

.field lng:D

.field nombre:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;DD)V
    .locals 11
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "lat"    # D
    .param p4, "lng"    # D

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_2

    .line 36
    const-string v0, "idCategoria"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->idCategoria:Ljava/lang/String;

    .line 37
    const-string v0, "idComercio"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->idComercio:Ljava/lang/String;

    .line 38
    const-string v0, "nombre"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->nombre:Ljava/lang/String;

    .line 39
    const-string v0, "direccion"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->direccion:Ljava/lang/String;

    .line 41
    const-string v0, "urlIcono"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->url:Ljava/lang/String;

    .line 42
    const-string v8, ""

    .line 45
    .local v8, "aux":Ljava/lang/String;
    :try_start_0
    const-string v0, "lat"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 47
    if-eqz v8, :cond_0

    .line 50
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lat:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    :cond_0
    :goto_0
    :try_start_2
    const-string v0, "lng"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 62
    if-eqz v8, :cond_1

    .line 64
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lng:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 77
    :cond_1
    :goto_1
    :try_start_4
    const-string v0, "descOferta"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->descOferta:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 79
    :try_start_5
    const-string v0, "distancia"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->distancia:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 98
    .end local v8    # "aux":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 51
    .restart local v8    # "aux":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 52
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v0, ","

    const-string v1, "."

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v8

    .line 54
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lat:D
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 55
    :catch_1
    move-exception v10

    .line 56
    .local v10, "ex1":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    :try_start_8
    iput-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lat:D
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 85
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v10    # "ex1":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 87
    .restart local v9    # "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idCategoria:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->idCategoria:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idComercio:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->idComercio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nombre:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->nombre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "direccion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->direccion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "posicion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PARSEO:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 65
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 66
    .restart local v9    # "ex":Ljava/lang/Exception;
    :try_start_9
    const-string v0, ","

    const-string v1, "."

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 67
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lng:D
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 69
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lng:D
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 70
    :catch_4
    move-exception v10

    .line 71
    .restart local v10    # "ex1":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    :try_start_b
    iput-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lng:D

    goto/16 :goto_1

    .line 80
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v10    # "ex1":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 81
    .restart local v9    # "ex":Ljava/lang/Exception;
    iget-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lat:D

    iget-wide v2, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lng:D

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcl/santander/santanderCL/utils/Utils;->getDistance(DDDD)I

    move-result v0

    iput v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->distancia:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2
.end method


# virtual methods
.method public getDescOferta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->descOferta:Ljava/lang/String;

    return-object v0
.end method

.method public getDireccion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->direccion:Ljava/lang/String;

    return-object v0
.end method

.method public getDistancia()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->distancia:I

    return v0
.end method

.method public getDistanciaScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->distancia:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->formatDistance(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcono()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->icono:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIdCategoria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->idCategoria:Ljava/lang/String;

    return-object v0
.end method

.method public getIdComercio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->idComercio:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->lng:D

    return-wide v0
.end method

.method public getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setIcono(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icono"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 115
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemImperdible;->icono:Landroid/graphics/drawable/Drawable;

    .line 116
    return-void
.end method
