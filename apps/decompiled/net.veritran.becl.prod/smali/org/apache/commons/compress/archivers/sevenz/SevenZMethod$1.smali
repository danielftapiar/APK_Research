.class final enum Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod$1;
.super Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
.source "SevenZMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I[B)V
    .locals 1
    .param p3, "x0"    # [B

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[BLorg/apache/commons/compress/archivers/sevenz/SevenZMethod$1;)V

    return-void
.end method


# virtual methods
.method getProperties()[B
    .locals 6

    .prologue
    .line 34
    const/high16 v0, 0x800000

    .line 35
    .local v0, "dictSize":I
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    .line 36
    .local v1, "lead":I
    rsub-int/lit8 v3, v1, 0x1e

    ushr-int v3, v0, v3

    add-int/lit8 v2, v3, -0x2

    .line 37
    .local v2, "secondBit":I
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    rsub-int/lit8 v5, v1, 0x13

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    return-object v3
.end method
