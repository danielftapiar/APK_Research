.class public Lcl/santander/santanderCL/data/request/InputBuscarSucursal;
.super Lcl/santander/santanderCL/request/RequestBase;
.source "InputBuscarSucursal.java"


# instance fields
.field claveRellenado:Ljava/lang/String;

.field entidad:Ljava/lang/String;

.field filtro:Ljava/lang/String;

.field indRellamada:Ljava/lang/String;

.field lat:Ljava/lang/String;

.field lng:Ljava/lang/String;

.field msgid:Ljava/lang/String;

.field radio:Ljava/lang/String;

.field registros:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(DDILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "radio"    # I
    .param p6, "msgid"    # Ljava/lang/String;
    .param p7, "registros"    # I
    .param p8, "codFiltro"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcl/santander/santanderCL/request/RequestBase;-><init>()V

    .line 34
    invoke-direct {p0, p3, p4}, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->parseLatLng(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->lng:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->parseLatLng(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->lat:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->radio:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->msgid:Ljava/lang/String;

    .line 38
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->ENTIDAD:Ljava/lang/String;

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->entidad:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->registros:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->filtro:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private parseLatLng(D)Ljava/lang/String;
    .locals 10
    .param p1, "valor"    # D

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x3

    .line 46
    const-string v3, ""

    .line 47
    .local v3, "resp":Ljava/lang/String;
    const-string v4, ""

    .line 49
    .local v4, "strDecimales":Ljava/lang/String;
    double-to-int v2, p1

    .line 50
    .local v2, "entera":I
    int-to-double v5, v2

    sub-double v0, p1, v5

    .line 53
    .local v0, "decimales":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_0

    .line 57
    const-string v5, "0"

    invoke-static {v3, v8, v5}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v9, :cond_2

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0xa

    const-string v7, "0"

    invoke-static {v4, v6, v7}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorDcha(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    :goto_0
    if-gez v2, :cond_1

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    :cond_1
    return-object v3

    .line 65
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->entidad:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->lng:Ljava/lang/String;

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->lat:Ljava/lang/String;

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->radio:Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->indRellamada:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_5
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->claveRellenado:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_6
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->msgid:Ljava/lang/String;

    goto :goto_0

    .line 98
    :pswitch_7
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->registros:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_8
    iget-object v0, p0, Lcl/santander/santanderCL/data/request/InputBuscarSucursal;->filtro:Ljava/lang/String;

    goto :goto_0

    .line 81
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
    .end packed-switch
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x9

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 120
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 121
    const-string v0, "ENTIDAD"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 125
    :pswitch_1
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 126
    const-string v0, "VALOR_LONGITUD"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 131
    const-string v0, "VALOR_LATITUD"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_3
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 135
    const-string v0, "RADIO_BUSQUEDA"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 138
    :pswitch_4
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 139
    const-string v0, "IND-RELLAMADO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 142
    :pswitch_5
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 143
    const-string v0, "CLAVE-DE-RELLAMADO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 146
    :pswitch_6
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 147
    const-string v0, "MSGID"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 150
    :pswitch_7
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 151
    const-string v0, "CANT_REGS"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 154
    :pswitch_8
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 155
    const-string v0, "SERVICIO"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 118
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
    .end packed-switch
.end method
