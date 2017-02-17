.class public Lcl/santander/santanderCL/data/request/InputDepositoPlazo;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputDepositoPlazo.java"


# instance fields
.field cantidadregistros:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field numeroIdentificacion:Ljava/lang/String;

.field tipoConsulta:Ljava/lang/String;

.field tipoIdentificacionTitular:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "msgid"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 20
    const-string v0, "D"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->tipoConsulta:Ljava/lang/String;

    .line 21
    const-string v0, "R"

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->tipoIdentificacionTitular:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->numeroIdentificacion:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcl/santander/santanderCL/utils/Constant;->TOTAL_REGISTROS_DEPOSITOPLAZO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->cantidadregistros:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->msgid:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCantidadregistros()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->cantidadregistros:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroIdentificacion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->numeroIdentificacion:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->tipoConsulta:Ljava/lang/String;

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->tipoIdentificacionTitular:Ljava/lang/String;

    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->numeroIdentificacion:Ljava/lang/String;

    goto :goto_0

    .line 37
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->cantidadregistros:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 29
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
    .line 47
    const/4 v0, 0x5

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

    .line 80
    :goto_0
    return-void

    .line 56
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 57
    const-string v0, "TIPOCONSULTA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 61
    const-string v0, "TIPOIDENTIFICACIONTITULAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 65
    const-string v0, "NUMEROIDENTIFICACION"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 70
    const-string v0, "CANTIDADREGISTROSASELECCIONAR"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 74
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 53
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

.method public getTipoConsulta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->tipoConsulta:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoIdentificacionTitular()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputDepositoPlazo;->tipoIdentificacionTitular:Ljava/lang/String;

    return-object v0
.end method
