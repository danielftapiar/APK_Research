.class public Lcl/santander/santanderCL/request/AccionesCompraRiesgoRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "AccionesCompraRiesgoRequest.java"


# instance fields
.field private input:Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/request/AccionesCompraRiesgoRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 19
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/request/AccionesCompraRiesgoRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;

    goto :goto_0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 34
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 35
    const-string v0, "INPUT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setInput(Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;)V
    .locals 0
    .param p1, "input"    # Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;

    .prologue
    .line 47
    iput-object p1, p0, Lcl/santander/santanderCL/request/AccionesCompraRiesgoRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;

    .line 48
    return-void
.end method
