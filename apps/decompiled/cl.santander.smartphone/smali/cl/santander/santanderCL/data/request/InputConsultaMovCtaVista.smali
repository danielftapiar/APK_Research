.class public Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputConsultaMovCtaVista.java"


# instance fields
.field canal:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field numero_cuenta:Ljava/lang/String;

.field rellamada:Ljava/lang/String;

.field usuarioHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "numeroCuenta"    # Ljava/lang/String;
    .param p2, "msgid"    # Ljava/lang/String;
    .param p3, "divisa"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 24
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->canal:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 26
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->usuarioHost:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->msgid:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->numero_cuenta:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCanal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->canal:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNumero_cuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->numero_cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->usuarioHost:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->numero_cuenta:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->canal:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->rellamada:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 38
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
    .line 58
    const/4 v0, 0x5

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 67
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 68
    const-string v0, "USUARIO_HOST"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 73
    const-string v0, "NUMERO_CUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 78
    const-string v0, "CANAL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 82
    const-string v0, "RELLAMADA_ID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 86
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 65
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

.method public getRellamada()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->rellamada:Ljava/lang/String;

    return-object v0
.end method

.method public getUsuarioHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->usuarioHost:Ljava/lang/String;

    return-object v0
.end method

.method public setCanal(Ljava/lang/String;)V
    .locals 0
    .param p1, "canal"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->canal:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->msgid:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setNumero_cuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "numero_cuenta"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->numero_cuenta:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setRellamada(Ljava/lang/String;)V
    .locals 0
    .param p1, "rellamada"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->rellamada:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setUsuarioHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "usuarioHost"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaMovCtaVista;->usuarioHost:Ljava/lang/String;

    .line 101
    return-void
.end method
