.class public Lcl/santander/santanderCL/operations/MovimientosCuentas;
.super Ljava/lang/Object;
.source "MovimientosCuentas.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I


# instance fields
.field fechaDesde:Ljava/util/Date;

.field fechaHasta:Ljava/util/Date;

.field item:Lcl/santander/santanderCL/data/response/ItemProducto;

.field movimientos:Lcl/santander/santanderCL/data/MatrizMovimientos;

.field op:Lcl/santander/santanderCL/operations/MovLineaCreditoCC;

.field opCtaVista:Lcl/santander/santanderCL/operations/MovCtaVista;


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

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
    sput-object v0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFechaLimite()Ljava/util/Date;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 33
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "hoy":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "dataTemp":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 36
    .local v0, "c":Ljava/util/Calendar;
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 37
    const/4 v3, -0x3

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 39
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    return-object v3
.end method

.method private validaFechas(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2
    .param p1, "desde"    # Ljava/util/Date;
    .param p2, "hasta"    # Ljava/util/Date;

    .prologue
    .line 45
    invoke-direct {p0}, Lcl/santander/santanderCL/operations/MovimientosCuentas;->getFechaLimite()Ljava/util/Date;

    move-result-object v0

    .line 47
    .local v0, "limiteHasta":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcl/santander/santanderCL/operations/MovimientosCuentas;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS()[I

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->item:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getTipo()Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 89
    :pswitch_0
    new-instance v0, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->op:Lcl/santander/santanderCL/operations/MovLineaCreditoCC;

    .line 90
    iget-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->op:Lcl/santander/santanderCL/operations/MovLineaCreditoCC;

    iget-object v1, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->item:Lcl/santander/santanderCL/data/response/ItemProducto;

    iget-object v2, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->fechaDesde:Ljava/util/Date;

    iget-object v3, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->fechaHasta:Ljava/util/Date;

    invoke-virtual {v0, v1, v2, v3}, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;)V

    .line 91
    iget-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->op:Lcl/santander/santanderCL/operations/MovLineaCreditoCC;

    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->execute()V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->op:Lcl/santander/santanderCL/operations/MovLineaCreditoCC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->op:Lcl/santander/santanderCL/operations/MovLineaCreditoCC;

    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->getResult()Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->op:Lcl/santander/santanderCL/operations/MovLineaCreditoCC;

    invoke-virtual {v0}, Lcl/santander/santanderCL/operations/MovLineaCreditoCC;->getResult()Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/MovLineaCreditoCCResponse;->getMovimientos()Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "item"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "fechaDesde"    # Ljava/util/Date;
    .param p3, "fechaHasta"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->item:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 54
    new-instance v0, Lcl/santander/santanderCL/data/MatrizMovimientos;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/MatrizMovimientos;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->movimientos:Lcl/santander/santanderCL/data/MatrizMovimientos;

    .line 74
    iput-object p2, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->fechaDesde:Ljava/util/Date;

    .line 75
    iput-object p3, p0, Lcl/santander/santanderCL/operations/MovimientosCuentas;->fechaHasta:Ljava/util/Date;

    .line 78
    return-void
.end method
