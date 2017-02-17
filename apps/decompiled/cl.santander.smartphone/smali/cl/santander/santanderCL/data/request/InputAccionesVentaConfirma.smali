.class public Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputAccionesVentaConfirma.java"


# instance fields
.field banco:Ljava/lang/String;

.field bolsa:Ljava/lang/String;

.field cantidad:Ljava/lang/String;

.field comisionMin:Ljava/lang/String;

.field correlativo:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field cuentaCustodia:Ljava/lang/String;

.field diasVigencia:Ljava/lang/String;

.field email:Ljava/lang/String;

.field forma_pago:Ljava/lang/String;

.field instpago:Ljava/lang/String;

.field matrizdesafio:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field nagente:Ljava/lang/String;

.field nemotecnico:Ljava/lang/String;

.field numcelular:Ljava/lang/String;

.field numeroOrden:Ljava/lang/String;

.field observacion:Ljava/lang/String;

.field precio:Ljava/lang/String;

.field rutcliente:Ljava/lang/String;

.field sucursal:Ljava/lang/String;

.field tipoOperacion:Ljava/lang/String;

.field tipoprecio:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cuentaCustodia"    # Ljava/lang/String;
    .param p2, "nemotecnico"    # Ljava/lang/String;
    .param p3, "cantidad"    # Ljava/lang/String;
    .param p4, "precio"    # Ljava/lang/String;
    .param p5, "monto"    # Ljava/lang/String;
    .param p6, "sucursal"    # Ljava/lang/String;
    .param p7, "tipoprecio"    # Ljava/lang/String;
    .param p8, "cuenta"    # Ljava/lang/String;
    .param p9, "diasVigencia"    # Ljava/lang/String;
    .param p10, "rutcliente"    # Ljava/lang/String;
    .param p11, "matrizdesafio"    # Ljava/lang/String;
    .param p12, "numcelular"    # Ljava/lang/String;
    .param p13, "email"    # Ljava/lang/String;
    .param p14, "msgid"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 14
    const-string v0, "V"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->tipoOperacion:Ljava/lang/String;

    .line 15
    const-string v0, "0"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->numeroOrden:Ljava/lang/String;

    .line 16
    const-string v0, "0"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->correlativo:Ljava/lang/String;

    .line 22
    const-string v0, "3130"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->nagente:Ljava/lang/String;

    .line 24
    const-string v0, "CN"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->forma_pago:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->observacion:Ljava/lang/String;

    .line 26
    const-string v0, "S"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->comisionMin:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->bolsa:Ljava/lang/String;

    .line 29
    const-string v0, "AT"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->instpago:Ljava/lang/String;

    .line 30
    const-string v0, "SANTANDER"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->banco:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cuentaCustodia:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->nemotecnico:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cantidad:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->precio:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->monto:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->sucursal:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->tipoprecio:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cuenta:Ljava/lang/String;

    .line 55
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->diasVigencia:Ljava/lang/String;

    .line 56
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->rutcliente:Ljava/lang/String;

    .line 57
    iput-object p11, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->matrizdesafio:Ljava/lang/String;

    .line 58
    iput-object p12, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->numcelular:Ljava/lang/String;

    .line 59
    iput-object p13, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->email:Ljava/lang/String;

    .line 60
    iput-object p14, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->msgid:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public getBolsa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->bolsa:Ljava/lang/String;

    return-object v0
.end method

.method public getCantidad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cantidad:Ljava/lang/String;

    return-object v0
.end method

.method public getComisionMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->comisionMin:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelativo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->correlativo:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCustodia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cuentaCustodia:Ljava/lang/String;

    return-object v0
.end method

.method public getDiasVigencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->diasVigencia:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getForma_pago()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->forma_pago:Ljava/lang/String;

    return-object v0
.end method

.method public getInstpago()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->instpago:Ljava/lang/String;

    return-object v0
.end method

.method public getMatrizdesafio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->matrizdesafio:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNagente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->nagente:Ljava/lang/String;

    return-object v0
.end method

.method public getNemotecnico()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->nemotecnico:Ljava/lang/String;

    return-object v0
.end method

.method public getNumcelular()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->numcelular:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroOrden()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->numeroOrden:Ljava/lang/String;

    return-object v0
.end method

