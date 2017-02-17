.class public Lcl/santander/santanderCL/utils/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/santanderCL/utils/Constant$ENTORNO;,
        Lcl/santander/santanderCL/utils/Constant$ESTADO_SUSCRIPCION;,
        Lcl/santander/santanderCL/utils/Constant$GRUPO;,
        Lcl/santander/santanderCL/utils/Constant$PERFIL;,
        Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;,
        Lcl/santander/santanderCL/utils/Constant$RATIO;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_DOCUMENTO;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;,
        Lcl/santander/santanderCL/utils/Constant$TIPO_POI;
    }
.end annotation


# static fields
.field public static BANCO:Ljava/lang/String;

.field public static CADENAVACIA:Ljava/lang/String;

.field public static CANAL:Ljava/lang/String;

.field public static CANALACONSULTAR:Ljava/lang/String;

.field public static CODCANAL:Ljava/lang/String;

.field public static CODIGO_PRODUCTOS:[Ljava/lang/String;

.field public static COD_OK_00:Ljava/lang/String;

.field public static COD_OK_000:Ljava/lang/String;

.field public static COD_OK_04:Ljava/lang/String;

.field public static CRUCEACONSULTAR:Ljava/lang/String;

.field public static CRUCEACONSULTAR_ACTIVOS:Ljava/lang/String;

.field public static DEBUG:Z

.field public static DESC_PRODUCTO:[Ljava/lang/String;

.field public static DIVISA:Ljava/lang/String;

.field public static DIVISA_DOLAR:Ljava/lang/String;

.field public static ENTIDAD:Ljava/lang/String;

.field public static ENTORNO_DEFAULT:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

.field public static ERROR_COMPRA_ACCIONES_LIMITE_INFERIOR:Ljava/lang/String;

.field public static ERROR_COMPRA_ACCIONES_LIMITE_SUPERIOR:Ljava/lang/String;

.field public static ERROR_CONSULTA_FECHAS:Ljava/lang/String;

.field public static ERROR_CONSULTA_FECHAS_RANGO:Ljava/lang/String;

.field public static ERROR_CREDITO_CONSUMO_INF:Ljava/lang/String;

.field public static ERROR_CREDITO_CONSUMO_SUP:Ljava/lang/String;

.field public static ERROR_DETALLE_DEUDA:Ljava/lang/String;

.field public static ERROR_FIJO_PESOS_MONTO:Ljava/lang/String;

.field public static ERROR_FIJO_PESOS_PLAZO:Ljava/lang/String;

.field public static ERROR_FIJO_UDF_MONTO:Ljava/lang/String;

.field public static ERROR_FIJO_UDF_PLAZO:Ljava/lang/String;

.field public static ERROR_IMPERDIBLES_CAJEROS:Ljava/lang/String;

.field public static ERROR_INVERSIONES:Ljava/lang/String;

.field public static ERROR_PRECIO_MONTO:Ljava/lang/String;

.field public static ERROR_RECARGA_CELULARES_MOVISTAR:Ljava/lang/String;

.field public static ERROR_RECARGA_CELULARES_MOVISTAR_BANDA_ANCHA:Ljava/lang/String;

.field public static ERROR_RENOVABLE_PESOS_MONTO:Ljava/lang/String;

.field public static ERROR_RENOVABLE_PESOS_PLAZO:Ljava/lang/String;

.field public static ERROR_RUT:Ljava/lang/String;

.field public static ERROR_SELECCION_TIPODEPOSITO:Ljava/lang/String;

.field public static ERROR_SESION_EXPIRADA:I

.field public static ERROR_SUPERGIROS_LIMITE:Ljava/lang/String;

.field public static ERROR_SUPERGIROS_MAYOR_CERO:Ljava/lang/String;

.field public static ERROR_SUPERGIROS_MULTIPLO:Ljava/lang/String;

.field public static ERROR_TRANSF_ENTRE_MIS_PRODUCTOS:Ljava/lang/String;

.field public static ERROR_TRANSF_ENTRE_MIS_PRODUCTOS_SALDO:Ljava/lang/String;

.field public static ERROR_TRANSF_TERCEROS_LIMITE:Ljava/lang/String;

.field public static ERROR_TRANSF_TERCEROS_LIMITE_2000:Ljava/lang/String;

.field public static ERROR_TRANSF_TERCEROS_LIMITE_CERO:Ljava/lang/String;

.field public static ESTADORELACION:Ljava/lang/String;

.field public static IDOPERACION_TRANSF:Ljava/lang/String;

.field public static IDOPERACION_TRANSF_1:Ljava/lang/String;

.field public static LIMITE_TRANSF_MISMO_BANCO:I

.field public static LIMITE_TRANSF_OTROS_BANCOS:I

.field public static NUMPAGI:Ljava/lang/String;

.field public static final PARSELOCALE:Ljava/util/Locale;

.field public static RANGO_BUSQUEDA_MOV:I

.field public static REGRECUPERAR:Ljava/lang/String;

.field public static SERVICIO:Ljava/lang/String;

.field public static SIMBOLODIVISA_DEFAULT:Ljava/lang/String;

.field public static TARJETAS_ACTIVAS:Ljava/lang/String;

.field public static TIPODOCUMENTO:Ljava/lang/String;

.field public static TIPO_CARGO:Ljava/lang/String;

.field public static TOTAL_REGISTROS_DEPOSITOPLAZO:I

.field public static VERSION_SOAP:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CCC"

    aput-object v1, v0, v5

    const-string v1, "USE"

    aput-object v1, v0, v3

    const-string v1, "CCM"

    aput-object v1, v0, v6

    const-string v1, "LCR"

    aput-object v1, v0, v4

    const-string v1, "LUS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TCR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DEP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AHR"

    aput-object v2, v0, v1

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->CODIGO_PRODUCTOS:[Ljava/lang/String;

    .line 35
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Cta. Corriente"

    aput-object v1, v0, v5

    const-string v1, "Cta. Corriente en D\u00f3lares"

    aput-object v1, v0, v3

    const-string v1, "Cta. Vista"

    aput-object v1, v0, v6

    const-string v1, "L\u00ednea de Cr\u00e9dito"

    aput-object v1, v0, v4

    const-string v1, "L\u00ednea de Cr\u00e9dito en D\u00f3lares"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Tarjeta de Cr\u00e9dito"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D\u00e9posito a Plazo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Cta. Ahorro"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fondos Mutuos"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "APV"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Acciones"

    aput-object v2, v0, v1

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->DESC_PRODUCTO:[Ljava/lang/String;

    .line 39
    sput-boolean v3, Lcl/santander/santanderCL/utils/Constant;->DEBUG:Z

    .line 43
    const-string v0, "0035"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ENTIDAD:Ljava/lang/String;

    .line 44
    const-string v0, "R"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->TIPODOCUMENTO:Ljava/lang/String;

    .line 45
    const-string v0, "0003"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->CANALACONSULTAR:Ljava/lang/String;

    .line 46
    const-string v0, "40"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->REGRECUPERAR:Ljava/lang/String;

    .line 47
    const-string v0, "Banco Santander"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->BANCO:Ljava/lang/String;

    .line 49
    const/16 v0, 0x6e

    sput v0, Lcl/santander/santanderCL/utils/Constant;->VERSION_SOAP:I

    .line 51
    const-string v0, "001"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->TIPO_CARGO:Ljava/lang/String;

    .line 52
    const-string v0, "001"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->NUMPAGI:Ljava/lang/String;

    .line 53
    const-string v0, "0043"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->CRUCEACONSULTAR:Ljava/lang/String;

    .line 54
    const-string v0, "0045"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->CRUCEACONSULTAR_ACTIVOS:Ljava/lang/String;

    .line 56
    const-string v0, "A"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ESTADORELACION:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    .line 58
    const-string v0, "CLP"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    .line 59
    const-string v0, "USD"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->DIVISA_DOLAR:Ljava/lang/String;

    .line 61
    const-string v0, "003"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->CANAL:Ljava/lang/String;

    .line 62
    const-string v0, "03"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->CODCANAL:Ljava/lang/String;

    .line 64
    const-string v0, "00"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->COD_OK_00:Ljava/lang/String;

    .line 65
    const-string v0, "000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->COD_OK_000:Ljava/lang/String;

    .line 66
    const-string v0, "04"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->COD_OK_04:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    const-string v2, "CL"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->PARSELOCALE:Ljava/util/Locale;

    .line 68
    const-string v0, "$"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->SIMBOLODIVISA_DEFAULT:Ljava/lang/String;

    .line 69
    const-string v0, "RELXE002"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->SERVICIO:Ljava/lang/String;

    .line 70
    const-string v0, "000001"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->TARJETAS_ACTIVAS:Ljava/lang/String;

    .line 72
    const-string v0, "003;000;003;0000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->IDOPERACION_TRANSF:Ljava/lang/String;

    .line 73
    const-string v0, "001;000;001;0000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->IDOPERACION_TRANSF_1:Ljava/lang/String;

    .line 74
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->PRODUCCION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ENTORNO_DEFAULT:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    .line 75
    const v0, 0x4c4b40

    sput v0, Lcl/santander/santanderCL/utils/Constant;->LIMITE_TRANSF_MISMO_BANCO:I

    .line 76
    const v0, 0x4c4b40

    sput v0, Lcl/santander/santanderCL/utils/Constant;->LIMITE_TRANSF_OTROS_BANCOS:I

    .line 78
    const/16 v0, 0xa

    sput v0, Lcl/santander/santanderCL/utils/Constant;->TOTAL_REGISTROS_DEPOSITOPLAZO:I

    .line 79
    const-string v0, "El RUT ingresado es inv\u00e1lido. Int\u00e9ntelo nuevamente."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_RUT:Ljava/lang/String;

    .line 80
    sput v4, Lcl/santander/santanderCL/utils/Constant;->RANGO_BUSQUEDA_MOV:I

    .line 81
    const-string v0, "El monto introducido ha excedido el l\u00edmite permitido."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE:Ljava/lang/String;

    .line 82
    const-string v0, "El monto a transferir debe ser mayor a cero"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE_CERO:Ljava/lang/String;

    .line 83
    const-string v0, "El monto m\u00ednimo a transferir debe ser de $ 2.000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_TERCEROS_LIMITE_2000:Ljava/lang/String;

    .line 85
    const-string v0, "La fecha desde no puede ser posterior a la fecha hasta."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_CONSULTA_FECHAS:Ljava/lang/String;

    .line 86
    const-string v0, "La diferencia entre la fecha desde y la fecha hasta debe ser inferior a 3 meses."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_CONSULTA_FECHAS_RANGO:Ljava/lang/String;

    .line 87
    const-string v0, "El monto ha transferir debe ser mayor a cero"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_ENTRE_MIS_PRODUCTOS:Ljava/lang/String;

    .line 88
    const-string v0, "El monto ha transferir debe ser menor o igual al saldo disponible"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_TRANSF_ENTRE_MIS_PRODUCTOS_SALDO:Ljava/lang/String;

    .line 89
    const-string v0, "El monto del supergiro debe ser mayor a cero"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_SUPERGIROS_MAYOR_CERO:Ljava/lang/String;

    .line 90
    const-string v0, "Estimado Cliente: El monto a transferir debe ser m\u00c1ltiplo de $ 5.000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_SUPERGIROS_MULTIPLO:Ljava/lang/String;

    .line 91
    const-string v0, "El monto debe estar entre $5.000 y $200.000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_SUPERGIROS_LIMITE:Ljava/lang/String;

    .line 92
    const-string v0, "No se puede solicitar un cr\u00e9dito superior a $ 999.999.999"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_CREDITO_CONSUMO_SUP:Ljava/lang/String;

    .line 93
    const-string v0, "El monto del cr\u00e9dito es inferior al minimo permitido ($ 4.999)"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_CREDITO_CONSUMO_INF:Ljava/lang/String;

    .line 94
    const-string v0, "No se ha podido recuperar el detalle de la deuda."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_DETALLE_DEUDA:Ljava/lang/String;

    .line 95
    const-string v0, "Por favor,ingrese un monto entre $ 1.000 y $ 20.000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_RECARGA_CELULARES_MOVISTAR:Ljava/lang/String;

    .line 96
    const-string v0, "Por favor,ingrese un monto entre $ 1.000 y $ 20.000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_RECARGA_CELULARES_MOVISTAR_BANDA_ANCHA:Ljava/lang/String;

    .line 97
    const/16 v0, 0x14

    sput v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    .line 98
    const-string v0, "No presenta inversiones de este tipo."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_INVERSIONES:Ljava/lang/String;

    .line 99
    const-string v0, "En este momento no es posible obtener el listado de beneficios, sucursales y cajeros m\u00e1s cercanos. Por favor int\u00e9ntelo nuevamente m\u00e1s tarde."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_IMPERDIBLES_CAJEROS:Ljava/lang/String;

    .line 100
    const-string v0, "Debe seleccionar un tipo de deposito."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_SELECCION_TIPODEPOSITO:Ljava/lang/String;

    .line 102
    const-string v0, "El monto m\u00ednimo a invertir es de $5.000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_FIJO_UDF_MONTO:Ljava/lang/String;

    .line 103
    const-string v0, "El plazo debe estar entre 90 y 365 d\u00edas"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_FIJO_UDF_PLAZO:Ljava/lang/String;

    .line 105
    const-string v0, "El monto m\u00ednimo a invertir es de $5.000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_FIJO_PESOS_MONTO:Ljava/lang/String;

    .line 106
    const-string v0, "El plazo debe estar entre 7 y 365 d\u00edas"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_FIJO_PESOS_PLAZO:Ljava/lang/String;

    .line 108
    const-string v0, "El monto m\u00ednimo a invertir es de $5.000"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_RENOVABLE_PESOS_MONTO:Ljava/lang/String;

    .line 109
    const-string v0, "El plazo debe estar entre 30 y 365 d\u00edas"

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_RENOVABLE_PESOS_PLAZO:Ljava/lang/String;

    .line 111
    const-string v0, "El monto m\u00ednimo para realizar una compra de acciones es de $100.000."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_COMPRA_ACCIONES_LIMITE_INFERIOR:Ljava/lang/String;

    .line 112
    const-string v0, "El monto m\u00e1ximo para realizar una compra de acciones es de $50.000.000."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_COMPRA_ACCIONES_LIMITE_SUPERIOR:Ljava/lang/String;

    .line 114
    const-string v0, "El monto tiene que se superior al precio total de las acciones."

    sput-object v0, Lcl/santander/santanderCL/utils/Constant;->ERROR_PRECIO_MONTO:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
