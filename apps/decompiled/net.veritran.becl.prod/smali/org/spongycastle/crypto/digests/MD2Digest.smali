.class public Lorg/spongycastle/crypto/digests/MD2Digest;
.super Ljava/lang/Object;
.source "MD2Digest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S:[B


# instance fields
.field private C:[B

.field private COff:I

.field private M:[B

.field private X:[B

.field private mOff:I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/MD2Digest;->S:[B

    return-void

    :array_0
    .array-data 1
        0x29t
        0x2et
        0x43t
        -0x37t
        -0x5et
        -0x28t
        0x7ct
        0x1t
        0x3dt
        0x36t
        0x54t
        -0x5ft
        -0x14t
        -0x10t
        0x6t
        0x13t
        0x62t
        -0x59t
        0x5t
        -0xdt
        -0x40t
        -0x39t
        0x73t
        -0x74t
        -0x68t
        -0x6dt
        0x2bt
        -0x27t
        -0x44t
        0x4ct
        -0x7et
        -0x36t
        0x1et
        -0x65t
        0x57t
        0x3ct
        -0x3t
        -0x2ct
        -0x20t
        0x16t
        0x67t
        0x42t
        0x6ft
        0x18t
        -0x76t
        0x17t
        -0x1bt
        0x12t
        -0x42t
        0x4et
        -0x3ct
        -0x2at
        -0x26t
        -0x62t
        -0x22t
        0x49t
        -0x60t
        -0x5t
        -0xbt
        -0x72t
        -0x45t
        0x2ft
        -0x12t
        0x7at
        -0x57t
        0x68t
        0x79t
        -0x6ft
        0x15t
        -0x4et
        0x7t
        0x3ft
        -0x6ct
        -0x3et
        0x10t
        -0x77t
        0xbt
        0x22t
        0x5ft
        0x21t
        -0x80t
        0x7ft
        0x5dt
        -0x66t
        0x5at
        -0x70t
        0x32t
        0x27t
        0x35t
        0x3et
        -0x34t
        -0x19t
        -0x41t
        -0x9t
        -0x69t
        0x3t
        -0x1t
        0x19t
        0x30t
        -0x4dt
        0x48t
        -0x5bt
        -0x4bt
        -0x2ft
        -0x29t
        0x5et
        -0x6et
        0x2at
        -0x54t
        0x56t
        -0x56t
        -0x3at
        0x4ft
        -0x48t
        0x38t
        -0x2et
        -0x6at
        -0x5ct
        0x7dt
        -0x4at
        0x76t
        -0x4t
        0x6bt
        -0x1et
        -0x64t
        0x74t
        0x4t
        -0xft
        0x45t
        -0x63t
        0x70t
        0x59t
        0x64t
        0x71t
        -0x79t
        0x20t
        -0x7at
        0x5bt
        -0x31t
        0x65t
        -0x1at
        0x2dt
        -0x58t
        0x2t
        0x1bt
        0x60t
        0x25t
        -0x53t
        -0x52t
        -0x50t
        -0x47t
        -0xat
        0x1ct
        0x46t
        0x61t
        0x69t
        0x34t
        0x40t
        0x7et
        0xft
        0x55t
        0x47t
        -0x5dt
        0x23t
        -0x23t
        0x51t
        -0x51t
        0x3at
        -0x3dt
        0x5ct
        -0x7t
        -0x32t
        -0x46t
        -0x3bt
        -0x16t
        0x26t
        0x2ct
        0x53t
        0xdt
        0x6et
        -0x7bt
        0x28t
        -0x7ct
        0x9t
        -0x2dt
        -0x21t
        -0x33t
        -0xct
        0x41t
        -0x7ft
        0x4dt
        0x52t
        0x6at
        -0x24t
        0x37t
        -0x38t
        0x6ct
        -0x3ft
        -0x55t
        -0x6t
        0x24t
        -0x1ft
        0x7bt
        0x8t
        0xct
        -0x43t
        -0x4ft
        0x4at
        0x78t
        -0x78t
        -0x6bt
        -0x75t
        -0x1dt
        0x63t
        -0x18t
        0x6dt
        -0x17t
        -0x35t
        -0x2bt
        -0x2t
        0x3bt
        0x0t
        0x1dt
        0x39t
        -0xet
        -0x11t
        -0x49t
        0xet
        0x66t
        0x58t
        -0x30t
        -0x1ct
        -0x5at
        0x77t
        0x72t
        -0x8t
        -0x15t
        0x75t
        0x4bt
        0xat
        0x31t
        0x44t
        0x50t
        -0x4ct
        -0x71t
        -0x13t
        0x1ft
        0x1at
        -0x25t
        -0x67t
        -0x73t
        0x33t
        -0x61t
        0x11t
        -0x7dt
        0x14t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    .line 17
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    .line 20
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    .line 25
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD2Digest;->reset()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/MD2Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/MD2Digest;

    .prologue
    const/16 v1, 0x10

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    .line 17
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    .line 20
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    .line 29
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->xOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->xOff:I

    .line 31
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    .line 33
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->COff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->COff:I

    .line 35
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/16 v4, 0x10

    .line 64
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    sub-int/2addr v2, v3

    int-to-byte v1, v2

    .line 65
    .local v1, "paddingByte":B
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    aput-byte v1, v2, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 72
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 74
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 76
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    iget v3, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->xOff:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD2Digest;->reset()V

    .line 80
    return v4
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "MD2"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x10

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock([B)V
    .locals 8
    .param p1, "m"    # [B

    .prologue
    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    .line 174
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v5, v0, 0x10

    aget-byte v6, p1, v0

    aput-byte v6, v4, v5

    .line 175
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v5, v0, 0x20

    aget-byte v6, p1, v0

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v7, v7, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    const/4 v3, 0x0

    .line 180
    .local v3, "t":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v4, 0x12

    if-ge v1, v4, :cond_2

    .line 182
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    const/16 v4, 0x30

    if-ge v2, v4, :cond_1

    .line 184
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v5, v4, v2

    sget-object v6, Lorg/spongycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v6, v6, v3

    xor-int/2addr v5, v6

    int-to-byte v3, v5

    aput-byte v3, v4, v2

    .line 185
    and-int/lit16 v3, v3, 0xff

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 187
    :cond_1
    add-int v4, v3, v1

    rem-int/lit16 v3, v4, 0x100

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    .end local v2    # "k":I
    :cond_2
    return-void
.end method

.method protected processCheckSum([B)V
    .locals 6
    .param p1, "m"    # [B

    .prologue
    .line 163
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    const/16 v3, 0xf

    aget-byte v0, v2, v3

    .line 164
    .local v0, "L":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 166
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v3, v2, v1

    sget-object v4, Lorg/spongycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v5, p1, v1

    xor-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 167
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v0, v2, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iput v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->xOff:I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->X:[B

    aput-byte v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iput v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    .line 93
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    aput-byte v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_1
    iput v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->COff:I

    .line 98
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 100
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->C:[B

    aput-byte v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 102
    :cond_2
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    aput-byte p1, v0, v1

    .line 112
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    .line 118
    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v2, 0x10

    .line 132
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->mOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 134
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->update(B)V

    .line 135
    add-int/lit8 p2, p2, 0x1

    .line 136
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 142
    :cond_0
    :goto_1
    if-le p3, v2, :cond_1

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->processBlock([B)V

    .line 147
    add-int/lit8 p3, p3, -0x10

    .line 148
    add-int/lit8 p2, p2, 0x10

    goto :goto_1

    .line 154
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 156
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->update(B)V

    .line 157
    add-int/lit8 p2, p2, 0x1

    .line 158
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 160
    :cond_2
    return-void
.end method
