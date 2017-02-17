.class public Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;
.super Ljava/lang/Object;
.source "CruceProductoOnlineResponse.java"

# interfaces
.implements Lcl/santander/santanderCL/data/response/ResponseBase;


# instance fields
.field private cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field private escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

.field private info:Lcl/santander/santanderCL/data/response/Info;

.field private inversiones_AHR:Lcl/santander/santanderCL/data/MatrizInversiones;

.field private lineasCreditos:Lcl/santander/santanderCL/data/MatrizProductos;

.field private tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

.field private totalConsolidado:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCuentas()Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    return-object v0
.end method

.method public getEscalares()Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    return-object v0
.end method

.method public getInfo()Lcl/santander/santanderCL/data/response/Info;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    return-object v0
.end method

.method public getInversionesCuentasAhorro()Lcl/santander/santanderCL/data/MatrizInversiones;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->inversiones_AHR:Lcl/santander/santanderCL/data/MatrizInversiones;

    return-object v0
.end method

.method public getLineasCreditos()Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->lineasCreditos:Lcl/santander/santanderCL/data/MatrizProductos;

    return-object v0
.end method

.method public getNombreApellidos()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getNombrePersona()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getNombrePersona()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getApellidoPaterno()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getApellidoPaterno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_1
    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getApellidoMaterno()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getApellidoMaterno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumeroDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getNumeroDocumento()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumeroPersona()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getNumeroPersona()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$PERFIL;->SIN_PERFIL:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    goto :goto_0
.end method

.method public getTarjetas()Lcl/santander/santanderCL/data/MatrizProductos;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    return-object v0
.end method

