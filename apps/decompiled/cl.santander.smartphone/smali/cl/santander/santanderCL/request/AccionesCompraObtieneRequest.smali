.class public Lcl/santander/santanderCL/request/AccionesCompraObtieneRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "AccionesCompraObtieneRequest.java"


# instance fields
.field private input:Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcl/santander/santanderCL/request/AccionesCompraObtieneRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 17
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/request/AccionesCompraObtieneRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;

    goto :goto_0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 32
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 33
    const-string v0, "INPUT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setInput(Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;)V
    .locals 0
    .param p1, "input"    # Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;

    .prologue
    .line 45
    iput-object p1, p0, Lcl/santander/santanderCL/request/AccionesCompraObtieneRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesCompraObtiene;

    .line 46
    return-void
.end method
