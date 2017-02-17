.class public final enum Lcom/vrem/wifianalyzer/c/a/j;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/c/a/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/c/a/j;

.field public static final enum b:Lcom/vrem/wifianalyzer/c/a/j;

.field public static final enum c:Lcom/vrem/wifianalyzer/c/a/j;

.field public static final enum d:Lcom/vrem/wifianalyzer/c/a/j;

.field public static final enum e:Lcom/vrem/wifianalyzer/c/a/j;

.field private static final synthetic h:[Lcom/vrem/wifianalyzer/c/a/j;


# instance fields
.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/j;

    const-string v1, "MHZ_20"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/vrem/wifianalyzer/c/a/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/j;->a:Lcom/vrem/wifianalyzer/c/a/j;

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/j;

    const-string v1, "MHZ_40"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v4, v2}, Lcom/vrem/wifianalyzer/c/a/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/j;->b:Lcom/vrem/wifianalyzer/c/a/j;

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/j;

    const-string v1, "MHZ_80"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v5, v2}, Lcom/vrem/wifianalyzer/c/a/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/j;->c:Lcom/vrem/wifianalyzer/c/a/j;

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/j;

    const-string v1, "MHZ_160"

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v6, v2}, Lcom/vrem/wifianalyzer/c/a/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/j;->d:Lcom/vrem/wifianalyzer/c/a/j;

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/j;

    const-string v1, "MHZ_80_PLUS"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v7, v2}, Lcom/vrem/wifianalyzer/c/a/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/j;->e:Lcom/vrem/wifianalyzer/c/a/j;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vrem/wifianalyzer/c/a/j;

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/j;->a:Lcom/vrem/wifianalyzer/c/a/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/j;->b:Lcom/vrem/wifianalyzer/c/a/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/j;->c:Lcom/vrem/wifianalyzer/c/a/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/j;->d:Lcom/vrem/wifianalyzer/c/a/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/j;->e:Lcom/vrem/wifianalyzer/c/a/j;

    aput-object v1, v0, v7

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/j;->h:[Lcom/vrem/wifianalyzer/c/a/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vrem/wifianalyzer/c/a/j;->f:I

    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/vrem/wifianalyzer/c/a/j;->g:I

    return-void
.end method

.method public static a(I)Lcom/vrem/wifianalyzer/c/a/j;
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/vrem/wifianalyzer/c/a/j;->values()[Lcom/vrem/wifianalyzer/c/a/j;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/j;->a:Lcom/vrem/wifianalyzer/c/a/j;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/vrem/wifianalyzer/c/a/j;->values()[Lcom/vrem/wifianalyzer/c/a/j;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/a/j;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/c/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/j;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/c/a/j;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/j;->h:[Lcom/vrem/wifianalyzer/c/a/j;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/c/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/c/a/j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/a/j;->f:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/a/j;->g:I

    return v0
.end method
