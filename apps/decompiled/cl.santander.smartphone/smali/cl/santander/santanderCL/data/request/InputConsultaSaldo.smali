.class public Lcl/santander/santanderCL/data/request/InputConsultaSaldo;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputConsultaSaldo.java"


# instance fields
.field divisa:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field numeroCuenta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroCuenta"    # Ljava/lang/String;
    .param p2, "msgid"    # Ljava/lang/String;
    .param p3, "divisa"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 25
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->numeroCuenta:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->divisa:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->msgid:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->numeroCuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->numeroCuenta:Ljava/lang/String;

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->divisa:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 36
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
    .line 52
    const/4 v0, 0x3

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 62
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 63
    const-string v0, "NUMERO_CUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 68
    const-string v0, "DIVISA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 72
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDivisa(Ljava/lang/String;)V
    .locals 0
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->divisa:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setNumeroCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroCuenta"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSaldo;->numeroCuenta:Ljava/lang/String;

    .line 86
    return-void
.end method
