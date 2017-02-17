.class public Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputTranf_Supergiro_Ingreso.java"


# instance fields
.field banco:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field rutDestino:Ljava/lang/String;

.field rutOrigen:Ljava/lang/String;

.field tipoCuenta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rutOrigen"    # Ljava/lang/String;
    .param p2, "tipoCuenta"    # Ljava/lang/String;
    .param p3, "cuenta"    # Ljava/lang/String;
    .param p4, "banco"    # Ljava/lang/String;
    .param p5, "rutDestino"    # Ljava/lang/String;
    .param p6, "monto"    # Ljava/lang/String;
    .param p7, "msgid"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 27
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->rutOrigen:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->tipoCuenta:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->cuenta:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->banco:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->rutDestino:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->monto:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->msgid:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->rutOrigen:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->tipoCuenta:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->cuenta:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->banco:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->rutDestino:Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->monto:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x7

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 69
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 71
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 72
    const-string v0, "RUTORIGEN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 76
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 77
    const-string v0, "TIPOCUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 82
    const-string v0, "CUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 86
    const-string v0, "BANCO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 90
    const-string v0, "RUTDESTINO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 94
    const-string v0, "MONTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 98
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 69
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
    .end packed-switch
.end method

.method public getRutDestino()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->rutDestino:Ljava/lang/String;

    return-object v0
.end method

.method public getRutOrigen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->rutOrigen:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->tipoCuenta:Ljava/lang/String;

    return-object v0
.end method

.method public setBanco(Ljava/lang/String;)V
    .locals 0
    .param p1, "banco"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->banco:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->cuenta:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setMonto(Ljava/lang/String;)V
    .locals 0
    .param p1, "monto"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->monto:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->msgid:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setRutDestino(Ljava/lang/String;)V
    .locals 0
    .param p1, "rutDestino"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->rutDestino:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setRutOrigen(Ljava/lang/String;)V
    .locals 0
    .param p1, "rutOrigen"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->rutOrigen:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setTipoCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "tipoCuenta"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Ingreso;->tipoCuenta:Ljava/lang/String;

    .line 140
    return-void
.end method
