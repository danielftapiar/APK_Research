.class public Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputTransf_MisProductos.java"


# instance fields
.field codCuentaDestino:Ljava/lang/String;

.field codCuentaOrigen:Ljava/lang/String;

.field divCuentaDestino:Ljava/lang/String;

.field divCuentaOrigen:Ljava/lang/String;

.field montoTrans:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field numeroCuentaDestino:Ljava/lang/String;

.field numeroCuentaOrigen:Ljava/lang/String;

.field pin:Ljava/lang/String;

.field rutCliente:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroCuentaOrigen"    # Ljava/lang/String;
    .param p2, "divCuentaOrigen"    # Ljava/lang/String;
    .param p3, "codCuentaOrigen"    # Ljava/lang/String;
    .param p4, "numeroCuentaDestino"    # Ljava/lang/String;
    .param p5, "divCuentaDestino"    # Ljava/lang/String;
    .param p6, "codCuentaDestino"    # Ljava/lang/String;
    .param p7, "rutCliente"    # Ljava/lang/String;
    .param p8, "pin"    # Ljava/lang/String;
    .param p9, "montoTrans"    # Ljava/lang/String;
    .param p10, "msgid"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 33
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->numeroCuentaOrigen:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->divCuentaOrigen:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->codCuentaOrigen:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->numeroCuentaDestino:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->divCuentaDestino:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->codCuentaDestino:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->rutCliente:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->pin:Ljava/lang/String;

    .line 41
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->montoTrans:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->msgid:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 69
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->numeroCuentaOrigen:Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->divCuentaOrigen:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->codCuentaOrigen:Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->numeroCuentaDestino:Ljava/lang/String;

    goto :goto_0

    .line 57
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->divCuentaDestino:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->codCuentaDestino:Ljava/lang/String;

    goto :goto_0

    .line 61
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->rutCliente:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->pin:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->montoTrans:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_MisProductos;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 47
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xa

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 85
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 86
    const-string v0, "NUMCUENTAORIGEN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 90
    const-string v0, "DIVCUENTAORIGEN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 94
    const-string v0, "CODCUENTAORIGEN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 98
    const-string v0, "NUMCUENTADESTINO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 101
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 102
    const-string v0, "DIVCUENTADESTINO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 106
    const-string v0, "CODCUENTADESTINO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 110
    const-string v0, "RUTCLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 114
    const-string v0, "PIN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 118
    const-string v0, "MONTOTRANS"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 121
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 122
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 82
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
    .end packed-switch
.end method
