.class public Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputInversion_DepositoAPlazoSimular.java"


# instance fields
.field divisa:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field plazo:Ljava/lang/String;

.field rut:Ljava/lang/String;

.field subProducto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "msgid"    # Ljava/lang/String;
    .param p3, "subProducto"    # Ljava/lang/String;
    .param p4, "plazo"    # Ljava/lang/String;
    .param p5, "monto"    # Ljava/lang/String;
    .param p6, "divisa"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 24
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->rut:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->msgid:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->subProducto:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->plazo:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->monto:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->divisa:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 49
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->rut:Ljava/lang/String;

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->subProducto:Ljava/lang/String;

    goto :goto_0

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->plazo:Ljava/lang/String;

    goto :goto_0

    .line 44
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->monto:Ljava/lang/String;

    goto :goto_0

    .line 46
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputInversion_DepositoAPlazoSimular;->divisa:Ljava/lang/String;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x6

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 65
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 66
    const-string v0, "RUT-CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 70
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 71
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 74
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 75
    const-string v0, "SUB-PRODUCTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 78
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 79
    const-string v0, "PLAZO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 83
    const-string v0, "MONTO-INVERSION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 88
    const-string v0, "DIVISA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
