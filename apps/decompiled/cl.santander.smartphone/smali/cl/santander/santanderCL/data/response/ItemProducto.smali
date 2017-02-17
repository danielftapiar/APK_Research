.class public Lcl/santander/santanderCL/data/response/ItemProducto;
.super Ljava/lang/Object;
.source "ItemProducto.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MATRIZ:[I


# instance fields
.field agrupacionComercial:Ljava/lang/String;

.field codigoMoneda:Ljava/lang/String;

.field cupo:Ljava/lang/String;

.field estadoOperacion:Ljava/lang/String;

.field estadoRelacion:Ljava/lang/String;

.field glosaCorta:Ljava/lang/String;

.field glosaEstado:Ljava/lang/String;

.field grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field literal:Ljava/lang/String;

.field montoDisponible:Ljava/lang/String;

.field montoUtilizado:Ljava/lang/String;

.field nacional:Z

.field numeroContrato:Ljava/lang/String;

.field numeroPan:Ljava/lang/String;

.field oficinaContrato:Ljava/lang/String;

.field producto:Ljava/lang/String;

.field subProducto:Ljava/lang/String;

.field tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcl/santander/santanderCL/data/response/ItemProducto;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->values()[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_AHORRO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_VISTA:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->DEPOSITO_PLAZO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcl/santander/santanderCL/data/response/ItemProducto;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MATRIZ()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcl/santander/santanderCL/data/response/ItemProducto;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MATRIZ:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->values()[Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->ACTIVOS:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->CAPTACIONES:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->PASIVOS:Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/santander/santanderCL/data/response/ItemProducto;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MATRIZ:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->nacional:Z

    .line 42
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->literal:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;Ljava/lang/String;)V
    .locals 1
    .param p1, "numeroContrato"    # Ljava/lang/String;
    .param p2, "producto"    # Ljava/lang/String;
    .param p3, "montoDisponible"    # Ljava/lang/String;
    .param p4, "codigoMoneda"    # Ljava/lang/String;
    .param p5, "numeroPan"    # Ljava/lang/String;
    .param p6, "tipo"    # Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;
    .param p7, "cupo"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->nacional:Z

    .line 54
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroContrato:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->producto:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoDisponible:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->cupo:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V
    .locals 2
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->nacional:Z

    .line 74
    if-eqz p1, :cond_5

    .line 77
    const-string v0, "AGRUPACIONCOMERCIAL"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->agrupacionComercial:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->agrupacionComercial:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "AGRUPACION_COMERCIAL"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->agrupacionComercial:Ljava/lang/String;

    .line 83
    :cond_0
    const-string v0, "MONTODISPONIBLE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoDisponible:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoDisponible:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 85
    const-string v0, "MONTO_DISPONIBLE"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoDisponible:Ljava/lang/String;

    .line 87
    :cond_1
    const-string v0, "MONTOUTILIZADO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoUtilizado:Ljava/lang/String;

    .line 89
    const-string v0, "NUMEROCONTRATO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroContrato:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroContrato:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 91
    const-string v0, "NUMERO_CONTRATO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroContrato:Ljava/lang/String;

    .line 93
    :cond_2
    const-string v0, "PRODUCTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->producto:Ljava/lang/String;

    .line 94
    const-string v0, "SUBPRODUCTO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->subProducto:Ljava/lang/String;

    .line 96
    const-string v0, "GLOSACORTA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->glosaCorta:Ljava/lang/String;

    .line 97
    const-string v0, "CUPO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->cupo:Ljava/lang/String;

    .line 98
    const-string v0, "GLOSAESTADO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->glosaEstado:Ljava/lang/String;

    .line 100
    const-string v0, "ESTADOOPERACION"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->estadoOperacion:Ljava/lang/String;

    .line 101
    const-string v0, "ESTADORELACION"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->estadoRelacion:Ljava/lang/String;

    .line 102
    const-string v0, "CODIGOMONEDA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 105
    const-string v0, "CODIGO_MONEDA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    .line 107
    :cond_3
    const-string v0, "NUMEROPAN"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 109
    const-string v0, "NUMERO_PAM"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    .line 111
    :cond_4
    invoke-static {}, Lcl/santander/santanderCL/data/response/ItemProducto;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_MATRIZ()[I

    move-result-object v0

    invoke-virtual {p2}, Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_5
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const-string v0, "OFICINA"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->oficinaContrato:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v0, "OFICINACONTRATO"

    invoke-static {v0, p1}, Lcl/santander/santanderCL/utils/Utils;->translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->oficinaContrato:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAgrupacionComercial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->agrupacionComercial:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoMoneda()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    return-object v0
.end method

.method public getCupo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->cupo:Ljava/lang/String;

    return-object v0
.end method

.method public getCupoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 249
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    const-string v1, "UF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->cupo:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->cupo:Ljava/lang/String;

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescripcion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->literal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->literal:Ljava/lang/String;

    .line 236
    :goto_0
    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    if-nez v0, :cond_1

    .line 230
    const-string v0, "-"

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    if-ne v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->glosaCorta:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_2
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->DESC_PRODUCTO:[Ljava/lang/String;

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getGlosaCorta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->glosaCorta:Ljava/lang/String;

    return-object v0
.end method

.method public getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    return-object v0
.end method

.method public getMontoDisponible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoDisponible:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoDisponibleScreen()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 265
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    const-string v1, "UF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoDisponible:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoDisponible:Ljava/lang/String;

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMontoUtilizado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoUtilizado:Ljava/lang/String;

    return-object v0
.end method

.method public getMontoUtilizadoScreen()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 257
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    const-string v1, "UF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoUtilizado:Ljava/lang/String;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoUtilizado:Ljava/lang/String;

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumeroContrato()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroContrato:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroContratoScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroContrato:Ljava/lang/String;

    invoke-static {v0}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumeroPan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroPanScreen()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 189
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    if-eqz v1, :cond_0

    .line 190
    invoke-static {}, Lcl/santander/santanderCL/data/response/ItemProducto;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS()[I

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v2}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XXXX-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    iget-object v3, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 195
    :sswitch_0
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroPan:Ljava/lang/String;

    const-string v2, "L"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "Aux":Ljava/lang/String;
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    const-string v2, "UF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->codigoMoneda:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 208
    .end local v0    # "Aux":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    goto :goto_0

    .line 190
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getOficinaContrato()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->oficinaContrato:Ljava/lang/String;

    return-object v0
.end method

.method public getProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->producto:Ljava/lang/String;

    return-object v0
.end method

.method public getSubProducto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->subProducto:Ljava/lang/String;

    return-object v0
.end method

.method public getTipo()Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    return-object v0
.end method

.method public isNacional()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->nacional:Z

    return v0
.end method

.method public setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V
    .locals 0
    .param p1, "grupo"    # Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .prologue
    .line 148
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .line 149
    return-void
.end method

.method public setMontoUtilizado(Ljava/lang/String;)V
    .locals 0
    .param p1, "montoUtilizado"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->montoUtilizado:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setNacional(Z)V
    .locals 0
    .param p1, "nacional"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->nacional:Z

    .line 138
    return-void
.end method

.method public setNumeroContrato(Ljava/lang/String;)V
    .locals 0
    .param p1, "contrato"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->numeroContrato:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setTipo(Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)V
    .locals 0
    .param p1, "tipo"    # Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    .prologue
    .line 277
    iput-object p1, p0, Lcl/santander/santanderCL/data/response/ItemProducto;->tipo:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    .line 278
    return-void
.end method
