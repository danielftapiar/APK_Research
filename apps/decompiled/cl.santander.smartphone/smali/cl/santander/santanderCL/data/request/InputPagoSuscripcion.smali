.class public Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputPagoSuscripcion.java"


# instance fields
.field codEnti:Ljava/lang/String;

.field ctocgo:Ljava/lang/String;

.field cttcgo:Ljava/lang/String;

.field datid1:Ljava/lang/String;

.field docAtz:Ljava/lang/String;

.field fecha:Ljava/lang/String;

.field fecven:Ljava/lang/String;

.field glosaCortaProducto:Ljava/lang/String;

.field hora:Ljava/lang/String;

.field idfDeud:Ljava/lang/String;

.field idfconv:Ljava/lang/String;

.field idfdcto:Ljava/lang/String;

.field impTot:Ljava/lang/String;

.field mail:Ljava/lang/String;

.field matriz:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field nomClie:Ljava/lang/String;

.field nomConv:Ljava/lang/String;

.field numConv:Ljava/lang/String;

.field rutCliente:Ljava/lang/String;

.field segmento:Ljava/lang/String;

.field tipoCarr:Ljava/lang/String;

.field tpoDcto:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "segmento"    # Ljava/lang/String;
    .param p2, "rutCliente"    # Ljava/lang/String;
    .param p3, "matriz"    # Ljava/lang/String;
    .param p4, "ctocgo"    # Ljava/lang/String;
    .param p5, "cttcgo"    # Ljava/lang/String;
    .param p6, "idfconv"    # Ljava/lang/String;
    .param p7, "idfdcto"    # Ljava/lang/String;
    .param p8, "fecven"    # Ljava/lang/String;
    .param p9, "tpoDcto"    # Ljava/lang/String;
    .param p10, "numConv"    # Ljava/lang/String;
    .param p11, "monto"    # Ljava/lang/String;
    .param p12, "nombreCliente"    # Ljava/lang/String;
    .param p13, "glosaProducto"    # Ljava/lang/String;
    .param p14, "datid1"    # Ljava/lang/String;
    .param p15, "mail"    # Ljava/lang/String;
    .param p16, "mgsid"    # Ljava/lang/String;
    .param p17, "nomconv"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 54
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v1

    .line 55
    .local v1, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v1}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->usuarioAlt:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->rutCliente:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->segmento:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->matriz:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->ctocgo:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->cttcgo:Ljava/lang/String;

    .line 62
    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->TIPO_CARGO:Ljava/lang/String;

    iput-object v2, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->tipoCarr:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->idfconv:Ljava/lang/String;

    .line 64
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->idfdcto:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->fecven:Ljava/lang/String;

    .line 66
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->tpoDcto:Ljava/lang/String;

    .line 67
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->numConv:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p17

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->nomConv:Ljava/lang/String;

    .line 70
    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->ENTIDAD:Ljava/lang/String;

    iput-object v2, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->codEnti:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->docAtz:Ljava/lang/String;

    .line 74
    iput-object p11, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->impTot:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p12

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->nomClie:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p13

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->glosaCortaProducto:Ljava/lang/String;

    .line 78
    move-object/from16 v0, p14

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->datid1:Ljava/lang/String;

    .line 79
    move-object/from16 v0, p15

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->mail:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p16

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->msgid:Ljava/lang/String;

    .line 83
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "dd-MM-yyyy"

    invoke-static {v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->fecha:Ljava/lang/String;

    .line 84
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "HH:mm"

    invoke-static {v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->hora:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public getCodEnti()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->codEnti:Ljava/lang/String;

    return-object v0
.end method

.method public getCtocgo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->ctocgo:Ljava/lang/String;

    return-object v0
.end method

.method public getCttcgo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->cttcgo:Ljava/lang/String;

    return-object v0
.end method

.method public getDatid1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->datid1:Ljava/lang/String;

    return-object v0
.end method

.method public getDocAtz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->docAtz:Ljava/lang/String;

    return-object v0
.end method

.method public getFecven()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->fecven:Ljava/lang/String;

    return-object v0
.end method

.method public getGlosaCortaProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->glosaCortaProducto:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfDeud()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->idfDeud:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfconv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->idfconv:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfdcto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->idfdcto:Ljava/lang/String;

    return-object v0
.end method

.method public getImpTot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->impTot:Ljava/lang/String;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getMatriz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->matriz:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNomClie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->nomClie:Ljava/lang/String;

    return-object v0
.end method

.method public getNomConv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->nomConv:Ljava/lang/String;

    return-object v0
.end method

.method public getNumConv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->numConv:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->rutCliente:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->segmento:Ljava/lang/String;

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->matriz:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->ctocgo:Ljava/lang/String;

    goto :goto_0

    .line 102
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->cttcgo:Ljava/lang/String;

    goto :goto_0

    .line 104
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->tipoCarr:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->idfconv:Ljava/lang/String;

    goto :goto_0

    .line 108
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->idfdcto:Ljava/lang/String;

    goto :goto_0

    .line 110
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->fecven:Ljava/lang/String;

    goto :goto_0

    .line 112
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->idfDeud:Ljava/lang/String;

    goto :goto_0

    .line 114
    :pswitch_b
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->tpoDcto:Ljava/lang/String;

    goto :goto_0

    .line 116
    :pswitch_c
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->numConv:Ljava/lang/String;

    goto :goto_0

    .line 118
    :pswitch_d
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->codEnti:Ljava/lang/String;

    goto :goto_0

    .line 120
    :pswitch_e
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->docAtz:Ljava/lang/String;

    goto :goto_0

    .line 122
    :pswitch_f
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->impTot:Ljava/lang/String;

    goto :goto_0

    .line 124
    :pswitch_10
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->nomClie:Ljava/lang/String;

    goto :goto_0

    .line 126
    :pswitch_11
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->glosaCortaProducto:Ljava/lang/String;

    goto :goto_0

    .line 128
    :pswitch_12
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->datid1:Ljava/lang/String;

    goto :goto_0

    .line 130
    :pswitch_13
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->mail:Ljava/lang/String;

    goto :goto_0

    .line 132
    :pswitch_14
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_15
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->fecha:Ljava/lang/String;

    goto :goto_0

    .line 136
    :pswitch_16
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->hora:Ljava/lang/String;

    goto :goto_0

    .line 138
    :pswitch_17
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->nomConv:Ljava/lang/String;

    goto :goto_0

    .line 90
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x18

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 155
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 156
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 159
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 160
    const-string v0, "RUTCLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 163
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 164
    const-string v0, "SEGMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 168
    const-string v0, "MATRIZDESAFIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 171
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 172
    const-string v0, "CTOCGO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 175
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 176
    const-string v0, "CTTCGO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 180
    const-string v0, "TPOCARR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 183
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 184
    const-string v0, "IDFCONV"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 187
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 189
    const-string v0, "IDDOCUMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 192
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 194
    const-string v0, "FECHAVENCIMIENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 198
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 199
    const-string v0, "IDFDEUD"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 203
    :pswitch_b
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 205
    const-string v0, "TIPOCTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 208
    :pswitch_c
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 209
    const-string v0, "NUMCONV"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 213
    :pswitch_d
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 214
    const-string v0, "CODENTI"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 217
    :pswitch_e
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 218
    const-string v0, "DOCATZ"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 221
    :pswitch_f
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 222
    const-string v0, "IMPTOT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    :pswitch_10
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 226
    const-string v0, "NOMCLIE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 230
    :pswitch_11
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 231
    const-string v0, "GLSCTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 235
    :pswitch_12
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 236
    const-string v0, "DATID01"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 239
    :pswitch_13
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 240
    const-string v0, "MAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 243
    :pswitch_14
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 244
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 247
    :pswitch_15
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 248
    const-string v0, "FECATZ"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 251
    :pswitch_16
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 252
    const-string v0, "HORATZ"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 255
    :pswitch_17
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 256
    const-string v0, "NOMCONV"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
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
    .end packed-switch
.end method

.method public getRutCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->rutCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->segmento:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoCarr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->tipoCarr:Ljava/lang/String;

    return-object v0
.end method

.method public getTpoDcto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->tpoDcto:Ljava/lang/String;

    return-object v0
.end method

.method public getUsuarioAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoSuscripcion;->usuarioAlt:Ljava/lang/String;

    return-object v0
.end method
