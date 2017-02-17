.class public Lcl/santander/santanderCL/request/Transf_Terceros_InicioRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "Transf_Terceros_InicioRequest.java"


# instance fields
.field input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Inicio;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Inicio;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/santanderCL/request/Transf_Terceros_InicioRequest;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Inicio;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 18
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/request/Transf_Terceros_InicioRequest;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Inicio;

    goto :goto_0

    .line 14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 24
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

.method public setInput(Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Inicio;)V
    .locals 0
    .param p1, "input"    # Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Inicio;

    .prologue
    .line 47
    iput-object p1, p0, Lcl/santander/santanderCL/request/Transf_Terceros_InicioRequest;->input:Lcl/santander/santanderCL/data/request/InputTransf_Terceros_Inicio;

    .line 48
    return-void
.end method
