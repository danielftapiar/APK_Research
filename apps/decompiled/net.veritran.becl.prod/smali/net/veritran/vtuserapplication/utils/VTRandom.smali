.class public Lnet/veritran/vtuserapplication/utils/VTRandom;
.super Ljava/lang/Object;


# static fields
.field private static b:Lnet/veritran/vtuserapplication/utils/VTRandom;


# instance fields
.field private a:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/vtuserapplication/utils/VTRandom;->b:Lnet/veritran/vtuserapplication/utils/VTRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/VTRandom;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public static getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/utils/VTRandom;->b:Lnet/veritran/vtuserapplication/utils/VTRandom;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/utils/VTRandom;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/utils/VTRandom;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/VTRandom;->b:Lnet/veritran/vtuserapplication/utils/VTRandom;

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/VTRandom;->b:Lnet/veritran/vtuserapplication/utils/VTRandom;

    return-object v0
.end method

.method public static getNewInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;
    .locals 1

    new-instance v0, Lnet/veritran/vtuserapplication/utils/VTRandom;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/utils/VTRandom;-><init>()V

    return-object v0
.end method


# virtual methods
.method public nextInt()I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/VTRandom;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p1

    return v0
.end method

.method public nextLong()J
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/VTRandom;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    rem-long/2addr v0, p1

    return-wide v0
.end method
