.class public Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputAccionesCompraRiesgo.java"


# instance fields
.field calificado:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field nombreAccion:Ljava/lang/String;

.field rut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "calificado"    # Ljava/lang/String;
    .param p3, "nombreAccion"    # Ljava/lang/String;
    .param p4, "msgid"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 21
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->rut:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->calificado:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->nombreAccion:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->msgid:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCalificado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->calificado:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNombreAccion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->nombreAccion:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 39
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->rut:Ljava/lang/String;

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->calificado:Ljava/lang/String;

    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->nombreAccion:Ljava/lang/String;

    goto :goto_0

    .line 37
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x4

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 55
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 56
    const-string v0, "RUT_CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 60
    const-string v0, "CLI_CALIFICADO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 64
    const-string v0, "INSTRUMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 68
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->rut:Ljava/lang/String;

    return-object v0
.end method

.method public setCalificado(Ljava/lang/String;)V
    .locals 0
    .param p1, "calificado"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->calificado:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->msgid:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setNombreAccion(Ljava/lang/String;)V
    .locals 0
    .param p1, "nombreAccion"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->nombreAccion:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputAccionesCompraRiesgo;->rut:Ljava/lang/String;

    .line 81
    return-void
.end method
