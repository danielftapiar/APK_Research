.class public Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputTransf_Terceros_Valida_SuperClave.java"


# instance fields
.field codBancoDestinatario:Ljava/lang/String;

.field codProductoCliente:Ljava/lang/String;

.field codProductoDestinatario:Ljava/lang/String;

.field comentarioMail:Ljava/lang/String;

.field cuentaCliente:Ljava/lang/String;

.field cuentaDestino:Ljava/lang/String;

.field desafio:Ljava/lang/String;

.field emailCliente:Ljava/lang/String;

.field emailDestinatario:Ljava/lang/String;

.field montoMaximo:Ljava/lang/String;

.field montoTransferir:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field nombreDestinatario:Ljava/lang/String;

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
    .param p12, "desafio"    # Ljava/lang/String;
    .param p13, "montoMaximo"    # Ljava/lang/String;
    .param p14, "montoTransferir"    # Ljava/lang/String;
    .param p15, "msgid"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 36
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->rutCliente:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->cuentaCliente:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codProductoCliente:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->emailCliente:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->rutDestinatario:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->cuentaDestino:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codProductoDestinatario:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codBancoDestinatario:Ljava/lang/String;

    .line 44
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->nombreDestinatario:Ljava/lang/String;

    .line 45
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->emailDestinatario:Ljava/lang/String;

    .line 46
    iput-object p11, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->comentarioMail:Ljava/lang/String;

    .line 47
    iput-object p12, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->desafio:Ljava/lang/String;

    .line 48
    iput-object p13, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->montoMaximo:Ljava/lang/String;

    .line 49
    iput-object p14, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->montoTransferir:Ljava/lang/String;

    .line 50
    iput-object p15, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->msgid:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getCodBancoDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codBancoDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getCodProductoCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codProductoCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getCodProductoDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codProductoDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getComentarioMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->comentarioMail:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->cuentaCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getCuentaDestino()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->cuentaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public getDesafio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->desafio:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->emailCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->emailDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoMaximo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->montoMaximo:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoTransferir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->montoTransferir:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->nombreDestinatario:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->rutCliente:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->cuentaCliente:Ljava/lang/String;

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codProductoCliente:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->emailCliente:Ljava/lang/String;

    goto :goto_0

    .line 66
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->rutDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 68
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->cuentaDestino:Ljava/lang/String;

    goto :goto_0

    .line 70
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codProductoDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->codBancoDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 74
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->nombreDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 76
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->emailDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 78
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->comentarioMail:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_b
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->desafio:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_c
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->montoMaximo:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_d
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->montoTransferir:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_e
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 56
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
    .line 94
    const/16 v0, 0xf

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 103
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 104
    const-string v0, "RUT-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 108
    const-string v0, "CUENTA-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 112
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 113
    const-string v0, "PRODUCTO-CUENTA-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 118
    const-string v0, "EMAIL-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 122
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 123
    const-string v0, "RUT-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 127
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 128
    const-string v0, "CUENTA-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 132
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 133
    const-string v0, "PRODUCTO-CUENTA-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 137
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 138
    const-string v0, "BANCO-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 142
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 143
    const-string v0, "NOMBRE-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 147
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 148
    const-string v0, "EMAIL-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 151
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 152
    const-string v0, "COMENTARIO-EMAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 155
    :pswitch_b
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 156
    const-string v0, "MATRIZ-DESAFIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 159
    :pswitch_c
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 160
    const-string v0, "MONTO-MAX-TRANSF"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 163
    :pswitch_d
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 164
    const-string v0, "MONTO-TRANSFERIR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_e
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 168
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
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
    .line 177
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->rutCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getRutDestinatario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Valida_SuperClave;->rutDestinatario:Ljava/lang/String;

    return-object v0
.end method
