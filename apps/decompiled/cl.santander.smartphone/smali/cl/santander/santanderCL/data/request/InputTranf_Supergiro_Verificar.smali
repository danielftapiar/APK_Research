.class public Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputTranf_Supergiro_Verificar.java"


# instance fields
.field datosContacto:Ljava/lang/String;

.field datosOperacion:Ljava/lang/String;

.field idOperacion:Ljava/lang/String;

.field matrizDesafio:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field rutCliente:Ljava/lang/String;

.field segmento:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rutCliente"    # Ljava/lang/String;
    .param p2, "matrizDesafio"    # Ljava/lang/String;
    .param p3, "segmento"    # Ljava/lang/String;
    .param p4, "datosOperacion"    # Ljava/lang/String;
    .param p5, "datosContacto"    # Ljava/lang/String;
    .param p6, "msgid"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 33
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 34
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->usuarioAlt:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->rutCliente:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->matrizDesafio:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->segmento:Ljava/lang/String;

    .line 39
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->IDOPERACION_TRANSF:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->idOperacion:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->datosOperacion:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->datosContacto:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->msgid:Ljava/lang/String;

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

    .line 65
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->rutCliente:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->matrizDesafio:Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->segmento:Ljava/lang/String;

    goto :goto_0

    .line 57
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->idOperacion:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->datosOperacion:Ljava/lang/String;

    goto :goto_0

    .line 61
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->datosContacto:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Verificar;->msgid:Ljava/lang/String;

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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x8

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 81
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 82
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 86
    const-string v0, "RUTCLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 90
    const-string v0, "MATRIZDESAFIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 94
    const-string v0, "SEGMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 98
    const-string v0, "IDOPERACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 101
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 102
    const-string v0, "DATOSOPERACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 106
    const-string v0, "DATOSCONTACTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 110
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 78
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
    .end packed-switch
.end method
