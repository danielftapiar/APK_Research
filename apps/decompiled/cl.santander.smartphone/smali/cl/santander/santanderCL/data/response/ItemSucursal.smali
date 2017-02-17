.class public Lcl/santander/santanderCL/data/response/ItemSucursal;
.super Ljava/lang/Object;
.source "ItemSucursal.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field direccion:Ljava/lang/String;

.field distancia:D

.field establecimiento:Ljava/lang/String;

.field horario:[Ljava/lang/String;

.field icono:Landroid/graphics/drawable/Drawable;

.field latitud:D

.field longitud:D

.field nombreCajero:Ljava/lang/String;

.field telefono:Ljava/lang/String;

.field tipoServicio:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_3

    .line 38
    const-string v2, "NOMBRE-CAJERO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->nombreCajero:Ljava/lang/String;

    .line 39
    const-string v2, "DIRECCION"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->direccion:Ljava/lang/String;

    .line 40
    const-string v2, "TIPO-SERVICIO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "aux":Ljava/lang/String;
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->tipoServicio:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    .line 42
    if-eqz v0, :cond_0

    .line 44
    const-string v2, "CAJ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->CAJERO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->tipoServicio:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    .line 52
    :cond_0
    :goto_0
    const-string v2, "DISTANCIA"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->distancia:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    :goto_1
    :try_start_1
    const-string v2, "VALOR-LONGITUD"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->longitud:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 69
    :goto_2
    :try_start_2
    const-string v2, "VALOR-LATITUD"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->latitud:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    :goto_3
    const-string v2, "ESTABLECIMIENTO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->establecimiento:Ljava/lang/String;

    .line 76
    const-string v2, "GLOSA-HORARIO"

    invoke-static {v2, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->horario:[Ljava/lang/String;

    .line 81
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PREFIJO-TELEFONICO"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NUM-TEL-AGENTE-MOVIL"

    invoke-static {v3, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->telefono:Ljava/lang/String;

    .line 85
    .end local v0    # "aux":Ljava/lang/String;
    :cond_3
    return-void

    .line 46
    .restart local v0    # "aux":Ljava/lang/String;
    :cond_4
    const-string v2, "SUC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->SUCURSAL:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    iput-object v2, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->tipoServicio:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DISTANCIA:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 70
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_3

    .line 65
    :catch_2
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public getDireccion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->direccion:Ljava/lang/String;

    return-object v0
.end method

.method public getDistancia()D
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->distancia:D

    return-wide v0
.end method

.method public getDistanciaScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->distancia:D

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->formatDistance(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEstablecimiento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->establecimiento:Ljava/lang/String;

    return-object v0
.end method

.method public getHorario()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->horario:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->horario:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcono()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->icono:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLatitud()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->latitud:D

    return-wide v0
.end method

.method public getLongitud()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->longitud:D

    return-wide v0
.end method

.method public getNombreCajero()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->nombreCajero:Ljava/lang/String;

    return-object v0
.end method

.method public getTelefono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoServicio()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->tipoServicio:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    return-object v0
.end method

.method public setIcono(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icono"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 94
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->icono:Landroid/graphics/drawable/Drawable;

    .line 95
    return-void
.end method

.method public setLatitud(D)V
    .locals 0
    .param p1, "latitud"    # D

    .prologue
    .line 102
    iput-wide p1, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->latitud:D

    .line 103
    return-void
.end method

.method public setLongitud(D)V
    .locals 0
    .param p1, "longitud"    # D

    .prologue
    .line 110
    iput-wide p1, p0, Lcl/santander/santanderCL/data/response/ItemSucursal;->longitud:D

    .line 111
    return-void
.end method
