.class public Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputMovimientosLineaCredito.java"


# instance fields
.field idrecall:Ljava/lang/String;

.field msgId:Ljava/lang/String;

.field nroctacte:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nrocTacte"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 22
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 23
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->usuarioAlt:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->nroctacte:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->msgId:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getIdrecall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->idrecall:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getNroctacte()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->nroctacte:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 44
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->nroctacte:Ljava/lang/String;

    goto :goto_0

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->idrecall:Ljava/lang/String;

    goto :goto_0

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->msgId:Ljava/lang/String;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 60
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 61
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 66
    const-string v0, "NROCTACTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 70
    const-string v0, "IDRECALL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 74
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getUsuarioAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->usuarioAlt:Ljava/lang/String;

    return-object v0
.end method

.method public setIdrecall(Ljava/lang/String;)V
    .locals 0
    .param p1, "idrecall"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->idrecall:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->msgId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setNroctacte(Ljava/lang/String;)V
    .locals 0
    .param p1, "nroctacte"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->nroctacte:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUsuarioAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "usuarioAlt"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputMovimientosLineaCredito;->usuarioAlt:Ljava/lang/String;

    .line 86
    return-void
.end method
