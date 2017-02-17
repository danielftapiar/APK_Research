.class public Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputCobro_DepositoAPlazoInicio.java"


# instance fields
.field msgid:Ljava/lang/String;

.field rut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "msgid"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 18
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;->rut:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;->msgid:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;->rut:Ljava/lang/String;

    goto :goto_0

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 48
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 49
    const-string v0, "RUT_CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 54
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;->rut:Ljava/lang/String;

    return-object v0
.end method
