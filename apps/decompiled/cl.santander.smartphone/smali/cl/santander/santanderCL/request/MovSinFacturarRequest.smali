.class public Lcl/santander/santanderCL/request/MovSinFacturarRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "MovSinFacturarRequest.java"


# instance fields
.field private input:Lcl/santander/santanderCL/data/request/InputMovSinFacturar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Lcl/santander/santanderCL/data/request/InputMovSinFacturar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/santanderCL/request/MovSinFacturarRequest;->input:Lcl/santander/santanderCL/data/request/InputMovSinFacturar;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 18
    packed-switch p1, :pswitch_data_0

    .line 22
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/request/MovSinFacturarRequest;->input:Lcl/santander/santanderCL/data/request/InputMovSinFacturar;

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 37
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 38
    const-string v0, "INPUT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setInput(Lcl/santander/santanderCL/data/request/InputMovSinFacturar;)V
    .locals 0
    .param p1, "input"    # Lcl/santander/santanderCL/data/request/InputMovSinFacturar;

    .prologue
    .line 50
    iput-object p1, p0, Lcl/santander/santanderCL/request/MovSinFacturarRequest;->input:Lcl/santander/santanderCL/data/request/InputMovSinFacturar;

    .line 51
    return-void
.end method
