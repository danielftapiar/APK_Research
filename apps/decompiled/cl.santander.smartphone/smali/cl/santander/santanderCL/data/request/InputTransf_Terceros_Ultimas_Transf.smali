.class public Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputTransf_Terceros_Ultimas_Transf.java"


# instance fields
.field msgid:Ljava/lang/String;

.field rut:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 20
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;->rut:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 22
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;->usuarioAlt:Ljava/lang/String;

    .line 23
    const-string v1, ""

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;->msgid:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;->rut:Ljava/lang/String;

    goto :goto_0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 34
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x3

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 52
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 53
    const-string v0, "RUT-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 57
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 61
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;->rut:Ljava/lang/String;

    return-object v0
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Ultimas_Transf;->rut:Ljava/lang/String;

    .line 73
    return-void
.end method
