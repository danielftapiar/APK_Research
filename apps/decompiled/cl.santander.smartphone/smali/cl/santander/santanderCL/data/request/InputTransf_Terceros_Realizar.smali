.class public Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputTransf_Terceros_Realizar.java"


# instance fields
.field codBancoDestinatario:Ljava/lang/String;

.field codProductoCliente:Ljava/lang/String;

.field codProductoDestinatario:Ljava/lang/String;

.field comentarioMail:Ljava/lang/String;

.field cuentaCliente:Ljava/lang/String;

.field cuentaDestino:Ljava/lang/String;

.field emailCliente:Ljava/lang/String;

.field emailDestinatario:Ljava/lang/String;

.field montoTransferir:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field nombreDestinatario:Ljava/lang/String;

.field otp_Idtrx:Ljava/lang/String;

.field otp_codotp:Ljava/lang/String;

.field rutCliente:Ljava/lang/String;

.field rutDestinatario:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rutCliente"    # Ljava/lang/String;
    .param p2, "cuentaCliente"    # Ljava/lang/String;
    .param p3, "codProductoCliente"    # Ljava/lang/String;
    .param p4, "emailCliente"    # Ljava/lang/String;
    .param p5, "rutDestinatario"    # Ljava/lang/String;
    .param p6, "cuentaDestino"    # Ljava/lang/String;
    .param p7, "codProductoDestinatario"    # Ljava/lang/String;
    .param p8, "codBancoDestinatario"    # Ljava/lang/String;
    .param p9, "nombreDestinatario"    # Ljava/lang/String;
    .param p10, "emailDestinatario"    # Ljava/lang/String;
    .param p11, "comentarioMail"    # Ljava/lang/String;
    .param p12, "otp_Idtrx"    # Ljava/lang/String;
    .param p13, "codOtp"    # Ljava/lang/String;
    .param p14, "montoTransferir"    # Ljava/lang/String;
    .param p15, "msgid"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 46
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->rutCliente:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->cuentaCliente:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codProductoCliente:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->emailCliente:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->rutDestinatario:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->cuentaDestino:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codProductoDestinatario:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codBancoDestinatario:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->nombreDestinatario:Ljava/lang/String;

    .line 55
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->emailDestinatario:Ljava/lang/String;

    .line 56
    iput-object p11, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->comentarioMail:Ljava/lang/String;

    .line 58
    iput-object p12, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->otp_Idtrx:Ljava/lang/String;

    .line 59
    iput-object p13, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->otp_codotp:Ljava/lang/String;

    .line 60
    iput-object p14, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->montoTransferir:Ljava/lang/String;

    .line 61
    iput-object p15, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->msgid:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getCodBancoDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codBancoDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getCodProductoCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codProductoCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getCodProductoDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codProductoDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getComentarioMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->comentarioMail:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->cuentaCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaDestino()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->cuentaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->emailCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->emailDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoTransferir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->montoTransferir:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->nombreDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getOtp_Idtrx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->otp_Idtrx:Ljava/lang/String;

    return-object v0
.end method

.method public getOtp_codotp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->otp_codotp:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->rutCliente:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->cuentaCliente:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codProductoCliente:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->emailCliente:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->rutDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->cuentaDestino:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codProductoDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->codBancoDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->nombreDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->emailDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->comentarioMail:Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_b
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->otp_Idtrx:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_c
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->otp_codotp:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_d
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->montoTransferir:Ljava/lang/String;

    goto :goto_0

    .line 98
    :pswitch_e
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 67
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0xf

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 115
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 116
    const-string v0, "RUT-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 120
    const-string v0, "CUENTA-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 124
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 125
    const-string v0, "PRODUCTO-CUENTA-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 129
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 130
    const-string v0, "EMAIL-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 135
    const-string v0, "RUT-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 140
    const-string v0, "CUENTA-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 144
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 145
    const-string v0, "PRODUCTO-CUENTA-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 149
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 150
    const-string v0, "BANCO-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 154
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 155
    const-string v0, "NOMBRE-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 159
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 160
    const-string v0, "EMAIL-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 163
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 164
    const-string v0, "COMENTARIO-EMAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 168
    :pswitch_b
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 169
    const-string v0, "OTP-IDTRX"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 172
    :pswitch_c
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 173
    const-string v0, "OTP-CODOTP"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 176
    :pswitch_d
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 177
    const-string v0, "MONTO-TRANSFERIR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 180
    :pswitch_e
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 181
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 112
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
    .end packed-switch
.end method

.method public getRutCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->rutCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getRutDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Realizar;->rutDestinatario:Ljava/lang/String;

    return-object v0
.end method
