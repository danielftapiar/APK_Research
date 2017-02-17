.class public Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputAccionesCompraObtiene.java"


# instance fields
.field msgid:Ljava/lang/String;

.field rut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "msgid"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;->rut:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;->msgid:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 20
    packed-switch p1, :pswitch_data_0

    .line 26
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;->rut:Ljava/lang/String;

    goto :goto_0

    .line 24
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 20
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
    .line 32
    const/4 v0, 0x2

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 42
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 43
    const-string v0, "RUT_CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 47
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;->rut:Ljava/lang/String;

    return-object v0
.end method
