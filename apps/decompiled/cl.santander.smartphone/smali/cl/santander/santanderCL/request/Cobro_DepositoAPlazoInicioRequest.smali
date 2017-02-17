.class public Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "Cobro_DepositoAPlazoInicioRequest.java"


# instance fields
.field private input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;->input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 20
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;->input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 36
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 37
    const-string v0, "INPUT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setInput(Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;)V
    .locals 0
    .param p1, "input"    # Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;

    .prologue
    .line 49
    iput-object p1, p0, Lcl/santander/santanderCL/request/Cobro_DepositoAPlazoInicioRequest;->input:Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoInicio;

    .line 50
    return-void
.end method
