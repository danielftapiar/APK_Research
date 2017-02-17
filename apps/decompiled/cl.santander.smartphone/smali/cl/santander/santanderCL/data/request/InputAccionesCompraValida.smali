.class public Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputAccionesCompraValida.java"


# instance fields
.field banco:Ljava/lang/String;

.field bolsa:Ljava/lang/String;

.field cantidad:Ljava/lang/String;

.field comisionMinima:Ljava/lang/String;

.field comisionMonto:Ljava/lang/String;

.field correlativo:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field cuentaCustodia:Ljava/lang/String;

.field diasVigencia:Ljava/lang/String;

.field email:Ljava/lang/String;

.field formaPago:Ljava/lang/String;

.field instPago:Ljava/lang/String;

.field matrizDesafio:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field nAgente:Ljava/lang/String;

.field nemoTecnico:Ljava/lang/String;

.field numeroCelular:Ljava/lang/String;

.field numeroOrden:Ljava/lang/String;

.field observacion:Ljava/lang/String;

.field precio:Ljava/lang/String;

.field precioActual:Ljava/lang/String;

.field rut:Ljava/lang/String;

.field sucursal:Ljava/lang/String;

.field tipoOperacion:Ljava/lang/String;

.field tipoPrecio:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cuentaCustodia"    # Ljava/lang/String;
    .param p2, "nemoTecnico"    # Ljava/lang/String;
    .param p3, "cantidad"    # Ljava/lang/String;
    .param p4, "precio"    # Ljava/lang/String;
    .param p5, "monto"    # Ljava/lang/String;
    .param p6, "comisionMonto"    # Ljava/lang/String;
    .param p7, "precioActual"    # Ljava/lang/String;
    .param p8, "tipoPrecio"    # Ljava/lang/String;
    .param p9, "cuenta"    # Ljava/lang/String;
    .param p10, "diasVigencia"    # Ljava/lang/String;
    .param p11, "rut"    # Ljava/lang/String;
    .param p12, "matrizDesafio"    # Ljava/lang/String;
    .param p13, "numeroCelular"    # Ljava/lang/String;
    .param p14, "email"    # Ljava/lang/String;
    .param p15, "msgid"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 12
    const-string v1, "C"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->tipoOperacion:Ljava/lang/String;

    .line 13
    const-string v1, "0"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->numeroOrden:Ljava/lang/String;

    .line 14
    const-string v1, "0"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->correlativo:Ljava/lang/String;

    .line 22
    const-string v1, "3130"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->nAgente:Ljava/lang/String;

    .line 23
    const-string v1, "0932"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->sucursal:Ljava/lang/String;

    .line 24
    const-string v1, "CN2"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->formaPago:Ljava/lang/String;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->observacion:Ljava/lang/String;

    .line 26
    const-string v1, "S"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->comisionMinima:Ljava/lang/String;

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->bolsa:Ljava/lang/String;

    .line 29
    const-string v1, "AT"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->instPago:Ljava/lang/String;

    .line 30
    const-string v1, "SANTANDER"

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->banco:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cuentaCustodia:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->nemoTecnico:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cantidad:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->precio:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->monto:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->comisionMonto:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->precioActual:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->tipoPrecio:Ljava/lang/String;

    .line 59
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cuenta:Ljava/lang/String;

    .line 60
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->diasVigencia:Ljava/lang/String;

    .line 61
    iput-object p11, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->rut:Ljava/lang/String;

    .line 62
    iput-object p12, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->matrizDesafio:Ljava/lang/String;

    .line 63
    iput-object p13, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->numeroCelular:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p14

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->email:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p15

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->msgid:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public getBolsa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->bolsa:Ljava/lang/String;

    return-object v0
.end method

.method public getCantidad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cantidad:Ljava/lang/String;

    return-object v0
.end method

.method public getComisionMinima()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->comisionMinima:Ljava/lang/String;

    return-object v0
.end method

.method public getComisionMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->comisionMonto:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelativo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->correlativo:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCustodia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cuentaCustodia:Ljava/lang/String;

    return-object v0
.end method

.method public getDiasVigencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->diasVigencia:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFormaPago()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->formaPago:Ljava/lang/String;

    return-object v0
.end method

.method public getInstPago()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->instPago:Ljava/lang/String;

    return-object v0
.end method

.method public getMatrizDesafio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->matrizDesafio:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNemoTecnico()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->nemoTecnico:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroCelular()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->numeroCelular:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroOrden()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->numeroOrden:Ljava/lang/String;

    return-object v0
.end method

