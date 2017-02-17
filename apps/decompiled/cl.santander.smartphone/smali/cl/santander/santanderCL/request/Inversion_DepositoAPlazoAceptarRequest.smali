.class public Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoAceptarRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "Inversion_DepositoAPlazoAceptarRequest.java"


# instance fields
.field private input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoAceptarRequest;->input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;

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
    iget-object v0, p0, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoAceptarRequest;->input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;

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
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 38
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 39
    const-string v0, "INPUT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setInput(Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;)V
    .locals 0
    .param p1, "input"    # Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;

    .prologue
    .line 51
    iput-object p1, p0, Lcl/santander/santanderCL/request/Inversion_DepositoAPlazoAceptarRequest;->input:Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoAceptar;

    .line 52
    return-void
.end method
