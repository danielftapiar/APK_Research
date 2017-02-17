.class public Lcl/santander/santanderCL/data/request/InputPagoRecarga;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputPagoRecarga.java"


# instance fields
.field email:Ljava/lang/String;

.field fechaEnvio:Ljava/lang/String;

.field horaEnvio:Ljava/lang/String;

.field idCliente:Ljava/lang/String;

.field idConvenio1:Ljava/lang/String;

.field matrizDesafio:Ljava/lang/String;

.field monto1:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field nroConvenio:Ljava/lang/String;

.field nrocuenta:Ljava/lang/String;

.field numeroCelular:Ljava/lang/String;

.field rutCliente:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgid"    # Ljava/lang/String;
    .param p2, "nrocuenta"    # Ljava/lang/String;
    .param p3, "rutCliente"    # Ljava/lang/String;
    .param p4, "matrizDesafio"    # Ljava/lang/String;
    .param p5, "idConvenio1"    # Ljava/lang/String;
    .param p6, "nroConvenio"    # Ljava/lang/String;
    .param p7, "idCliente"    # Ljava/lang/String;
    .param p8, "monto1"    # Ljava/lang/String;
    .param p9, "mail"    # Ljava/lang/String;
    .param p10, "numeroCelular"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 39
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->msgid:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->nrocuenta:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->rutCliente:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->matrizDesafio:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->idConvenio1:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->nroConvenio:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->idCliente:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->monto1:Ljava/lang/String;

    .line 47
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->email:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 49
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->usuarioAlt:Ljava/lang/String;

    .line 50
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->numeroCelular:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaEnvio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->fechaEnvio:Ljava/lang/String;

    return-object v0
.end method

.method public getHoraEnvio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->horaEnvio:Ljava/lang/String;

    return-object v0
.end method

.method public getIdCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->idCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getIdConvenio1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->idConvenio1:Ljava/lang/String;

    return-object v0
.end method

.method public getMatrizDesafio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->matrizDesafio:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->monto1:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNroConvenio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->nroConvenio:Ljava/lang/String;

    return-object v0
.end method

.method public getNrocuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->nrocuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroCelular()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->numeroCelular:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->nrocuenta:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->rutCliente:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->matrizDesafio:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->fechaEnvio:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->horaEnvio:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->idConvenio1:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->nroConvenio:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->idCliente:Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->monto1:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_b
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->email:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_c
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->numeroCelular:Ljava/lang/String;

    goto :goto_0

    .line 59
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0xd

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 110
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 111
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 116
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 120
    const-string v0, "NROCUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 124
    const-string v0, "RUTCLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 127
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 128
    const-string v0, "MATRIZDESAFIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 132
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 133
    const-string v0, "FECHAENVIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 136
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 137
    const-string v0, "HORAENVIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 141
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 142
    const-string v0, "IDCONVENIO1"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 145
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 146
    const-string v0, "NROCONVENIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 150
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 151
    const-string v0, "IDCLIENTE1"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 154
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 155
    const-string v0, "MONTO1"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 158
    :pswitch_b
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 159
    const-string v0, "E-MAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 162
    :pswitch_c
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 163
    const-string v0, "NROCELULAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 107
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
    .end packed-switch
.end method

.method public getRutCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->rutCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getUsuarioAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->usuarioAlt:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->email:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setFechaEnvio(Ljava/lang/String;)V
    .locals 0
    .param p1, "fechaEnvio"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->fechaEnvio:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setHoraEnvio(Ljava/lang/String;)V
    .locals 0
    .param p1, "horaEnvio"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->horaEnvio:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setIdCliente(Ljava/lang/String;)V
    .locals 0
    .param p1, "idCliente"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->idCliente:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setIdConvenio1(Ljava/lang/String;)V
    .locals 0
    .param p1, "idConvenio1"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->idConvenio1:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setMatrizDesafio(Ljava/lang/String;)V
    .locals 0
    .param p1, "matrizDesafio"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->matrizDesafio:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setMonto1(Ljava/lang/String;)V
    .locals 0
    .param p1, "monto1"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->monto1:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->msgid:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setNroConvenio(Ljava/lang/String;)V
    .locals 0
    .param p1, "nroConvenio"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->nroConvenio:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setNrocuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "nrocuenta"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->nrocuenta:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setNumeroCelular(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroCelular"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->numeroCelular:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setRutCliente(Ljava/lang/String;)V
    .locals 0
    .param p1, "rutCliente"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->rutCliente:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setUsuarioAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "usuarioAlt"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputPagoRecarga;->usuarioAlt:Ljava/lang/String;

    .line 178
    return-void
.end method
