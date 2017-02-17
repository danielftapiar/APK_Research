.class public Lcl/santander/santanderCL/data/request/InputLoginRequest;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputLoginRequest.java"


# instance fields
.field private idCanal:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private rut:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "idCanal"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 23
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->rut:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->pin:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->idCanal:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getIdCanal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->idCanal:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->rut:Ljava/lang/String;

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->pin:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->idCanal:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 81
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 82
    const-string v0, "Rut"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 87
    const-string v0, "Pin"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 91
    const-string v0, "IDCANAL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->rut:Ljava/lang/String;

    return-object v0
.end method

.method public setIdCanal(Ljava/lang/String;)V
    .locals 0
    .param p1, "idCanal"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->idCanal:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->pin:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputLoginRequest;->rut:Ljava/lang/String;

    .line 34
    return-void
.end method
