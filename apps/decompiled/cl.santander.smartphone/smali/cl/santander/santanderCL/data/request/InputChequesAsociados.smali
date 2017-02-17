.class public Lcl/santander/santanderCL/data/request/InputChequesAsociados;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputChequesAsociados.java"


# instance fields
.field cuenta:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field numeroMovimiento:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cuenta"    # Ljava/lang/String;
    .param p2, "divisa"    # Ljava/lang/String;
    .param p3, "numeroMovimiento"    # Ljava/lang/String;
    .param p4, "msgid"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 21
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->cuenta:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->divisa:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->numeroMovimiento:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->msgid:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroMovimiento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->numeroMovimiento:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 40
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->cuenta:Ljava/lang/String;

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->divisa:Ljava/lang/String;

    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->numeroMovimiento:Ljava/lang/String;

    goto :goto_0

    .line 37
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputChequesAsociados;->msgid:Ljava/lang/String;

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
    .line 46
    const/4 v0, 0x4

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 56
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 57
    const-string v0, "NROCUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 61
    const-string v0, "DIVISA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 65
    const-string v0, "NROMOVIMIENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 68
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 69
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
