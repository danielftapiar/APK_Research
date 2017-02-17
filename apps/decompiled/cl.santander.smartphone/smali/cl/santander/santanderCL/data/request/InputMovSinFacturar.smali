.class public Lcl/santander/santanderCL/data/request/InputMovSinFacturar;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputMovSinFacturar.java"


# instance fields
.field centro:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field entidad:Ljava/lang/String;

.field moneda:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field sucursal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cuenta"    # Ljava/lang/String;
    .param p2, "moneda"    # Ljava/lang/String;
    .param p3, "centro"    # Ljava/lang/String;
    .param p4, "msgid"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 20
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->cuenta:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->moneda:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->msgid:Ljava/lang/String;

    .line 23
    const-string v0, "0035"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->entidad:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->centro:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCentro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->centro:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getEntidad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->entidad:Ljava/lang/String;

    return-object v0
.end method

.method public getMoneda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->moneda:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->cuenta:Ljava/lang/String;

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->moneda:Ljava/lang/String;

    goto :goto_0

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->entidad:Ljava/lang/String;

    goto :goto_0

    .line 44
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->centro:Ljava/lang/String;

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x5

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 62
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 63
    const-string v0, "CUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 68
    const-string v0, "MONEDA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 72
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 76
    const-string v0, "ENTIDAD"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 80
    const-string v0, "CENTRO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSucursal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->sucursal:Ljava/lang/String;

    return-object v0
.end method

.method public setCentro(Ljava/lang/String;)V
    .locals 0
    .param p1, "centro"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->centro:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->cuenta:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setEntidad(Ljava/lang/String;)V
    .locals 0
    .param p1, "entidad"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->entidad:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setMoneda(Ljava/lang/String;)V
    .locals 0
    .param p1, "moneda"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->moneda:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->msgid:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSucursal(Ljava/lang/String;)V
    .locals 0
    .param p1, "sucursal"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovSinFacturar;->sucursal:Ljava/lang/String;

    .line 144
    return-void
.end method
