.class public Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "AccionesVentaConfirmaRequest.java"


# instance fields
.field private input:Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 23
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 39
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 40
    const-string v0, "INPUT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setInput(Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;)V
    .locals 0
    .param p1, "input"    # Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;

    .prologue
    .line 52
    iput-object p1, p0, Lcl/santander/santanderCL/request/AccionesVentaConfirmaRequest;->input:Lcl/santander/santanderCL/data/request/InputAccionesVentaConfirma;

    .line 53
    return-void
.end method
