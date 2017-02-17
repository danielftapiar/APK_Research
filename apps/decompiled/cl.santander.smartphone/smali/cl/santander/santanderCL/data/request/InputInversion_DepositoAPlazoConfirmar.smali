.class public Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputInversion_DepositoAPlazoConfirmar.java"


# instance fields
.field cuenta:Ljava/lang/String;

.field desafio:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field email:Ljava/lang/String;

.field fechaInversion:Ljava/lang/String;

.field indicadorInversion:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field plazo:Ljava/lang/String;

.field rut:Ljava/lang/String;

.field subProducto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "cuenta"    # Ljava/lang/String;
    .param p3, "monto"    # Ljava/lang/String;
    .param p4, "desafio"    # Ljava/lang/String;
    .param p5, "subProducto"    # Ljava/lang/String;
    .param p6, "plazo"    # Ljava/lang/String;
    .param p7, "divisa"    # Ljava/lang/String;
    .param p8, "email"    # Ljava/lang/String;
    .param p9, "msgid"    # Ljava/lang/String;
    .param p10, "indicadorInversion"    # Ljava/lang/String;
    .param p11, "fechaInversion"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 28
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->rut:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->cuenta:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->monto:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->desafio:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->subProducto:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->plazo:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->divisa:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->email:Ljava/lang/String;

    .line 36
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->msgid:Ljava/lang/String;

    .line 38
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->indicadorInversion:Ljava/lang/String;

    .line 39
    iput-object p11, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->fechaInversion:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getDesafio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->desafio:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->fechaInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicadorInversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->indicadorInversion:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getPlazo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->plazo:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->rut:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->cuenta:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->monto:Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->desafio:Ljava/lang/String;

    goto :goto_0

    .line 58
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->subProducto:Ljava/lang/String;

    goto :goto_0

    .line 61
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->plazo:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->divisa:Ljava/lang/String;

    goto :goto_0

    .line 66
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->email:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->indicadorInversion:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->fechaInversion:Ljava/lang/String;

    goto :goto_0

    .line 44
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0xb

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 91
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 92
    const-string v0, "RUT-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 96
    const-string v0, "CUENTA-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 100
    const-string v0, "MONTO-INVERSION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 104
    const-string v0, "MATRIZ-DESAFIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 108
    const-string v0, "SUB-PRODUCTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 112
    const-string v0, "PLAZO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 116
    const-string v0, "DIVISA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 120
    const-string v0, "E-MAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 124
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 128
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 129
    const-string v0, "INDICADOR_INVERSION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 132
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 133
    const-string v0, "FECHA_INVERSION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 88
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
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->rut:Ljava/lang/String;

    return-object v0
.end method

.method public getSubProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->subProducto:Ljava/lang/String;

    return-object v0
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->cuenta:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setDesafio(Ljava/lang/String;)V
    .locals 0
    .param p1, "desafio"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->desafio:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setDivisa(Ljava/lang/String;)V
    .locals 0
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->divisa:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->email:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setFechaInversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "fechaInversion"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->fechaInversion:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setIndicadorInversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "indicadorInversion"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->indicadorInversion:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setMonto(Ljava/lang/String;)V
    .locals 0
    .param p1, "monto"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->monto:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->msgid:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setPlazo(Ljava/lang/String;)V
    .locals 0
    .param p1, "plazo"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->plazo:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->rut:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setSubProducto(Ljava/lang/String;)V
    .locals 0
    .param p1, "subProducto"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoConfirmar;->subProducto:Ljava/lang/String;

    .line 178
    return-void
.end method
