.class public Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputEstadoDeCuenta.java"


# instance fields
.field strCentAlt:Ljava/lang/String;

.field strCodEnt:Ljava/lang/String;

.field strCuenta:Ljava/lang/String;

.field strMoneda:Ljava/lang/String;

.field strRut:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "strRut"    # Ljava/lang/String;
    .param p2, "strCodEnt"    # Ljava/lang/String;
    .param p3, "strCentAlt"    # Ljava/lang/String;
    .param p4, "strMoneda"    # Ljava/lang/String;
    .param p5, "strCuenta"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 26
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strRut:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCodEnt:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCentAlt:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strMoneda:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCuenta:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 57
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strRut:Ljava/lang/String;

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCodEnt:Ljava/lang/String;

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCentAlt:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strMoneda:Ljava/lang/String;

    goto :goto_0

    .line 54
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCuenta:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x5

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 73
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 74
    const-string v0, "est:strRut"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 79
    const-string v0, "est:strCodEnt"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 83
    const-string v0, "est:strCentAlt"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 87
    const-string v0, "est:strMoneda"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 90
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 91
    const-string v0, "est:strCuenta"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getStrCentAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCentAlt:Ljava/lang/String;

    return-object v0
.end method

.method public getStrCodEnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCodEnt:Ljava/lang/String;

    return-object v0
.end method

.method public getStrCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMoneda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strMoneda:Ljava/lang/String;

    return-object v0
.end method

.method public getStrRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strRut:Ljava/lang/String;

    return-object v0
.end method

.method public setStrCentAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "strCentAlt"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCentAlt:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setStrCodEnt(Ljava/lang/String;)V
    .locals 0
    .param p1, "strCodEnt"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCodEnt:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setStrCuenta(Ljava/lang/String;)V
    .locals 0
    .param p1, "strCuenta"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strCuenta:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setStrMoneda(Ljava/lang/String;)V
    .locals 0
    .param p1, "strMoneda"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strMoneda:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setStrRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "strRut"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputEstadoDeCuenta;->strRut:Ljava/lang/String;

    .line 117
    return-void
.end method
