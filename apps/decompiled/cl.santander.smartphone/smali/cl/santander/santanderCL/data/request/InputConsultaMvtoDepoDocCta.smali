.class public Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputConsultaMvtoDepoDocCta.java"


# instance fields
.field canalId:Ljava/lang/String;

.field cartola:Ljava/lang/String;

.field codctacte:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field fechadesde:Ljava/lang/String;

.field fechahasta:Ljava/lang/String;

.field indcobrarcomis:Ljava/lang/String;

.field movdesde:Ljava/lang/String;

.field movhasta:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field regrecuperar:Ljava/lang/String;

.field timestamp:Ljava/lang/String;

.field tiporegistro:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "codctacte"    # Ljava/lang/String;
    .param p2, "msgid"    # Ljava/lang/String;
    .param p3, "divisa"    # Ljava/lang/String;
    .param p4, "fechaDesde"    # Ljava/util/Date;
    .param p5, "fechaHasta"    # Ljava/util/Date;

    .prologue
    .line 32
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 35
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 36
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->usuarioAlt:Ljava/lang/String;

    .line 37
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->canalId:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->codctacte:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->divisa:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->msgid:Ljava/lang/String;

    .line 41
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->REGRECUPERAR:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->regrecuperar:Ljava/lang/String;

    .line 43
    if-eqz p4, :cond_0

    .line 44
    const-string v1, "yyyyMMdd"

    invoke-static {p4, v1}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->fechadesde:Ljava/lang/String;

    .line 46
    :cond_0
    if-eqz p5, :cond_1

    .line 47
    const-string v1, "yyyyMMdd"

    invoke-static {p5, v1}, Lcl/santander/santanderCL/utils/Utils;->parseFecha(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->fechahasta:Ljava/lang/String;

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public getCanalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->canalId:Ljava/lang/String;

    return-object v0
.end method

.method public getCartola()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->cartola:Ljava/lang/String;

    return-object v0
.end method

.method public getCodctacte()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->codctacte:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getFechadesde()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->fechadesde:Ljava/lang/String;

    return-object v0
.end method

.method public getFechahasta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->fechahasta:Ljava/lang/String;

    return-object v0
.end method

.method public getIndcobrarcomis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->indcobrarcomis:Ljava/lang/String;

    return-object v0
.end method

.method public getMovdesde()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->movdesde:Ljava/lang/String;

    return-object v0
.end method

.method public getMovhasta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->movhasta:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->canalId:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->codctacte:Ljava/lang/String;

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->divisa:Ljava/lang/String;

    goto :goto_0

    .line 68
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->fechadesde:Ljava/lang/String;

    goto :goto_0

    .line 70
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->fechahasta:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->movdesde:Ljava/lang/String;

    goto :goto_0

    .line 74
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->movhasta:Ljava/lang/String;

    goto :goto_0

    .line 76
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->tiporegistro:Ljava/lang/String;

    goto :goto_0

    .line 78
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->timestamp:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->regrecuperar:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_b
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->indcobrarcomis:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_c
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->cartola:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_d
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 57
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0xe

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 106
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 107
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 112
    const-string v0, "CANAL-ID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 116
    const-string v0, "CODCTACTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 120
    const-string v0, "DIVISA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 124
    const-string v0, "FECHADESDE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 127
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 128
    const-string v0, "FECHAHASTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 131
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 132
    const-string v0, "MOVDESDE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 135
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 136
    const-string v0, "MOVHASTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 140
    const-string v0, "TIPOREGISTRO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 143
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 144
    const-string v0, "TIMESTAMP"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 147
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 148
    const-string v0, "REGRECUPERAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 151
    :pswitch_b
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 152
    const-string v0, "INDCOBRARCOMIS"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 155
    :pswitch_c
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 156
    const-string v0, "CARTOLA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 159
    :pswitch_d
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 160
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 103
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
    .end packed-switch
.end method

.method public getRegrecuperar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->regrecuperar:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTiporegistro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->tiporegistro:Ljava/lang/String;

    return-object v0
.end method

.method public getUsuarioAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->usuarioAlt:Ljava/lang/String;

    return-object v0
.end method

.method public setCanalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "canalId"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->canalId:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setCartola(Ljava/lang/String;)V
    .locals 0
    .param p1, "cartola"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->cartola:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setCodctacte(Ljava/lang/String;)V
    .locals 0
    .param p1, "codctacte"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->codctacte:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setDivisa(Ljava/lang/String;)V
    .locals 0
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->divisa:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setFechadesde(Ljava/lang/String;)V
    .locals 0
    .param p1, "fechadesde"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->fechadesde:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setFechahasta(Ljava/lang/String;)V
    .locals 0
    .param p1, "fechahasta"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->fechahasta:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setIndcobrarcomis(Ljava/lang/String;)V
    .locals 0
    .param p1, "indcobrarcomis"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->indcobrarcomis:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setMovdesde(Ljava/lang/String;)V
    .locals 0
    .param p1, "movdesde"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->movdesde:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setMovhasta(Ljava/lang/String;)V
    .locals 0
    .param p1, "movhasta"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->movhasta:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->msgid:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setRegrecuperar(Ljava/lang/String;)V
    .locals 0
    .param p1, "regrecuperar"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->regrecuperar:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->timestamp:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setTiporegistro(Ljava/lang/String;)V
    .locals 0
    .param p1, "tiporegistro"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->tiporegistro:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setUsuarioAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "usuarioAlt"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMvtoDepoDocCta;->usuarioAlt:Ljava/lang/String;

    .line 173
    return-void
.end method