.method public getTipoPersona()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;->getTipoPersona()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalConsolidado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 6
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/ErrorParseException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v4, Lcl/santander/santanderCL/data/MatrizProductos;

    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->CUENTA:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-direct {v4, v5}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 47
    new-instance v4, Lcl/santander/santanderCL/data/MatrizProductos;

    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-direct {v4, v5}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->lineasCreditos:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 48
    new-instance v4, Lcl/santander/santanderCL/data/MatrizProductos;

    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->TARJETAS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-direct {v4, v5}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 53
    new-instance v4, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-direct {v4}, Lcl/santander/santanderCL/data/MatrizInversiones;-><init>()V

    iput-object v4, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->inversiones_AHR:Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 54
    iget-object v4, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->inversiones_AHR:Lcl/santander/santanderCL/data/MatrizInversiones;

    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 55
    if-eqz p1, :cond_4

    .line 56
    const-string v4, "OUTPUT"

    invoke-virtual {p1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, "root":Ljava/lang/Object;
    if-eqz v3, :cond_4

    instance-of v4, v3, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 62
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "INFO"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, "data":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 64
    new-instance v4, Lcl/santander/santanderCL/data/response/Info;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lcl/santander/santanderCL/data/response/Info;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->info:Lcl/santander/santanderCL/data/response/Info;

    :cond_0
    move-object v4, v3

    .line 67
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "ESCALARES"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .restart local v1    # "data":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 69
    new-instance v4, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;-><init>(Lorg/ksoap2/serialization/SoapObject;)V

    iput-object v4, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    .line 73
    :cond_1
    check-cast v3, Lorg/ksoap2/serialization/SoapObject;

    .end local v3    # "root":Ljava/lang/Object;
    const-string v4, "MATRICES"

    invoke-virtual {v3, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .restart local v1    # "data":Ljava/lang/Object;
    if-eqz v1, :cond_4

    move-object v4, v1

    .line 75
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "MATRIZCAPTACIONES"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, "matrices":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_2

    .line 78
    new-instance v0, Lcl/santander/santanderCL/data/MatrizProductos;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "matrices":Ljava/lang/Object;
    sget-object v4, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->CAPTACIONES:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-direct {v0, v2, v4}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V

    .line 79
    .local v0, "aux":Lcl/santander/santanderCL/data/MatrizProductos;
    invoke-virtual {p0, v0}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->procesarProductos(Lcl/santander/santanderCL/data/MatrizProductos;)V

    .end local v0    # "aux":Lcl/santander/santanderCL/data/MatrizProductos;
    :cond_2
    move-object v4, v1

    .line 82
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "MATRIZACTIVOS"

    invoke-virtual {v4, v5}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    .restart local v2    # "matrices":Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_3

    .line 85
    new-instance v0, Lcl/santander/santanderCL/data/MatrizProductos;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "matrices":Ljava/lang/Object;
    sget-object v4, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->ACTIVOS:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-direct {v0, v2, v4}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V

    .line 86
    .restart local v0    # "aux":Lcl/santander/santanderCL/data/MatrizProductos;
    invoke-virtual {p0, v0}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->procesarProductos(Lcl/santander/santanderCL/data/MatrizProductos;)V

    .line 89
    .end local v0    # "aux":Lcl/santander/santanderCL/data/MatrizProductos;
    :cond_3
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "data":Ljava/lang/Object;
    const-string v4, "MATRIZPASIVOS"

    invoke-virtual {v1, v4}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    .restart local v2    # "matrices":Ljava/lang/Object;
    if-eqz v2, :cond_4

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_4

    .line 92
    new-instance v0, Lcl/santander/santanderCL/data/MatrizProductos;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "matrices":Ljava/lang/Object;
    sget-object v4, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->PASIVOS:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-direct {v0, v2, v4}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V

    .line 93
    .restart local v0    # "aux":Lcl/santander/santanderCL/data/MatrizProductos;
    invoke-virtual {p0, v0}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->procesarProductos(Lcl/santander/santanderCL/data/MatrizProductos;)V

    .line 104
    .end local v0    # "aux":Lcl/santander/santanderCL/data/MatrizProductos;
    :cond_4
    return-void
.end method

.method public procesarProductos(Lcl/santander/santanderCL/data/MatrizProductos;)V
    .locals 14
    .param p1, "productos"    # Lcl/santander/santanderCL/data/MatrizProductos;

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x2

    .line 110
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/MatrizProductos;->getMatriz()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    return-void

    .line 110
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 112
    .local v9, "producto":Lcl/santander/santanderCL/data/response/ItemProducto;
    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getAgrupacionComercial()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 114
    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getAgrupacionComercial()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->values()[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v9, v0}, Lcl/santander/santanderCL/data/response/ItemProducto;->setTipo(Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)V

    .line 117
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponible()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponible()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getTotal()D

    move-result-wide v1

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponible()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lcl/santander/santanderCL/utils/Utils;->convertirImporteADouble(Ljava/lang/String;I)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->setTotal(D)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->procesarDivisa(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0, v9}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponible()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponible()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->lineasCreditos:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->lineasCreditos:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getTotal()D

    move-result-wide v1

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponible()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lcl/santander/santanderCL/utils/Utils;->convertirImporteADouble(Ljava/lang/String;I)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->setTotal(D)V

    .line 137
    :cond_3
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->lineasCreditos:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->procesarDivisa(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->lineasCreditos:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0, v9}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    goto/16 :goto_0

    .line 142
    :pswitch_3
    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCupo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCupo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getTotal()D

    move-result-wide v1

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCupo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lcl/santander/santanderCL/utils/Utils;->convertirImporteADouble(Ljava/lang/String;I)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->setTotal(D)V

    .line 148
    :cond_4
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->procesarDivisa(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0, v9}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    goto/16 :goto_0

    .line 155
    :pswitch_4
    iget-object v11, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->inversiones_AHR:Lcl/santander/santanderCL/data/MatrizInversiones;

    new-instance v0, Lcl/santander/santanderCL/data/response/ItemInversion;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DESC_PRODUCTO:[Ljava/lang/String;

    aget-object v1, v1, v13

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoUtilizadoScreen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcl/santander/santanderCL/utils/Constant;->DESC_PRODUCTO:[Ljava/lang/String;

    aget-object v6, v6, v13

    sget-object v7, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-direct/range {v0 .. v7}, Lcl/santander/santanderCL/data/response/ItemInversion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    invoke-virtual {v11, v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->add(Lcl/santander/santanderCL/data/response/ItemInversion;)V

    goto/16 :goto_0

    .line 113
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setEscalares(Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;)V
    .locals 0
    .param p1, "escalares"    # Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    .prologue
    .line 183
    iput-object p1, p0, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    .line 184
    return-void
.end method
