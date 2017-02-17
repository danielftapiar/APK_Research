.class public Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputCreditosConsumoSolicitud.java"


# instance fields
.field email:Ljava/lang/String;

.field montoSolicitado:Ljava/lang/String;

.field nomCliente:Ljava/lang/String;

.field numCelular:Ljava/lang/String;

.field numDocumento:Ljava/lang/String;

.field plazo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nomCliente"    # Ljava/lang/String;
    .param p2, "rut"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "numCelular"    # Ljava/lang/String;
    .param p5, "montoSolicitado"    # Ljava/lang/String;
    .param p6, "plazo"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 29
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->nomCliente:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numDocumento:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->email:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numCelular:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->montoSolicitado:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->plazo:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoSolicitado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->montoSolicitado:Ljava/lang/String;

    return-object v0
.end method

.method public getNomCliente()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->nomCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getNumCelular()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numCelular:Ljava/lang/String;

    return-object v0
.end method

.method public getPlazo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->plazo:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->nomCliente:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numDocumento:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->email:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numCelular:Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->montoSolicitado:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->plazo:Ljava/lang/String;

    goto :goto_0

    .line 41
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
    .line 62
    const/4 v0, 0x6

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 69
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 72
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 73
    const-string v0, "NOMCLIENTE"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 76
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 77
    const-string v0, "NUMDOCUMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 81
    const-string v0, "EMAIL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 85
    const-string v0, "NUMCELULAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 88
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 89
    const-string v0, "MONTOSOLICITADO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 93
    const-string v0, "PLAZO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 69
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
    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->email:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setMontoSolicitado(Ljava/lang/String;)V
    .locals 0
    .param p1, "montoSolicitado"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->montoSolicitado:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setNomCliente(Ljava/lang/String;)V
    .locals 0
    .param p1, "nomCliente"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->nomCliente:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setNumCelular(Ljava/lang/String;)V
    .locals 0
    .param p1, "numCelular"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numCelular:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setPlazo(Ljava/lang/String;)V
    .locals 0
    .param p1, "plazo"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->plazo:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setRut(Ljava/lang/String;)V
    .locals 1
    .param p1, "rut"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numDocumento:Ljava/lang/String;

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputCreditosConsumoSolicitud;->numDocumento:Ljava/lang/String;

    .line 118
    return-void
.end method
