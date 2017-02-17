.class public Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputCobro_DepositoAPlazoConfirmar.java"


# instance fields
.field cuentaAbono:Ljava/lang/String;

.field email:Ljava/lang/String;

.field matrizDesafio:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field numeroOperacion:Ljava/lang/String;

.field rut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "numeroOperacion"    # Ljava/lang/String;
    .param p3, "matrizDesafio"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "cuentaAbono"    # Ljava/lang/String;
    .param p6, "msgid"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 24
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->rut:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->numeroOperacion:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->matrizDesafio:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->email:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->cuentaAbono:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->msgid:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getCuentaAbono()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->cuentaAbono:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMatrizDesafio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->matrizDesafio:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroOperacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->numeroOperacion:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->rut:Ljava/lang/String;

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->numeroOperacion:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->matrizDesafio:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->email:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->cuentaAbono:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 37
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
    .line 57
    const/4 v0, 0x6

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 67
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 68
    const-string v0, "RUT_CLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 72
    const-string v0, "NUMERO_OPERACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 76
    const-string v0, "MATRIZ_DESAFIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 80
    const-string v0, "E_MAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 84
    const-string v0, "CUENTA_ABONO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 88
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 64
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

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->rut:Ljava/lang/String;

    return-object v0
.end method

.method public setCuentaAbono(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuentaAbono"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->cuentaAbono:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->email:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setMatrizDesafio(Ljava/lang/String;)V
    .locals 0
    .param p1, "matrizDesafio"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->matrizDesafio:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->msgid:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setNumeroOperacion(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroOperacion"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->numeroOperacion:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCobro_DepositoAPlazoConfirmar;->rut:Ljava/lang/String;

    .line 101
    return-void
.end method
