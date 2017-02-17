.class public Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputRecargaPideDesafio.java"


# instance fields
.field canalID:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field rut:Ljava/lang/String;

.field segmento:Ljava/lang/String;

.field usuario_Alt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "segmento"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 25
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->rut:Ljava/lang/String;

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

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->usuario_Alt:Ljava/lang/String;

    .line 30
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->canalID:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->segmento:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->usuario_Alt:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->canalID:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->rut:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->segmento:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputRecargaPideDesafio;->divisa:Ljava/lang/String;

    goto :goto_0

    .line 39
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

    .line 92
    :goto_0
    return-void

    .line 67
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 68
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 73
    const-string v0, "CANAL-ID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 78
    const-string v0, "RUTCLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 82
    const-string v0, "SEGMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 86
    const-string v0, "DIVISA"

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
