.class public final Lorg/spongycastle/crypto/digests/WhirlpoolDigest;
.super Ljava/lang/Object;
.source "WhirlpoolDigest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# static fields
.field private static final BITCOUNT_ARRAY_SIZE:I = 0x20

.field private static final BYTE_LENGTH:I = 0x40

.field private static final C0:[J

.field private static final C1:[J

.field private static final C2:[J

.field private static final C3:[J

.field private static final C4:[J

.field private static final C5:[J

.field private static final C6:[J

.field private static final C7:[J

.field private static final DIGEST_LENGTH_BYTES:I = 0x40

.field private static final EIGHT:[S

.field private static final REDUCTION_POLYNOMIAL:I = 0x11d

.field private static final ROUNDS:I = 0xa

.field private static final SBOX:[I


# instance fields
.field private _K:[J

.field private _L:[J

.field private _bitCount:[S

.field private _block:[J

.field private _buffer:[B

.field private _bufferPos:I

.field private _hash:[J

.field private final _rc:[J

.field private _state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x100

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    .line 40
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    .line 41
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    .line 42
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    .line 43
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    .line 44
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    .line 45
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    .line 46
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    .line 47
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    .line 311
    const/16 v0, 0x20

    new-array v0, v0, [S

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    .line 314
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    const/16 v1, 0x1f

    const/16 v2, 0x8

    aput-short v2, v0, v1

    .line 315
    return-void

    .line 21
    :array_0
    .array-data 4
        0x18
        0x23
        0xc6
        0xe8
        0x87
        0xb8
        0x1
        0x4f
        0x36
        0xa6
        0xd2
        0xf5
        0x79
        0x6f
        0x91
        0x52
        0x60
        0xbc
        0x9b
        0x8e
        0xa3
        0xc
        0x7b
        0x35
        0x1d
        0xe0
        0xd7
        0xc2
        0x2e
        0x4b
        0xfe
        0x57
        0x15
        0x77
        0x37
        0xe5
        0x9f
        0xf0
        0x4a
        0xda
        0x58
        0xc9
        0x29
        0xa
        0xb1
        0xa0
        0x6b
        0x85
        0xbd
        0x5d
        0x10
        0xf4
        0xcb
        0x3e
        0x5
        0x67
        0xe4
        0x27
        0x41
        0x8b
        0xa7
        0x7d
        0x95
        0xd8
        0xfb
        0xee
        0x7c
        0x66
        0xdd
        0x17
        0x47
        0x9e
        0xca
        0x2d
        0xbf
        0x7
        0xad
        0x5a
        0x83
        0x33
        0x63
        0x2
        0xaa
        0x71
        0xc8
        0x19
        0x49
        0xd9
        0xf2
        0xe3
        0x5b
        0x88
        0x9a
        0x26
        0x32
        0xb0
        0xe9
        0xf
        0xd5
        0x80
        0xbe
        0xcd
        0x34
        0x48
        0xff
        0x7a
        0x90
        0x5f
        0x20
        0x68
        0x1a
        0xae
        0xb4
        0x54
        0x93
        0x22
        0x64
        0xf1
        0x73
        0x12
        0x40
        0x8
        0xc3
        0xec
        0xdb
        0xa1
        0x8d
        0x3d
        0x97
        0x0
        0xcf
        0x2b
        0x76
        0x82
        0xd6
        0x1b
        0xb5
        0xaf
        0x6a
        0x50
        0x45
        0xf3
        0x30
        0xef
        0x3f
        0x55
        0xa2
        0xea
        0x65
        0xba
        0x2f
        0xc0
        0xde
        0x1c
        0xfd
        0x4d
        0x92
        0x75
        0x6
        0x8a
        0xb2
        0xe6
        0xe
        0x1f
        0x62
        0xd4
        0xa8
        0x96
        0xf9
        0xc5
        0x25
        0x59
        0x84
        0x72
        0x39
        0x4c
        0x5e
        0x78
        0x38
        0x8c
        0xd1
        0xa5
        0xe2
        0x61
        0xb3
        0x21
        0x9c
        0x1e
        0x43
        0xc7
        0xfc
        0x4
        0x51
        0x99
        0x6d
        0xd
        0xfa
        0xdf
        0x7e
        0x24
        0x3b
        0xab
        0xce
        0x11
        0x8f
        0x4e
        0xb7
        0xeb
        0x3c
        0x81
        0x94
        0xf7
        0xb9
        0x13
        0x2c
        0xd3
        0xe7
        0x6e
        0xc4
        0x3
        0x56
        0x44
        0x7f
        0xa9
        0x2a
        0xbb
        0xc1
        0x53
        0xdc
        0xb
        0x9d
        0x6c
        0x31
        0x74
        0xf6
        0x46
        0xac
        0x89
        0x14
        0xe1
        0x16
        0x3a
        0x69
        0x9
        0x70
        0xb6
        0xd0
        0xed
        0xcc
        0x42
        0x98
        0xa4
        0x28
        0x5c
        0xf8
        0x86
    .end array-data
.end method

.method public constructor <init>()V
    .locals 22

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v2, 0xb

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    .line 120
    const/16 v2, 0x40

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    .line 121
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 122
    const/16 v2, 0x20

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    .line 125
    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    .line 126
    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    .line 127
    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    .line 128
    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    .line 129
    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    .line 53
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    const/16 v2, 0x100

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 55
    sget-object v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    aget v3, v2, v20

    .line 56
    .local v3, "v1":I
    shl-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v9

    .line 57
    .local v9, "v2":I
    shl-int/lit8 v2, v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v5

    .line 58
    .local v5, "v4":I
    xor-int v8, v5, v3

    .line 59
    .local v8, "v5":I
    shl-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v7

    .line 60
    .local v7, "v8":I
    xor-int v10, v7, v3

    .line 62
    .local v10, "v9":I
    sget-object v11, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    move-object/from16 v2, p0

    move v4, v3

    move v6, v3

    invoke-direct/range {v2 .. v10}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v11, v20

    .line 63
    sget-object v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    move-object/from16 v11, p0

    move v12, v10

    move v13, v3

    move v14, v3

    move v15, v5

    move/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v11 .. v19}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    .line 64
    sget-object v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    move-object/from16 v11, p0

    move v12, v9

    move v13, v10

    move v14, v3

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v3

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v11 .. v19}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    .line 65
    sget-object v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    move-object/from16 v11, p0

    move v12, v8

    move v13, v9

    move v14, v10

    move v15, v3

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v3

    move/from16 v19, v7

    invoke-direct/range {v11 .. v19}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    .line 66
    sget-object v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    move-object/from16 v6, p0

    move v11, v3

    move v12, v3

    move v13, v5

    move v14, v3

    invoke-direct/range {v6 .. v14}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    .line 67
    sget-object v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    move-object/from16 v11, p0

    move v12, v3

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v3

    move/from16 v18, v3

    move/from16 v19, v5

    invoke-direct/range {v11 .. v19}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    .line 68
    sget-object v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    move-object/from16 v4, p0

    move v6, v3

    move v11, v3

    move v12, v3

    invoke-direct/range {v4 .. v12}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    .line 69
    sget-object v2, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    move-object/from16 v11, p0

    move v12, v3

    move v13, v5

    move v14, v3

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v3

    invoke-direct/range {v11 .. v19}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    .line 53
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 73
    .end local v3    # "v1":I
    .end local v5    # "v4":I
    .end local v7    # "v8":I
    .end local v8    # "v5":I
    .end local v9    # "v2":I
    .end local v10    # "v9":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    aput-wide v12, v2, v4

    .line 74
    const/16 v21, 0x1

    .local v21, "r":I
    :goto_1
    const/16 v2, 0xa

    move/from16 v0, v21

    if-gt v0, v2, :cond_1

    .line 76
    add-int/lit8 v2, v21, -0x1

    mul-int/lit8 v20, v2, 0x8

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    aget-wide v12, v4, v20

    const-wide/high16 v14, -0x100000000000000L

    and-long/2addr v12, v14

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    add-int/lit8 v6, v20, 0x1

    aget-wide v14, v4, v6

    const-wide/high16 v16, 0xff000000000000L

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    add-int/lit8 v6, v20, 0x2

    aget-wide v14, v4, v6

    const-wide v16, 0xff0000000000L

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    add-int/lit8 v6, v20, 0x3

    aget-wide v14, v4, v6

    const-wide v16, 0xff00000000L

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    add-int/lit8 v6, v20, 0x4

    aget-wide v14, v4, v6

    const-wide v16, 0xff000000L

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    add-int/lit8 v6, v20, 0x5

    aget-wide v14, v4, v6

    const-wide/32 v16, 0xff0000

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    add-int/lit8 v6, v20, 0x6

    aget-wide v14, v4, v6

    const-wide/32 v16, 0xff00

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    add-int/lit8 v6, v20, 0x7

    aget-wide v14, v4, v6

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, v2, v21

    .line 74
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 87
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/WhirlpoolDigest;)V
    .locals 4
    .param p1, "originalDigest"    # Lorg/spongycastle/crypto/digests/WhirlpoolDigest;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    .line 120
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    .line 121
    iput v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 122
    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    .line 125
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    .line 126
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    .line 127
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    .line 128
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    .line 129
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    .line 139
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 144
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    return-void
.end method

.method private bytesToLongFromBuffer([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "startPos"    # I

    .prologue
    const-wide/16 v8, 0xff

    .line 209
    add-int/lit8 v2, p2, 0x0

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    or-long v0, v2, v4

    .line 218
    .local v0, "rv":J
    return-wide v0
.end method

.method private convertLongToByteArray(J[BI)V
    .locals 7
    .param p1, "inputLong"    # J
    .param p3, "outputArray"    # [B
    .param p4, "offSet"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 225
    add-int v1, p4, v0

    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v2, v2, 0x38

    shr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method private copyBitLength()[B
    .locals 3

    .prologue
    .line 384
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 385
    .local v1, "rv":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 387
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-object v1
.end method

.method private finish()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 347
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->copyBitLength()[B

    move-result-object v0

    .line 349
    .local v0, "bitLength":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 351
    iget v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 353
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v1, v4}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    .line 362
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-le v1, v5, :cond_1

    .line 364
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_0

    .line 370
    :cond_1
    :goto_1
    iget v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-gt v1, v5, :cond_2

    .line 372
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_1

    .line 377
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v1, v4}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    .line 380
    return-void
.end method

.method private increment()V
    .locals 5

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "carry":I
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 322
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    aget-short v4, v4, v1

    add-int/2addr v3, v4

    add-int v2, v3, v0

    .line 324
    .local v2, "sum":I
    ushr-int/lit8 v0, v2, 0x8

    .line 325
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    and-int/lit16 v4, v2, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 320
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 327
    .end local v2    # "sum":I
    :cond_0
    return-void
.end method

.method private maskWithReductionPolynomial(I)I
    .locals 6
    .param p1, "input"    # I

    .prologue
    .line 108
    move v0, p1

    .line 109
    .local v0, "rv":I
    int-to-long v2, v0

    const-wide/16 v4, 0x100

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 111
    xor-int/lit16 v0, v0, 0x11d

    .line 113
    :cond_0
    return v0
.end method

.method private packIntoLong(IIIIIIII)J
    .locals 5
    .param p1, "b7"    # I
    .param p2, "b6"    # I
    .param p3, "b5"    # I
    .param p4, "b4"    # I
    .param p5, "b3"    # I
    .param p6, "b2"    # I
    .param p7, "b1"    # I
    .param p8, "b0"    # I

    .prologue
    .line 91
    int-to-long v0, p1

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p7

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p8

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private processFilledBuffer([BI)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    const/4 v4, 0x0

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->bytesToLongFromBuffer([BI)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->processBlock()V

    .line 203
    iput v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 204
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 205
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->finish()V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v2, v1, v0

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p2

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->convertLongToByteArray(J[BI)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->reset()V

    .line 175
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v1

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "Whirlpool"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 394
    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0x40

    return v0
.end method

.method protected processBlock()V
    .locals 14

    .prologue
    const/16 v13, 0x20

    const/16 v12, 0x18

    const/16 v11, 0x10

    const/4 v9, 0x0

    const/16 v10, 0x8

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    .line 237
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v6, v6, v0

    aput-wide v6, v3, v0

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    const/4 v1, 0x1

    .local v1, "round":I
    :goto_1
    const/16 v2, 0xa

    if-gt v1, v2, :cond_3

    .line 243
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    .line 245
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 246
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 247
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x1

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x30

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 248
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x2

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x28

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 249
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x3

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v13

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 250
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x4

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v12

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 251
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x5

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v11

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 252
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x6

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v10

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 253
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x7

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 256
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v4, v4

    invoke-static {v2, v9, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v4, v2, v9

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    aget-wide v6, v3, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v9

    .line 261
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_2

    .line 263
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    .line 265
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 266
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x1

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x30

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 267
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x2

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x28

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 268
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x3

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v13

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 269
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x4

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v12

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 270
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x5

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v11

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 271
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x6

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v10

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 272
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v2, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x7

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 276
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v4, v4

    invoke-static {v2, v9, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 280
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_4

    .line 282
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v4, v2, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    aget-wide v6, v3, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v8, v3, v0

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 285
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 184
    iput v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 185
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([SS)V

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    invoke-static {v0, v2, v3}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    invoke-static {v0, v2, v3}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 189
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    invoke-static {v0, v2, v3}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 190
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    invoke-static {v0, v2, v3}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    invoke-static {v0, v2, v3}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 192
    return-void
.end method

.method public update(B)V
    .locals 2
    .param p1, "in"    # B

    .prologue
    .line 289
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aput-byte p1, v0, v1

    .line 293
    iget v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 295
    iget v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    .line 300
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->increment()V

    .line 301
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 331
    :goto_0
    if-lez p3, :cond_0

    .line 333
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    .line 334
    add-int/lit8 p2, p2, 0x1

    .line 335
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method
