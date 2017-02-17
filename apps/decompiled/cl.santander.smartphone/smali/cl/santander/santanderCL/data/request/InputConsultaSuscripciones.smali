.class public Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputConsultaSuscripciones.java"


# instance fields
.field codCana:Ljava/lang/String;

.field numConv:Ljava/lang/String;

.field numDoc:Ljava/lang/String;

.field numPagi:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "numDoc"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 25
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numDoc:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 27
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->usuarioAlt:Ljava/lang/String;

    .line 28
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CODCANAL:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->codCana:Ljava/lang/String;

    .line 29
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->NUMPAGI:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numPagi:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCodCana()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->codCana:Ljava/lang/String;

    return-object v0
.end method

.method public getNumConv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numConv:Ljava/lang/String;

    return-object v0
.end method

.method public getNumDoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numDoc:Ljava/lang/String;

    return-object v0
.end method

.method public getNumPagi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numPagi:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numDoc:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->codCana:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numConv:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numPagi:Ljava/lang/String;

    goto :goto_0

    .line 37
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
    .line 56
    const/4 v0, 0x5

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 66
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 67
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 72
    const-string v0, "NUMDOCU"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 76
    const-string v0, "CODCANA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 80
    const-string v0, "NUMCONV"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 84
    const-string v0, "NUMPAGI"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 63
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

.method public getUsuarioAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->usuarioAlt:Ljava/lang/String;

    return-object v0
.end method

.method public setCodCana(Ljava/lang/String;)V
    .locals 0
    .param p1, "codCana"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->codCana:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setNumConv(Ljava/lang/String;)V
    .locals 0
    .param p1, "numConv"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numConv:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setNumDoc(Ljava/lang/String;)V
    .locals 0
    .param p1, "numDoc"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numDoc:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setNumPagi(Ljava/lang/String;)V
    .locals 0
    .param p1, "numPagi"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->numPagi:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setUsuarioAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "usuarioAlt"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaSuscripciones;->usuarioAlt:Ljava/lang/String;

    .line 97
    return-void
.end method
