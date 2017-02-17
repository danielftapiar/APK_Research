.class public Lcl/santander/santanderCL/data/request/InputConsultaCheques;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputConsultaCheques.java"


# instance fields
.field canalID:Ljava/lang/String;

.field ccc:Ljava/lang/String;

.field cheque:Ljava/lang/String;

.field divisa:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ccc"    # Ljava/lang/String;
    .param p2, "divisa"    # Ljava/lang/String;
    .param p3, "cheque"    # Ljava/lang/String;
    .param p4, "msgid"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 32
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 33
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->usuarioAlt:Ljava/lang/String;

    .line 34
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->canalID:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->ccc:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->divisa:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->cheque:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->msgid:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getCanalID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->canalID:Ljava/lang/String;

    return-object v0
.end method

.method public getCcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->ccc:Ljava/lang/String;

    return-object v0
.end method

.method public getCheque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->cheque:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 57
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->canalID:Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->ccc:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->divisa:Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->cheque:Ljava/lang/String;

    goto :goto_0

    .line 45
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

    .line 95
    :goto_0
    return-void

    .line 73
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 74
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 78
    const-string v0, "CANAL-ID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 82
    const-string v0, "CCC"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 86
    const-string v0, "DIVISA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 90
    const-string v0, "CHEQUE"

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

.method public getUsuarioAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputConsultaCheques;->usuarioAlt:Ljava/lang/String;

    return-object v0
.end method
