.class public Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputTranf_Supergiro_Realizar.java"


# instance fields
.field ccc:Ljava/lang/String;

.field codEstado:Ljava/lang/String;

.field codotp:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field datosOperacion:Ljava/lang/String;

.field fechaAlta:Ljava/lang/String;

.field idOperacion:Ljava/lang/String;

.field idtrx:Ljava/lang/String;

.field monto:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field numdoCBenef:Ljava/lang/String;

.field numdoCorigen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "datosOperacion"    # Ljava/lang/String;
    .param p2, "idtrx"    # Ljava/lang/String;
    .param p3, "codotp"    # Ljava/lang/String;
    .param p4, "numdoCBenef"    # Ljava/lang/String;
    .param p5, "numdoCorigen"    # Ljava/lang/String;
    .param p6, "fechaAlta"    # Ljava/lang/String;
    .param p7, "ccc"    # Ljava/lang/String;
    .param p8, "cuenta"    # Ljava/lang/String;
    .param p9, "monto"    # Ljava/lang/String;
    .param p10, "msgid"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 34
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->IDOPERACION_TRANSF_1:Ljava/lang/String;

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->idOperacion:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->datosOperacion:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->idtrx:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->codotp:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->numdoCBenef:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->numdoCorigen:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->fechaAlta:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->ccc:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->cuenta:Ljava/lang/String;

    .line 43
    iput-object p9, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->monto:Ljava/lang/String;

    .line 44
    iput-object p10, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->msgid:Ljava/lang/String;

    .line 45
    const-string v0, "A"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->codEstado:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getCcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->ccc:Ljava/lang/String;

    return-object v0
.end method

.method public getCodEstado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->codEstado:Ljava/lang/String;

    return-object v0
.end method

.method public getCodotp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->codotp:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getDatosOperacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->datosOperacion:Ljava/lang/String;

    return-object v0
.end method

.method public getFechaAlta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->fechaAlta:Ljava/lang/String;

    return-object v0
.end method

.method public getIdOperacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->idOperacion:Ljava/lang/String;

    return-object v0
.end method

.method public getIdtrx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->idtrx:Ljava/lang/String;

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->monto:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNumdoCBenef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->numdoCBenef:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->idOperacion:Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->datosOperacion:Ljava/lang/String;

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->idtrx:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->codotp:Ljava/lang/String;

    goto :goto_0

    .line 61
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->numdoCBenef:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->codEstado:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->fechaAlta:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->numdoCorigen:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->ccc:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_9
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->cuenta:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_a
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->monto:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_b
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputTranf_Supergiro_Realizar;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xb

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 97
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 98
    const-string v0, "IDOPERACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 101
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 102
    const-string v0, "DATOSOPERACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 106
    const-string v0, "IDTRX"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 110
    const-string v0, "CODOTP"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 114
    const-string v0, "NUMDOCBENEF"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 118
    const-string v0, "CODESTADO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 121
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 122
    const-string v0, "FECHAALTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 125
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 126
    const-string v0, "NUMDOCORIGEN"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 129
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 130
    const-string v0, "CCC"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 133
    :pswitch_9
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 134
    const-string v0, "CUENTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 137
    :pswitch_a
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 138
    const-string v0, "MONTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 141
    :pswitch_b
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 142
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
