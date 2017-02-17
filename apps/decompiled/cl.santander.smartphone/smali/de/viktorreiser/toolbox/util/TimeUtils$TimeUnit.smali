.class public final enum Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;
.super Ljava/lang/Enum;
.source "TimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/util/TimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAY:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field private static final synthetic ENUM$VALUES:[Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum HOUR:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum MICROSECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum MILLISECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum MINUTE:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum MONTH:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum NANOSECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum SECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum WEEK:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

.field public static final enum YEAR:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;


# instance fields
.field private final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "NANOSECOND"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->NANOSECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 20
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "MICROSECOND"

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, v6, v2, v3}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->MICROSECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 21
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "MILLISECOND"

    const-wide/32 v2, 0xf4240

    invoke-direct {v0, v1, v7, v2, v3}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->MILLISECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 22
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "SECOND"

    const-wide/32 v2, 0x3b9aca00

    invoke-direct {v0, v1, v8, v2, v3}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->SECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 23
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "MINUTE"

    const-wide v2, 0xdf8475800L

    invoke-direct {v0, v1, v9, v2, v3}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->MINUTE:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 24
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "HOUR"

    const/4 v2, 0x5

    const-wide v3, 0x53d1ac1000L

    invoke-direct {v0, v1, v2, v3, v4}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->HOUR:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 25
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "DAY"

    const/4 v2, 0x6

    const-wide v3, 0x7dba8218000L

    invoke-direct {v0, v1, v2, v3, v4}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->DAY:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 26
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "WEEK"

    const/4 v2, 0x7

    const-wide v3, 0x370198ea8000L

    invoke-direct {v0, v1, v2, v3, v4}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->WEEK:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 27
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "MONTH"

    const/16 v2, 0x8

    const-wide v3, 0xebbdb3ed0000L

    invoke-direct {v0, v1, v2, v3, v4}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->MONTH:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 28
    new-instance v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    const-string v1, "YEAR"

    const/16 v2, 0x9

    const-wide v3, 0xb0ce46f1c0000L

    invoke-direct {v0, v1, v2, v3, v4}, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->YEAR:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .line 18
    const/16 v0, 0xa

    new-array v0, v0, [Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    sget-object v1, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->NANOSECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v1, v0, v5

    sget-object v1, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->MICROSECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->MILLISECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v1, v0, v7

    sget-object v1, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->SECOND:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v1, v0, v8

    sget-object v1, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->MINUTE:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->HOUR:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->DAY:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->WEEK:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->MONTH:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->YEAR:Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    aput-object v2, v0, v1

    sput-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->ENUM$VALUES:[Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .param p3, "value"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-wide p3, p0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->mValue:J

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    return-object v0
.end method

.method public static values()[Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->ENUM$VALUES:[Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    array-length v1, v0

    new-array v2, v1, [Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public convert(JLde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;)J
    .locals 5
    .param p1, "value"    # J
    .param p3, "unit"    # Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;

    .prologue
    const-wide v1, 0x7fffffffffffffffL

    .line 56
    iget-wide v3, p3, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->mValue:J

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 57
    .local v0, "i":Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 58
    iget-wide v3, p0, Lde/viktorreiser/toolbox/util/TimeUtils$TimeUnit;->mValue:J

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 60
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    :goto_0
    return-wide v1

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method
