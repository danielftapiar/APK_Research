.class public Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputDetalleDesafioSuscripciones.java"


# instance fields
.field codCanal:Ljava/lang/String;

.field codEFT:Ljava/lang/String;

.field idCliente:Ljava/lang/String;

.field idConvenio:Ljava/lang/String;

.field msgId:Ljava/lang/String;

.field rutCliente:Ljava/lang/String;

.field segmento:Ljava/lang/String;

.field servicio:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "idConvenio"    # Ljava/lang/String;
    .param p3, "codEFT"    # Ljava/lang/String;
    .param p4, "idCliente"    # Ljava/lang/String;
    .param p5, "segmento"    # Ljava/lang/String;
    .param p6, "msgId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 27
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 28
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->usuarioAlt:Ljava/lang/String;

    .line 29
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->codCanal:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->rutCliente:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->segmento:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->idConvenio:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->codEFT:Ljava/lang/String;

    .line 34
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->SERVICIO:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->servicio:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->idCliente:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->msgId:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getCodCanal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->codCanal:Ljava/lang/String;

    return-object v0
.end method

.method public getCodEFT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->codEFT:Ljava/lang/String;

    return-object v0
.end method

.method public getIdConvenio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->idConvenio:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->codCanal:Ljava/lang/String;

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->rutCliente:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->segmento:Ljava/lang/String;

    goto :goto_0

    .line 54
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->idConvenio:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->codEFT:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->servicio:Ljava/lang/String;

    goto :goto_0

    .line 61
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->idCliente:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->msgId:Ljava/lang/String;

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

    .line 123
    :goto_0
    return-void

    .line 82
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 83
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 87
    const-string v0, "CANAL-ID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 91
    const-string v0, "RUTCLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 96
    const-string v0, "SEGMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 101
    const-string v0, "IDCONVENIO1"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 104
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 105
    const-string v0, "IDFCONV"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 110
    const-string v0, "SERVICIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 114
    const-string v0, "IDCLIENTE1"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 118
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

.method public getRutCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->rutCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->segmento:Ljava/lang/String;

    return-object v0
.end method

.method public getUsuarioAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDetalleDesafioSuscripciones;->usuarioAlt:Ljava/lang/String;

    return-object v0
.end method