.method public getObservacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->observacion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->precio:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecioActual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->precioActual:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->tipoOperacion:Ljava/lang/String;

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->numeroOrden:Ljava/lang/String;

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->correlativo:Ljava/lang/String;

    goto :goto_0

    .line 78
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cuentaCustodia:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->nemoTecnico:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cantidad:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->precio:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->monto:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->comisionMonto:Ljava/lang/String;

    goto :goto_0

    .line 91
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->precioActual:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->nAgente:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_b
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->sucursal:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_c
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->formaPago:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_d
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->observacion:Ljava/lang/String;

    goto :goto_0

    .line 101
    :pswitch_e
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->comisionMinima:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_f
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->bolsa:Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_10
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->tipoPrecio:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_11
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->instPago:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_12
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->banco:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_13
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cuenta:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_14
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->diasVigencia:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_15
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->rut:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_16
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->matrizDesafio:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_17
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->numeroCelular:Ljava/lang/String;

    goto :goto_0

    .line 121
    :pswitch_18
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->email:Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_19
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x1a

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 141
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 142
    const-string v0, "TIPO_OPERACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 145
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 146
    const-string v0, "NUMERO_ORDEN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 149
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 150
    const-string v0, "CORRELATIVO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 153
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 154
    const-string v0, "CUENTA_CUSTODIA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 157
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 158
    const-string v0, "NEMOTECNICO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 161
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 162
    const-string v0, "CANTIDAD"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 165
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 166
    const-string v0, "PRECIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 169
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 170
    const-string v0, "MONTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 173
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 174
    const-string v0, "COMISION_MONTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 177
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 178
    const-string v0, "PRECIO_ACTUAL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 181
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 182
    const-string v0, "NAGENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_b
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 186
    const-string v0, "SUCURSAL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 189
    :pswitch_c
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 190
    const-string v0, "FORMA_PAGO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 193
    :pswitch_d
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 194
    const-string v0, "OBSERVACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 197
    :pswitch_e
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 198
    const-string v0, "COMISION_MIN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 201
    :pswitch_f
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 202
    const-string v0, "BOLSA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 205
    :pswitch_10
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 206
    const-string v0, "TIPO_PRECIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 209
    :pswitch_11
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 210
    const-string v0, "INSTPAGO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 213
    :pswitch_12
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 214
    const-string v0, "BANCO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 217
    :pswitch_13
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 218
    const-string v0, "CUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 221
    :pswitch_14
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 222
    const-string v0, "DIAS_VIGENCIA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    :pswitch_15
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 226
    const-string v0, "RUT_CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 229
    :pswitch_16
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 230
    const-string v0, "MATRIZDESAFIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 233
    :pswitch_17
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 234
    const-string v0, "NUMCELULAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 237
    :pswitch_18
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 238
    const-string v0, "EMAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 241
    :pswitch_19
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 242
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->rut:Ljava/lang/String;

    return-object v0
.end method

.method public getSucursal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->sucursal:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoOperacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->tipoOperacion:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoPrecio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->tipoPrecio:Ljava/lang/String;

    return-object v0
.end method

.method public getnAgente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->nAgente:Ljava/lang/String;

    return-object v0
.end method

.method public setBanco(Ljava/lang/String;)V
    .locals 0
    .param p1, "banco"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->banco:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setBolsa(Ljava/lang/String;)V
    .locals 0
    .param p1, "bolsa"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->bolsa:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setCantidad(Ljava/lang/String;)V
    .locals 0
    .param p1, "cantidad"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cantidad:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setComisionMinima(Ljava/lang/String;)V
    .locals 0
    .param p1, "comisionMinima"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->comisionMinima:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setComisionMonto(Ljava/lang/String;)V
    .locals 0
    .param p1, "comisionMonto"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->comisionMonto:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setCorrelativo(Ljava/lang/String;)V
    .locals 0
    .param p1, "correlativo"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->correlativo:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cuenta:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setCuentaCustodia(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuentaCustodia"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->cuentaCustodia:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setDiasVigencia(Ljava/lang/String;)V
    .locals 0
    .param p1, "diasVigencia"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->diasVigencia:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->email:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setFormaPago(Ljava/lang/String;)V
    .locals 0
    .param p1, "formaPago"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->formaPago:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setInstPago(Ljava/lang/String;)V
    .locals 0
    .param p1, "instPago"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->instPago:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setMatrizDesafio(Ljava/lang/String;)V
    .locals 0
    .param p1, "matrizDesafio"    # Ljava/lang/String;

    .prologue
    .line 431
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->matrizDesafio:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setMonto(Ljava/lang/String;)V
    .locals 0
    .param p1, "monto"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->monto:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->msgid:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setNemoTecnico(Ljava/lang/String;)V
    .locals 0
    .param p1, "nemoTecnico"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->nemoTecnico:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setNumeroCelular(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroCelular"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->numeroCelular:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setNumeroOrden(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroOrden"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->numeroOrden:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setObservacion(Ljava/lang/String;)V
    .locals 0
    .param p1, "observacion"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->observacion:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setPrecio(Ljava/lang/String;)V
    .locals 0
    .param p1, "precio"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->precio:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setPrecioActual(Ljava/lang/String;)V
    .locals 0
    .param p1, "precioActual"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->precioActual:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 423
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->rut:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setSucursal(Ljava/lang/String;)V
    .locals 0
    .param p1, "sucursal"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->sucursal:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setTipoOperacion(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoOperacion"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->tipoOperacion:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setTipoPrecio(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoPrecio"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->tipoPrecio:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setnAgente(Ljava/lang/String;)V
    .locals 0
    .param p1, "nAgente"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraValida;->nAgente:Ljava/lang/String;

    .line 336
    return-void
.end method
