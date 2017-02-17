.class public Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputTransf_Terceros_Verifica.java"


# instance fields
.field codBancoDestino:Ljava/lang/String;

.field codProducto:Ljava/lang/String;

.field cuentaCliente:Ljava/lang/String;

.field cuentaDestino:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field rutCliente:Ljava/lang/String;

.field rutDestinatario:Ljava/lang/String;

.field tipoCuenta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rutCliente"    # Ljava/lang/String;
    .param p2, "cuentaCliente"    # Ljava/lang/String;
    .param p3, "codProducto"    # Ljava/lang/String;
    .param p4, "rutDestinatario"    # Ljava/lang/String;
    .param p5, "cuentaDestino"    # Ljava/lang/String;
    .param p6, "codBancoDestino"    # Ljava/lang/String;
    .param p7, "tipoCuenta"    # Ljava/lang/String;
    .param p8, "monto"    # Ljava/lang/String;
    .param p9, "msgid"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 30
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->rutCliente:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->cuentaCliente:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->codProducto:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->rutDestinatario:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->cuentaDestino:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->codBancoDestino:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->tipoCuenta:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->monto:Ljava/lang/String;

    .line 38
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->msgid:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->rutCliente:Ljava/lang/String;

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->cuentaCliente:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->codProducto:Ljava/lang/String;

    goto :goto_0

    .line 54
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->rutDestinatario:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->cuentaDestino:Ljava/lang/String;

    goto :goto_0

    .line 58
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->codBancoDestino:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->tipoCuenta:Ljava/lang/String;

    goto :goto_0

    .line 62
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->monto:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Verifica;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 46
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x9

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 82
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 83
    const-string v0, "RUT-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 87
    const-string v0, "CUENTA-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 91
    const-string v0, "PRODUCTO-CUENTA-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 95
    const-string v0, "RUT-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 98
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 99
    const-string v0, "CUENTA-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 102
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 103
    const-string v0, "BANCO-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 107
    const-string v0, "TIPO-CUENTA-DESTINATARIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 110
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 111
    const-string v0, "MONTO-TRANSFERIR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 114
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 115
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 79
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
    .end packed-switch
.end method
