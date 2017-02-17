.class public final Lcom/vrem/wifianalyzer/c/c/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(II)D
    .locals 8

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide v2, 0x403b8ccccccccccdL    # 27.55

    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a;->a([B)V

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    invoke-static {p0, v0}, La/a/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-static {v0, v1}, La/a/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(II)I
    .locals 2

    const/16 v0, -0x64

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x37

    if-lt p0, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, 0x64

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2d

    goto :goto_0
.end method
