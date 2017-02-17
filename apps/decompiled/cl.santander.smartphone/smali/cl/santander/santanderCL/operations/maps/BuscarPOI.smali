.class public Lcl/santander/santanderCL/operations/maps/BuscarPOI;
.super Ljava/lang/Object;
.source "BuscarPOI.java"

# interfaces
.implements Lcl/santander/santanderCL/operations/IBusiness;


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_BUSQUEDA:[I


# instance fields
.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation
.end field

.field ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

.field sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

.field tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_BUSQUEDA()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_BUSQUEDA:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->values()[Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES_SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_BUSQUEDA:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Lcl/santander/santanderCL/exceptions/InfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "bError":Z
    invoke-static {}, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_BUSQUEDA()[I

    move-result-object v2

    iget-object v3, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v3}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->execute()V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->execute()V

    goto :goto_0

    .line 99
    :pswitch_2
    :try_start_0
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->execute()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    if-eqz v0, :cond_0

    .line 109
    new-instance v2, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "16"

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_IMPERDIBLES_CAJEROS:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v2

    .line 100
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 101
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 v0, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "ex":Ljava/lang/Exception;
    :pswitch_3
    :try_start_2
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->execute()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 123
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->execute()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 124
    :catch_2
    move-exception v1

    .line 125
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    if-eqz v0, :cond_0

    .line 127
    new-instance v2, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "16"

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_IMPERDIBLES_CAJEROS:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v2

    .line 118
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 119
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/4 v0, 0x1

    goto :goto_2

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    if-eqz v2, :cond_4

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "Total":I
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 148
    :cond_0
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 152
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v1, "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemPOI;>;"
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_2
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 157
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_3
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;->ASCENDENTE:Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;

    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->ordenarItemPOI(Ljava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;)Ljava/util/ArrayList;

    move-result-object v2

    .line 167
    .end local v0    # "Total":I
    .end local v1    # "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemPOI;>;"
    :goto_0
    return-object v2

    .line 161
    :cond_4
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_5
    iget-object v2, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-virtual {v2}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->getResult()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public init(DDILjava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;Landroid/util/DisplayMetrics;I)V
    .locals 10
    .param p1, "Lat"    # D
    .param p3, "Lng"    # D
    .param p5, "radio"    # I
    .param p7, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    .param p8, "ratio"    # Landroid/util/DisplayMetrics;
    .param p9, "totalRegistros"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;",
            "Landroid/util/DisplayMetrics;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    .local p6, "idCategorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v1, p3, v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    .line 34
    :cond_0
    move-object/from16 v0, p7

    iput-object v0, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    .line 35
    invoke-static {}, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$TIPO_BUSQUEDA()[I

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 37
    :pswitch_0
    new-instance v1, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    .line 38
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    const-string v8, "SUC"

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v8}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->init(DDIILjava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_1
    new-instance v1, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    .line 42
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    const-string v8, "CAJ"

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v8}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->init(DDIILjava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_2
    new-instance v1, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    .line 46
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    const-string v8, "SYC"

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v8}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->init(DDIILjava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_3
    new-instance v1, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    .line 50
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->init(DDILjava/util/ArrayList;Landroid/util/DisplayMetrics;I)V

    .line 51
    new-instance v1, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    .line 52
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    const-string v8, "CAJ"

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v8}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->init(DDIILjava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_4
    new-instance v1, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    .line 56
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->init(DDILjava/util/ArrayList;Landroid/util/DisplayMetrics;I)V

    .line 57
    new-instance v1, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    .line 58
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    const-string v8, "SUC"

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v8}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->init(DDIILjava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :pswitch_5
    new-instance v1, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    .line 62
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->init(DDILjava/util/ArrayList;Landroid/util/DisplayMetrics;I)V

    goto/16 :goto_0

    .line 67
    :pswitch_6
    new-instance v1, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    .line 68
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->sucursales:Lcl/santander/santanderCL/operations/maps/BuscarSucursales;

    const-string v8, "SYC"

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v8}, Lcl/santander/santanderCL/operations/maps/BuscarSucursales;->init(DDIILjava/lang/String;)V

    .line 69
    new-instance v1, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    invoke-direct {v1}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;-><init>()V

    iput-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    .line 70
    iget-object v1, p0, Lcl/santander/santanderCL/operations/maps/BuscarPOI;->ofertas:Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcl/santander/santanderCL/operations/maps/OfertasImperdibles;->init(DDILjava/util/ArrayList;Landroid/util/DisplayMetrics;I)V

    goto/16 :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