.method public getObservacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->observacion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->precio:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 69
    packed-switch p1, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->tipoOperacion:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->numeroOrden:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->correlativo:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cuentaCustodia:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->nemotecnico:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cantidad:Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->precio:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->monto:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->nagente:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->sucursal:Ljava/lang/String;

    goto :goto_0

    .line 91
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->forma_pago:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_b
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->observacion:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_c
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->comisionMin:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_d
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->bolsa:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_e
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->tipoprecio:Ljava/lang/String;

    goto :goto_0

    .line 101
    :pswitch_f
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->instpago:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_10
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->banco:Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_11
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cuenta:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_12
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->diasVigencia:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_13
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->rutcliente:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_14
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->matrizdesafio:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_15
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->numcelular:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_16
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->email:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_17
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_18
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 69
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x19

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 136
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 137
    const-string v0, "TIPO_OPERACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 140
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 141
    const-string v0, "NUMERO_ORDEN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 144
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 145
    const-string v0, "CORRELATIVO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 148
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 149
    const-string v0, "CUENTA_CUSTODIA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 152
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 153
    const-string v0, "NEMOTECNICO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 156
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 157
    const-string v0, "CANTIDAD"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 160
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 161
    const-string v0, "PRECIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 164
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 165
    const-string v0, "MONTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 168
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 169
    const-string v0, "NAGENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 172
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 173
    const-string v0, "SUCURSAL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 176
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 177
    const-string v0, "FORMA_PAGO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 180
    :pswitch_b
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 181
    const-string v0, "OBSERVACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 184
    :pswitch_c
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 185
    const-string v0, "COMISION_MIN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 188
    :pswitch_d
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 189
    const-string v0, "BOLSA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 192
    :pswitch_e
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 193
    const-string v0, "TIPO_PRECIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 196
    :pswitch_f
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 197
    const-string v0, "INSTPAGO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 200
    :pswitch_10
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 201
    const-string v0, "BANCO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 204
    :pswitch_11
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 205
    const-string v0, "CUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 208
    :pswitch_12
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 209
    const-string v0, "DIAS_VIGENCIA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 212
    :pswitch_13
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 213
    const-string v0, "RUT_CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    :pswitch_14
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 217
    const-string v0, "MATRIZDESAFIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 220
    :pswitch_15
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 221
    const-string v0, "NUMCELULAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :pswitch_16
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 225
    const-string v0, "EMAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 228
    :pswitch_17
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 229
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 232
    :pswitch_18
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 233
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
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
    .end packed-switch
.end method

.method public getRutcliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->rutcliente:Ljava/lang/String;

    return-object v0
.end method

.method public getSucursal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->sucursal:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoOperacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->tipoOperacion:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoprecio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->tipoprecio:Ljava/lang/String;

    return-object v0
.end method

.method public setBanco(Ljava/lang/String;)V
    .locals 0
    .param p1, "banco"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->banco:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setBolsa(Ljava/lang/String;)V
    .locals 0
    .param p1, "bolsa"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->bolsa:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setCantidad(Ljava/lang/String;)V
    .locals 0
    .param p1, "cantidad"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cantidad:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setComisionMin(Ljava/lang/String;)V
    .locals 0
    .param p1, "comisionMin"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->comisionMin:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setCorrelativo(Ljava/lang/String;)V
    .locals 0
    .param p1, "correlativo"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->correlativo:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cuenta:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setCuentaCustodia(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuentaCustodia"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->cuentaCustodia:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setDiasVigencia(Ljava/lang/String;)V
    .locals 0
    .param p1, "diasVigencia"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->diasVigencia:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->email:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setForma_pago(Ljava/lang/String;)V
    .locals 0
    .param p1, "forma_pago"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->forma_pago:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setInstpago(Ljava/lang/String;)V
    .locals 0
    .param p1, "instpago"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->instpago:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setMatrizdesafio(Ljava/lang/String;)V
    .locals 0
    .param p1, "matrizdesafio"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->matrizdesafio:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setMonto(Ljava/lang/String;)V
    .locals 0
    .param p1, "monto"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->monto:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->msgid:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setNagente(Ljava/lang/String;)V
    .locals 0
    .param p1, "nagente"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->nagente:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setNemotecnico(Ljava/lang/String;)V
    .locals 0
    .param p1, "nemotecnico"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->nemotecnico:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setNumcelular(Ljava/lang/String;)V
    .locals 0
    .param p1, "numcelular"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->numcelular:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setNumeroOrden(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroOrden"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->numeroOrden:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setObservacion(Ljava/lang/String;)V
    .locals 0
    .param p1, "observacion"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->observacion:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setPrecio(Ljava/lang/String;)V
    .locals 0
    .param p1, "precio"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->precio:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setRutcliente(Ljava/lang/String;)V
    .locals 0
    .param p1, "rutcliente"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->rutcliente:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setSucursal(Ljava/lang/String;)V
    .locals 0
    .param p1, "sucursal"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->sucursal:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setTipoOperacion(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoOperacion"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->tipoOperacion:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setTipoprecio(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoprecio"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;->tipoprecio:Ljava/lang/String;

    .line 358
    return-void
.end method
