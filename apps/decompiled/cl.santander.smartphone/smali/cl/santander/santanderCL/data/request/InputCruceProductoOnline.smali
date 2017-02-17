.class public Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputCruceProductoOnline.java"


# instance fields
.field canalaConsultar:Ljava/lang/String;

.field cruceaConsultar:Ljava/lang/String;

.field entidad:Ljava/lang/String;

.field estadoRelacion:Ljava/lang/String;

.field idRecall:Ljava/lang/String;

.field numeroDocumento:Ljava/lang/String;

.field tipoDocumento:Ljava/lang/String;

.field usuarioAlt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "numeroDocumento"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 38
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->idRecall:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v0

    .line 40
    .local v0, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v0}, Lcl/santander/santanderCL/operations/IOperations;->getUSUARIO_ALT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->usuarioAlt:Ljava/lang/String;

    .line 41
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->ENTIDAD:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->entidad:Ljava/lang/String;

    .line 42
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->TIPODOCUMENTO:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->tipoDocumento:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->numeroDocumento:Ljava/lang/String;

    .line 44
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CANALACONSULTAR:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->canalaConsultar:Ljava/lang/String;

    .line 45
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CRUCEACONSULTAR:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->cruceaConsultar:Ljava/lang/String;

    .line 46
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->ESTADORELACION:Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->estadoRelacion:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getCanalaConsultar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->canalaConsultar:Ljava/lang/String;

    return-object v0
.end method

.method public getCruceaConsultar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->cruceaConsultar:Ljava/lang/String;

    return-object v0
.end method

.method public getEntidad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->entidad:Ljava/lang/String;

    return-object v0
.end method

.method public getEstadoRelacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->estadoRelacion:Ljava/lang/String;

    return-object v0
.end method

.method public getIdRecall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->idRecall:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->numeroDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->idRecall:Ljava/lang/String;

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->usuarioAlt:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->entidad:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->tipoDocumento:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->numeroDocumento:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->canalaConsultar:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->cruceaConsultar:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->estadoRelacion:Ljava/lang/String;

    goto :goto_0

    .line 57
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x8

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 91
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 92
    const-string v0, "ID-RECALL"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 96
    const-string v0, "USUARIO-ALT"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 100
    const-string v0, "ENTIDAD"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 104
    const-string v0, "TIPODOCUMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 108
    const-string v0, "NUMERODOCUMENTO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 112
    const-string v0, "CANALACONSULTAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 116
    const-string v0, "CRUCEACONSULTAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 120
    const-string v0, "ESTADORELACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 89
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
    .end packed-switch
.end method

.method public getTipoDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->tipoDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getUsuarioAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->usuarioAlt:Ljava/lang/String;

    return-object v0
.end method

.method public setNumeroDocumento(Ljava/lang/String;)V
    .locals 0
    .param p1, "numeroDocumento"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->numeroDocumento:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setUsuarioAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "usuarioAlt"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputCruceProductoOnline;->usuarioAlt:Ljava/lang/String;

    .line 135
    return-void
.end method
