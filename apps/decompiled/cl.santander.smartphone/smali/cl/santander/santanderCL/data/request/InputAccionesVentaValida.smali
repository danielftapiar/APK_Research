.class public Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputAccionesVentaValida.java"


# instance fields
.field cuentaCustodia:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field rut:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "cuentaCustodia"    # Ljava/lang/String;
    .param p3, "msgid"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 21
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->rut:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->cuentaCustodia:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 25
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->usuarioAlt:Ljava/lang/String;

    .line 26
    if-nez p3, :cond_0

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->msgid:Ljava/lang/String;

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->msgid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCuentaCustodia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->cuentaCustodia:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->rut:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->cuentaCustodia:Ljava/lang/String;

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 44
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 35
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
    .line 52
    const/4 v0, 0x4

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

    .line 80
    :goto_0
    return-void

    .line 62
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 63
    const-string v0, "RUT_CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 67
    const-string v0, "CUENTA_CUSTODIA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 70
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 71
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 74
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 75
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesVentaValida;->rut:Ljava/lang/String;

    return-object v0
.end method
