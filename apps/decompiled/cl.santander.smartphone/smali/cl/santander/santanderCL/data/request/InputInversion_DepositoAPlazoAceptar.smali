.class public Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputInversion_DepositoAPlazoAceptar.java"


# instance fields
.field msgid:Ljava/lang/String;

.field rut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "msgid"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 16
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;->rut:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;->msgid:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 28
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;->rut:Ljava/lang/String;

    goto :goto_0

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 22
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
    .line 34
    const/4 v0, 0x2

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 44
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 45
    const-string v0, "RUT-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 49
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;->rut:Ljava/lang/String;

    return-object v0
.end method
