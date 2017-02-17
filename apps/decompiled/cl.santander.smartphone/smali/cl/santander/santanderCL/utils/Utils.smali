.class public Lcl/santander/santanderCL/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO:[I


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO()[I
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcl/santander/santanderCL/utils/Utils;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->values()[Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->HOMOLOGACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->INTEGRACION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->PRODUCCION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/santander/santanderCL/utils/Utils;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static busquedaBinaria(I[I)I
    .locals 4
    .param p0, "dato"    # I
    .param p1, "datos"    # [I

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "inicio":I
    array-length v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 186
    .local v0, "fin":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 196
    const/4 v2, -0x1

    :cond_0
    return v2

    .line 187
    :cond_1
    add-int v3, v1, v0

    div-int/lit8 v2, v3, 0x2

    .line 188
    .local v2, "pos":I
    aget v3, p1, v2

    if-eq v3, p0, :cond_0

    .line 190
    aget v3, p1, v2

    if-ge v3, p0, :cond_2

    .line 191
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 193
    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method public static convertToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "fecha"    # Ljava/lang/String;
    .param p1, "formato"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, "curFormater":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 590
    .local v1, "d":Ljava/util/Date;
    return-object v1
.end method

.method public static convertirImporteADouble(Ljava/lang/String;I)D
    .locals 2
    .param p0, "cantidad"    # Ljava/lang/String;
    .param p1, "decimales"    # I

    .prologue
    .line 468
    invoke-static {p0, p1}, Lcl/santander/santanderCL/utils/Utils;->setDecimales(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-static {p0}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static enmascararTelefono(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "telefono"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 107
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 113
    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public static formatDistance(D)Ljava/lang/String;
    .locals 10
    .param p0, "distance"    # D

    .prologue
    const-wide/16 v8, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 214
    cmpl-double v5, p0, v6

    if-ltz v5, :cond_2

    .line 215
    div-double v1, p0, v6

    .line 216
    .local v1, "k":D
    mul-double v5, v1, v6

    sub-double v3, p0, v5

    .line 217
    .local v3, "m":D
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    .line 219
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-static {v1, v2, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(DI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmpl-double v5, v3, v8

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 220
    const-string v6, " km"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 219
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 227
    .end local v1    # "k":D
    .end local v3    # "m":D
    :goto_1
    return-object v5

    .line 219
    .restart local v1    # "k":D
    .restart local v3    # "m":D
    :cond_0
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmpl-double v5, v3, v8

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 223
    const-string v6, " km"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 222
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, ""

    goto :goto_2

    .line 227
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "k":D
    .end local v3    # "m":D
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getDifereciaEntreFechas(Ljava/util/Date;Ljava/util/Date;)I
    .locals 7
    .param p0, "inicio"    # Ljava/util/Date;
    .param p1, "fin"    # Ljava/util/Date;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 81
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 82
    .local v1, "minuendMonth":I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 83
    .local v2, "minuendYear":I
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 84
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 85
    .local v3, "subtrahendMonth":I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 90
    .local v4, "subtrahendYear":I
    sub-int v5, v2, v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    mul-int/2addr v5, v6

    .line 91
    sub-int v6, v1, v3

    .line 90
    add-int/2addr v5, v6

    return v5
.end method

.method public static getDistance(DDDD)I
    .locals 25
    .param p0, "lat_a"    # D
    .param p2, "lng_a"    # D
    .param p4, "lat_b"    # D
    .param p6, "lon_b"    # D

    .prologue
    .line 254
    const v2, 0x6136b8

    .line 255
    .local v2, "Radius":I
    const-wide v19, 0x412e848000000000L    # 1000000.0

    div-double v11, p0, v19

    .line 256
    .local v11, "lat1":D
    const-wide v19, 0x412e848000000000L    # 1000000.0

    div-double v13, p4, v19

    .line 257
    .local v13, "lat2":D
    const-wide v19, 0x412e848000000000L    # 1000000.0

    div-double v15, p2, v19

    .line 258
    .local v15, "lon1":D
    const-wide v19, 0x412e848000000000L    # 1000000.0

    div-double v17, p6, v19

    .line 259
    .local v17, "lon2":D
    sub-double v19, v13, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 260
    .local v7, "dLat":D
    sub-double v19, v17, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 261
    .local v9, "dLon":D
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v19, v7, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v21, v7, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    .line 262
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    .line 263
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 262
    mul-double v21, v21, v23

    .line 263
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v23, v9, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    .line 262
    mul-double v21, v21, v23

    .line 264
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v23, v9, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    .line 262
    mul-double v21, v21, v23

    .line 261
    add-double v3, v19, v21

    .line 265
    .local v3, "a":D
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->asin(D)D

    move-result-wide v21

    mul-double v5, v19, v21

    .line 266
    .local v5, "c":D
    int-to-double v0, v2

    move-wide/from16 v19, v0

    mul-double v19, v19, v5

    const-wide v21, 0x408f400000000000L    # 1000.0

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    return v19
.end method

.method public static final getLocalIpAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    .line 149
    if-nez v6, :cond_1

    .line 166
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 151
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 153
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    .line 152
    if-eqz v6, :cond_0

    .line 154
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 155
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "ip4":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_2

    .line 157
    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 163
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "ip4":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getLocalIpAddress(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNombreBanco(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "idBanco"    # Ljava/lang/String;

    .prologue
    .line 685
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 686
    .local v1, "key":I
    sparse-switch v1, :sswitch_data_0

    .line 730
    .end local v1    # "key":I
    :goto_0
    const-string v2, "-"

    :goto_1
    return-object v2

    .line 688
    .restart local v1    # "key":I
    :sswitch_0
    const-string v2, "Banco de Chile / Edwards-Citi"

    goto :goto_1

    .line 691
    :sswitch_1
    const-string v2, "Banco Internacional"

    goto :goto_1

    .line 693
    :sswitch_2
    const-string v2, "Banco Estado"

    goto :goto_1

    .line 695
    :sswitch_3
    const-string v2, "Scotiabank"

    goto :goto_1

    .line 697
    :sswitch_4
    const-string v2, "Banco Cr\u00e9dito e Inversiones"

    goto :goto_1

    .line 699
    :sswitch_5
    const-string v2, "Corpbanca"

    goto :goto_1

    .line 701
    :sswitch_6
    const-string v2, "Banco BICE"

    goto :goto_1

    .line 703
    :sswitch_7
    const-string v2, "HSBC Bank"

    goto :goto_1

    .line 705
    :sswitch_8
    const-string v2, "Banco Santander"

    goto :goto_1

    .line 707
    :sswitch_9
    const-string v2, "Banco Santander Banefe"

    goto :goto_1

    .line 709
    :sswitch_a
    const-string v2, "Banco Ita\u00fa"

    goto :goto_1

    .line 711
    :sswitch_b
    const-string v2, "Banco Security"

    goto :goto_1

    .line 713
    :sswitch_c
    const-string v2, "Banco Falabella"

    goto :goto_1

    .line 715
    :sswitch_d
    const-string v2, "Banco Ripley"

    goto :goto_1

    .line 717
    :sswitch_e
    const-string v2, "Rabobank"

    goto :goto_1

    .line 719
    :sswitch_f
    const-string v2, "Banco Consorcio"

    goto :goto_1

    .line 721
    :sswitch_10
    const-string v2, "Banco Paris"

    goto :goto_1

    .line 723
    :sswitch_11
    const-string v2, "Banco BBVA"

    goto :goto_1

    .line 725
    :sswitch_12
    const-string v2, "Banco del Desarrollo"

    goto :goto_1

    .line 727
    .end local v1    # "key":I
    :catch_0
    move-exception v0

    .line 728
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR PARSEO CODIGO BANCO:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0xe -> :sswitch_3
        0x10 -> :sswitch_4
        0x1b -> :sswitch_5
        0x1c -> :sswitch_6
        0x1f -> :sswitch_7
        0x23 -> :sswitch_8
        0x25 -> :sswitch_9
        0x27 -> :sswitch_a
        0x31 -> :sswitch_b
        0x33 -> :sswitch_c
        0x35 -> :sswitch_d
        0x36 -> :sswitch_e
        0x37 -> :sswitch_f
        0x39 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x1fb -> :sswitch_12
    .end sparse-switch
.end method

.method public static getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;
    .locals 2
    .param p0, "entorno"    # Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    .prologue
    .line 61
    invoke-static {}, Lcl/santander/santanderCL/utils/Utils;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$ENTORNO()[I

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    new-instance v0, Lcl/santander/santanderCL/operations/Operations;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Operations;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_1
    new-instance v0, Lcl/santander/santanderCL/operations/Operations_HOMO;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Operations_HOMO;-><init>()V

    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v0, Lcl/santander/santanderCL/operations/Operations_PROC;

    invoke-direct {v0}, Lcl/santander/santanderCL/operations/Operations_PROC;-><init>()V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getProductoCuentaCliente(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "idProducto"    # Ljava/lang/String;

    .prologue
    .line 662
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 663
    .local v1, "key":I
    sparse-switch v1, :sswitch_data_0

    .line 678
    .end local v1    # "key":I
    :goto_0
    const-string v2, "-"

    :goto_1
    return-object v2

    .line 665
    .restart local v1    # "key":I
    :sswitch_0
    const-string v2, "Cuenta Corriente"

    goto :goto_1

    .line 668
    :sswitch_1
    const-string v2, "Cuenta Vista"

    goto :goto_1

    .line 670
    :sswitch_2
    const-string v2, "Chequera Electr\u00f3nica Banefe"

    goto :goto_1

    .line 672
    :sswitch_3
    const-string v2, "Super Cuenta Vista"

    goto :goto_1

    .line 675
    .end local v1    # "key":I
    :catch_0
    move-exception v0

    .line 676
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR PARSEO CODIGO PRODUCTO CLIENTE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_3
        0x11 -> :sswitch_2
        0x46 -> :sswitch_1
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method public static getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "divisa"    # Ljava/lang/String;

    .prologue
    .line 456
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-object p0, Lcl/santander/santanderCL/utils/Constant;->SIMBOLODIVISA_DEFAULT:Ljava/lang/String;

    .line 461
    .end local p0    # "divisa":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getTipoCuentaDestinatario(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "idProducto"    # Ljava/lang/String;

    .prologue
    .line 640
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 641
    .local v1, "key":I
    packed-switch v1, :pswitch_data_0

    .line 655
    .end local v1    # "key":I
    :goto_0
    const-string v2, "-"

    :goto_1
    return-object v2

    .line 643
    .restart local v1    # "key":I
    :pswitch_0
    const-string v2, "Cuenta Corriente"

    goto :goto_1

    .line 645
    :pswitch_1
    const-string v2, "Cuenta Vista"

    goto :goto_1

    .line 647
    :pswitch_2
    const-string v2, "Chequera Electr\u00f3nica Banefe"

    goto :goto_1

    .line 649
    :pswitch_3
    const-string v2, "Cuenta de Ahorro"

    goto :goto_1

    .line 652
    .end local v1    # "key":I
    :catch_0
    move-exception v0

    .line 653
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR PARSEO CODIGO PRODUCTO DESTINATARIO:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static ordenarItemPOI(Ljava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;",
            "Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "coleccion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemPOI;>;"
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;->ASCENDENTE:Lcl/santander/santanderCL/utils/Constant$TIPO_ORDER;

    if-ne p1, v0, :cond_0

    .line 173
    new-instance v0, Lcl/santander/santanderCL/data/ComparadorDistancia;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/ComparadorDistancia;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    :goto_0
    return-object p0

    .line 176
    :cond_0
    new-instance v0, Lcl/santander/santanderCL/data/ComparadorDistancia;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/ComparadorDistancia;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 175
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static parseCantidad(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p0, "cantidad"    # Ljava/lang/String;
    .param p1, "decimalesIn"    # I
    .param p2, "decimalesOUT"    # I

    .prologue
    .line 408
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, p1, :cond_0

    .line 412
    const-string v0, ""

    .line 414
    .local v0, "decimal":Ljava/lang/String;
    if-lez p1, :cond_1

    .line 415
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "entera":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "."

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 423
    .end local v1    # "entera":Ljava/lang/String;
    .local v3, "result":D
    :goto_0
    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->PARSELOCALE:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 424
    .local v2, "nf":Ljava/text/NumberFormat;
    invoke-virtual {v2, p2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 425
    invoke-virtual {v2, p2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 426
    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 428
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 436
    .end local v0    # "decimal":Ljava/lang/String;
    .end local v2    # "nf":Ljava/text/NumberFormat;
    .end local v3    # "result":D
    .end local p0    # "cantidad":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 419
    .restart local v0    # "decimal":Ljava/lang/String;
    .restart local p0    # "cantidad":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .restart local v3    # "result":D
    goto :goto_0

    .line 430
    .restart local v2    # "nf":Ljava/text/NumberFormat;
    :cond_2
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static parseCantidad(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cantidad"    # Ljava/lang/String;
    .param p1, "decimalesIn"    # I
    .param p2, "decimalesOUT"    # I
    .param p3, "divisa"    # Ljava/lang/String;

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseFecha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fecha"    # Ljava/lang/String;
    .param p1, "formatoOrigen"    # Ljava/lang/String;
    .param p2, "formatoSalida"    # Ljava/lang/String;

    .prologue
    .line 619
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 622
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, "curFormater":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 626
    .local v1, "d":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "curFormater":Ljava/text/SimpleDateFormat;
    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 627
    .restart local v0    # "curFormater":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 634
    .end local v0    # "curFormater":Ljava/text/SimpleDateFormat;
    .end local v1    # "d":Ljava/util/Date;
    .end local p0    # "fecha":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 628
    .restart local p0    # "fecha":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 629
    .local v2, "e":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fecha a parsear->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseFecha(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fecha"    # Ljava/util/Date;
    .param p1, "formato"    # Ljava/lang/String;

    .prologue
    .line 612
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "curFormater":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseImporte(DI)Ljava/lang/String;
    .locals 2
    .param p0, "cantidad"    # D
    .param p2, "decimales"    # I

    .prologue
    .line 531
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->PARSELOCALE:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 532
    .local v0, "nf":Ljava/text/NumberFormat;
    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 533
    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 534
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 535
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseImporte(DLjava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "cantidad"    # D
    .param p2, "divisa"    # Ljava/lang/String;
    .param p3, "decimalesIN"    # I

    .prologue
    .line 368
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "resp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 371
    .end local v0    # "resp":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, p1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "resp":Ljava/lang/String;
    goto :goto_0
.end method

.method public static parseImporte(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "cantidad"    # Ljava/lang/String;
    .param p1, "decimales"    # I

    .prologue
    .line 541
    const-wide/16 v0, 0x0

    .line 542
    .local v0, "fcantidad":D
    if-eqz p0, :cond_2

    .line 544
    if-lez p1, :cond_0

    .line 545
    invoke-static {p0}, Lcl/santander/santanderCL/utils/Utils;->setDecimales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 546
    invoke-static {p0, p1}, Lcl/santander/santanderCL/utils/Utils;->convertirImporteADouble(Ljava/lang/String;I)D

    move-result-wide v0

    .line 551
    :goto_0
    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->PARSELOCALE:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 552
    .local v2, "nf":Ljava/text/NumberFormat;
    invoke-virtual {v2, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 553
    invoke-virtual {v2, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 554
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 556
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 560
    .end local v2    # "nf":Ljava/text/NumberFormat;
    .end local p0    # "cantidad":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 548
    .restart local p0    # "cantidad":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 558
    .restart local v2    # "nf":Ljava/text/NumberFormat;
    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 560
    .end local v2    # "nf":Ljava/text/NumberFormat;
    :cond_2
    const-string p0, ""

    goto :goto_1
.end method

.method public static parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cantidad"    # Ljava/lang/String;
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 443
    move-object v0, p0

    .line 444
    .local v0, "resp":Ljava/lang/String;
    if-eqz p0, :cond_0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 448
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseImporte(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "cantidad"    # Ljava/lang/String;
    .param p1, "divisa"    # Ljava/lang/String;
    .param p2, "decimalesIN"    # I

    .prologue
    .line 382
    move-object v0, p0

    .line 385
    .local v0, "resp":Ljava/lang/String;
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-static {p0, p2}, Lcl/santander/santanderCL/utils/Utils;->setDecimales(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 387
    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 390
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseImporteConDivisa(DLjava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cantidad"    # D
    .param p2, "divisa"    # Ljava/lang/String;
    .param p3, "numeroDecimalesOut"    # I

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "cantidad"    # Ljava/lang/String;
    .param p1, "divisa"    # Ljava/lang/String;
    .param p2, "numeroDecimalesOut"    # I

    .prologue
    .line 519
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 520
    .local v0, "numeroDecimales":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    sub-int v0, v1, v2

    .line 526
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcl/santander/santanderCL/utils/Utils;->getSimboloDivisa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcl/santander/santanderCL/utils/Utils;->parseCantidad(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cuenta"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/16 v3, 0xc

    .line 309
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0xc

    .line 311
    .local v1, "len":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 314
    .end local v1    # "len":I
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 316
    .local v0, "bf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 328
    .end local v0    # "bf":Ljava/lang/StringBuffer;
    .end local p0    # "cuenta":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static parseRUT(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "rut"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_0

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x9

    .line 123
    .local v1, "l":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 125
    .end local v1    # "l":I
    :cond_0
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    .line 127
    .local v0, "FRut":[Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 128
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 129
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 130
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 131
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    .line 134
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 135
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 136
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 137
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 138
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    .line 140
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 143
    .end local v0    # "FRut":[Ljava/lang/String;
    .end local p0    # "rut":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method public static parserDisplayMetrics(Landroid/util/DisplayMetrics;)Lcl/santander/santanderCL/utils/Constant$RATIO;
    .locals 1
    .param p0, "ratio"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 233
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 247
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$RATIO;->DENSITY_DEFAULT:Lcl/santander/santanderCL/utils/Constant$RATIO;

    :goto_0
    return-object v0

    .line 236
    :sswitch_0
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$RATIO;->DENSITY_HIGH:Lcl/santander/santanderCL/utils/Constant$RATIO;

    goto :goto_0

    .line 239
    :sswitch_1
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$RATIO;->DENSITY_LOW:Lcl/santander/santanderCL/utils/Constant$RATIO;

    goto :goto_0

    .line 242
    :sswitch_2
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$RATIO;->DENSITY_MEDIUM:Lcl/santander/santanderCL/utils/Constant$RATIO;

    goto :goto_0

    .line 245
    :sswitch_3
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$RATIO;->DENSITY_XHIGH:Lcl/santander/santanderCL/utils/Constant$RATIO;

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0xa0 -> :sswitch_2
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public static quitarCerosDerecha(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cantidad"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, ""

    if-eq p0, v0, :cond_0

    .line 49
    :goto_0
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    return-object p0

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static quitarFormato(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "importe"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quitarFormatoRUT(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "rut"    # Ljava/lang/String;

    .prologue
    .line 97
    if-eqz p0, :cond_0

    .line 98
    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 100
    .end local p0    # "rut":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static rellenarPorDcha(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cadena"    # Ljava/lang/String;
    .param p1, "longitud"    # I
    .param p2, "caracter"    # Ljava/lang/String;

    .prologue
    .line 596
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 598
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 599
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 604
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 607
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-object p0

    .line 601
    .restart local v0    # "i":I
    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cadena"    # Ljava/lang/String;
    .param p1, "longitud"    # I
    .param p2, "caracter"    # Ljava/lang/String;

    .prologue
    .line 567
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 569
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 571
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 574
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 579
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-object p0

    .line 572
    .restart local v0    # "i":I
    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setDecimales(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cantidad"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 334
    const/4 v0, 0x2

    .line 335
    .local v0, "pos":I
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const/4 v0, 0x3

    .line 338
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 343
    .end local v0    # "pos":I
    :cond_1
    return-object p0
.end method

.method public static setDecimales(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "cantidad"    # Ljava/lang/String;
    .param p1, "decimales"    # I

    .prologue
    const/4 v2, 0x0

    .line 350
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 353
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 357
    :cond_1
    return-object p0
.end method

.method public static translateBase64toImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 496
    const/4 v2, 0x0

    .line 498
    .local v2, "resp":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 499
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 500
    .local v0, "decodedString":[B
    const/4 v3, 0x0

    .line 501
    array-length v4, v0

    .line 500
    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 507
    .end local v0    # "decodedString":[B
    :cond_0
    :goto_0
    return-object v2

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static translateSoapObject(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;)Ljava/lang/String;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "resp":Ljava/lang/String;
    invoke-virtual {p1, p0}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "aux":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 274
    instance-of v2, v0, Lorg/ksoap2/serialization/SoapPrimitive;

    if-eqz v2, :cond_1

    .line 275
    check-cast v0, Lorg/ksoap2/serialization/SoapPrimitive;

    .end local v0    # "aux":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/SoapPrimitive;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_0
    :goto_0
    return-object v1

    .line 278
    .restart local v0    # "aux":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anyType{}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    const-string v1, ""

    goto :goto_0

    .line 281
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static translateStringtoBytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 476
    move-object v1, v2

    check-cast v1, [B

    .line 481
    .local v1, "resp":[B
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 487
    check-cast v1, [B

    goto :goto_0
.end method

.method private static validarDato(I)Z
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "resp":Z
    const/4 v1, -0x1

    if-le p0, v1, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 204
    :cond_0
    return v0
.end method

.method private static validateExpression(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 294
    .local v2, "resp":Ljava/lang/Boolean;
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 296
    .local v1, "patternExp":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 298
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 302
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "patternExp":Ljava/util/regex/Pattern;
    :goto_0
    return-object v2

    .line 299
    :catch_0
    move-exception v3

    goto :goto_0
.end method
