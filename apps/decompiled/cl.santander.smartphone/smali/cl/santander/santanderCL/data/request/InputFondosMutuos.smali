.class public Lcl/santander/santanderCL/data/request/InputFondosMutuos;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputFondosMutuos.java"


# instance fields
.field private rut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "rutCliente"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputFondosMutuos;->rut:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputFondosMutuos;->rut:Ljava/lang/String;

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
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 38
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 39
    const-string v0, "RUTCLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputFondosMutuos;->rut:Ljava/lang/String;

    return-object v0
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputFondosMutuos;->rut:Ljava/lang/String;

    .line 52
    return-void
.end method
