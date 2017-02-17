.class public Lcl/santander/santanderCL/data/request/InputCreditosConsumoDatos;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputCreditosConsumoDatos.java"


# instance fields
.field rut:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 20
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoDatos;->rut:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 29
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoDatos;->rut:Ljava/lang/String;

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 45
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 46
    const-string v0, "NUMDOCUMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoDatos;->rut:Ljava/lang/String;

    return-object v0
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoDatos;->rut:Ljava/lang/String;

    .line 59
    return-void
.end method
