.class final Lorg/spongycastle/asn1/sec/SECNamedCurves$26;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 13

    .prologue
    .line 701
    const/16 v1, 0xe9

    .line 702
    .local v1, "m":I
    const/16 v2, 0x4a

    .line 704
    .local v2, "k":I
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 705
    .local v3, "a":Ljava/math/BigInteger;
    const-string v7, "0066647EDE6C332C7F8C0923BB58213B333B20E9CE4281FE115F7D8F90AD"

    # invokes: Lorg/spongycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    .line 706
    .local v4, "b":Ljava/math/BigInteger;
    const-string v7, "74D59FF07F6B413D0EA14B344B20A2DB049B50C3"

    invoke-static {v7}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v12

    .line 707
    .local v12, "S":[B
    const-string v7, "01000000000000000000000000000013E974E72F8A6922031D2603CFE0D7"

    # invokes: Lorg/spongycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 708
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v10, 0x2

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 710
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 713
    .local v0, "curve":Lorg/spongycastle/math/ec/ECCurve;
    const-string v7, "0400FAC9DFCBAC8313BB2139F1BB755FEF65BC391F8B36F8F8EB7371FD558B01006A08A41903350678E58528BEBF8A0BEFF867A7CA36716F7E01F81052"

    invoke-static {v7}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 717
    .local v9, "G":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v7, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v8, v0

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method
