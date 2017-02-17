.class public Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputAccionesCompraConfirmar.java"


# instance fields
.field cuentaCustodia:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field rut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "cuentaCustodia"    # Ljava/lang/String;
    .param p3, "msgid"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 18
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->rut:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->cuentaCustodia:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->msgid:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCuentaCustodia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->cuentaCustodia:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->rut:Ljava/lang/String;

    goto :goto_0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->cuentaCustodia:Ljava/lang/String;

    goto :goto_0

    .line 32
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 25
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
    .line 40
    const/4 v0, 0x3

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 50
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 51
    const-string v0, "RUT_CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 54
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 55
    const-string v0, "CUENTA_CUSTODIA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 59
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 47
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
    .line 71
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraConfirmar;->rut:Ljava/lang/String;

    return-object v0
.end method
