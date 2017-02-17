.class public Lcl/santander/smartphone/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "ede25d65772861fe7faf7461f3c978dc"

.field public static final INVERSIONES_ACCIONES:I = 0x4

.field public static final INVERSIONES_APV:I = 0x1

.field public static final INVERSIONES_CUENTAS_AHORRO:I = 0x2

.field public static final INVERSIONES_DEPOSITOS:I = 0x3

.field public static final INVERSIONES_FONDOS:I = 0x0

.field public static MODO_LOCALIZACION_HOME:Ljava/lang/String; = null

.field public static MODO_RUTA:Ljava/lang/String; = null

.field public static NOBACK:Z = false

.field public static final POIStoVIEW:I = 0x3

.field public static final PRODUCT_CUENTA:I = 0x0

.field public static final PRODUCT_INVERSIONES:I = 0x3

.field public static final PRODUCT_LINEA_CREDITO:I = 0x1

.field public static final PRODUCT_TARJETA:I = 0x2

.field public static SETTINGS:Ljava/lang/String;

.field public static bancoDestinatario:[[I

.field public static categorias_poi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemCategoria;",
            ">;"
        }
    .end annotation
.end field

.field public static credito_consumo_formulario:I

.field public static cuentaChequeVer:Lcl/santander/santanderCL/data/response/ItemProducto;

.field public static documentoVisto:Lcl/santander/santanderCL/data/response/ItemCheque;

.field public static fromDirections:Z

.field public static grupos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/MatrizProductos;",
            ">;"
        }
    .end annotation
.end field

.field public static grupos_inversiones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/MatrizInversiones;",
            ">;"
        }
    .end annotation
.end field

.field public static idPulsado:I

.field public static indicadores:Z

.field public static instancia:Ljava/lang/String;

.field public static itemChequeVer:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

.field public static m_DataRecarga:Lcl/santander/smartphone/DataRecarga;

.field public static m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

.field public static m_bCallInitialWSPagoOnline:Z

.field public static m_bCallInitialWSRecarga:Z

.field public static mapKey:Ljava/lang/String;

.field public static ms_Instance:Lcl/santander/smartphone/Global;

.field public static oferta_seleccionado:Lcl/santander/santanderCL/data/response/ItemOferta;

.field public static poi_seleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

.field public static pos_seleccionado:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

.field public static screenOrientation:I

.field public static tarjetaEstadoCuentaVer:Lcl/santander/santanderCL/data/response/ItemProducto;

.field public static tipoCuentaDestinatario:[I

.field public static volverSaldos:Z

.field public static volverSimular:Z


# instance fields
.field public m_bUserLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 47
    sput-object v1, Lcl/santander/smartphone/Global;->ms_Instance:Lcl/santander/smartphone/Global;

    .line 50
    const-string v0, "0kI-nvbcwXFz10e-G6ZasjcLIdyYznby4W8GtOw"

    sput-object v0, Lcl/santander/smartphone/Global;->mapKey:Ljava/lang/String;

    .line 61
    new-instance v0, Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-direct {v0}, Lcl/santander/smartphone/DatosPersonalesUsuario;-><init>()V

    sput-object v0, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    .line 72
    sput-object v1, Lcl/santander/smartphone/Global;->instancia:Ljava/lang/String;

    .line 76
    const-string v0, "settings"

    sput-object v0, Lcl/santander/smartphone/Global;->SETTINGS:Ljava/lang/String;

    .line 78
    const-string v0, "route"

    sput-object v0, Lcl/santander/smartphone/Global;->MODO_RUTA:Ljava/lang/String;

    .line 79
    const-string v0, "locautohome"

    sput-object v0, Lcl/santander/smartphone/Global;->MODO_LOCALIZACION_HOME:Ljava/lang/String;

    .line 85
    sput-boolean v2, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 86
    sput-boolean v2, Lcl/santander/smartphone/Global;->indicadores:Z

    .line 87
    const/4 v0, -0x1

    sput v0, Lcl/santander/smartphone/Global;->idPulsado:I

    .line 94
    sput-object v1, Lcl/santander/smartphone/Global;->categorias_poi:Ljava/util/ArrayList;

    .line 105
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 104
    sput-object v0, Lcl/santander/smartphone/Global;->tipoCuentaDestinatario:[I

    .line 114
    const/16 v0, 0x13

    new-array v0, v0, [[I

    .line 115
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 116
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    .line 117
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 118
    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    .line 119
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    const/4 v1, 0x5

    .line 120
    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 121
    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 122
    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 123
    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 124
    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 125
    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 126
    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 127
    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 128
    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 129
    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 130
    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 131
    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 132
    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 133
    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    .line 113
    sput-object v0, Lcl/santander/smartphone/Global;->bancoDestinatario:[[I

    .line 19
    return-void

    .line 105
    :array_0
    .array-data 4
        0x7f050129
        0x7f05012b
        0x7f050131
        0x7f050130
    .end array-data

    .line 115
    :array_1
    .array-data 4
        0x1
        0x7f050147
    .end array-data

    .line 116
    :array_2
    .array-data 4
        0x9
        0x7f050148
    .end array-data

    .line 117
    :array_3
    .array-data 4
        0xc
        0x7f050149
    .end array-data

    .line 118
    :array_4
    .array-data 4
        0xe
        0x7f05014a
    .end array-data

    .line 119
    :array_5
    .array-data 4
        0x10
        0x7f05014b
    .end array-data

    .line 120
    :array_6
    .array-data 4
        0x1b
        0x7f05014c
    .end array-data

    .line 121
    :array_7
    .array-data 4
        0x1c
        0x7f05014d
    .end array-data

    .line 122
    :array_8
    .array-data 4
        0x1f
        0x7f05014e
    .end array-data

    .line 123
    :array_9
    .array-data 4
        0x23
        0x7f05014f
    .end array-data

    .line 124
    :array_a
    .array-data 4
        0x25
        0x7f050150
    .end array-data

    .line 125
    :array_b
    .array-data 4
        0x27
        0x7f050151
    .end array-data

    .line 126
    :array_c
    .array-data 4
        0x31
        0x7f050152
    .end array-data

    .line 127
    :array_d
    .array-data 4
        0x33
        0x7f050153
    .end array-data

    .line 128
    :array_e
    .array-data 4
        0x35
        0x7f050154
    .end array-data

    .line 129
    :array_f
    .array-data 4
        0x36
        0x7f050155
    .end array-data

    .line 130
    :array_10
    .array-data 4
        0x37
        0x7f050156
    .end array-data

    .line 131
    :array_11
    .array-data 4
        0x39
        0x7f050157
    .end array-data

    .line 132
    :array_12
    .array-data 4
        0x1f8
        0x7f050158
    .end array-data

    .line 133
    :array_13
    .array-data 4
        0x1fb
        0x7f050159
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcl/santander/smartphone/Global;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcl/santander/smartphone/Global;->ms_Instance:Lcl/santander/smartphone/Global;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcl/santander/smartphone/Global;

    invoke-direct {v0}, Lcl/santander/smartphone/Global;-><init>()V

    sput-object v0, Lcl/santander/smartphone/Global;->ms_Instance:Lcl/santander/smartphone/Global;

    .line 66
    sget-object v0, Lcl/santander/smartphone/Global;->ms_Instance:Lcl/santander/smartphone/Global;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 69
    :cond_0
    sget-object v0, Lcl/santander/smartphone/Global;->ms_Instance:Lcl/santander/smartphone/Global;

    return-object v0
.end method
