.class public Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "DetalleImperdiblesRequest.java"


# instance fields
.field idComercio:Ljava/lang/String;

.field ratio:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "comercio"    # Ljava/lang/String;
    .param p2, "ratio"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 18
    iput-object p1, p0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;->idComercio:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;->ratio:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getIdComercio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;->idComercio:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 35
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;->idComercio:Ljava/lang/String;

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;->ratio:Ljava/lang/String;

    goto :goto_0

    .line 28
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
    .line 41
    const/4 v0, 0x2

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 50
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 51
    const-string v0, "idComercio"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 54
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 55
    const-string v0, "ratio"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRatio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;->ratio:Ljava/lang/String;

    return-object v0
.end method

.method public setIdComercio(Ljava/lang/String;)V
    .locals 0
    .param p1, "idComercio"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;->idComercio:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRatio(Ljava/lang/String;)V
    .locals 0
    .param p1, "ratio"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcl/santander/santanderCL/request/DetalleImperdiblesRequest;->ratio:Ljava/lang/String;

    .line 76
    return-void
.end method
