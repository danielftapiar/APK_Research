.class public final enum Lcom/vrem/wifianalyzer/c/c/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/c/c/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/c/c/f;

.field public static final enum b:Lcom/vrem/wifianalyzer/c/c/f;

.field public static final enum c:Lcom/vrem/wifianalyzer/c/c/f;

.field public static final enum d:Lcom/vrem/wifianalyzer/c/c/f;

.field public static final enum e:Lcom/vrem/wifianalyzer/c/c/f;

.field private static final synthetic h:[Lcom/vrem/wifianalyzer/c/c/f;


# instance fields
.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/f;

    const-string v1, "ZERO"

    const v2, 0x7f020068

    const v3, 0x7f0e0027

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/vrem/wifianalyzer/c/c/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/f;->a:Lcom/vrem/wifianalyzer/c/c/f;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/f;

    const-string v1, "ONE"

    const v2, 0x7f020069

    const v3, 0x7f0e004f

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/vrem/wifianalyzer/c/c/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/f;->b:Lcom/vrem/wifianalyzer/c/c/f;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/f;

    const-string v1, "TWO"

    const v2, 0x7f02006a

    const v3, 0x7f0e004f

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/vrem/wifianalyzer/c/c/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/f;->c:Lcom/vrem/wifianalyzer/c/c/f;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/f;

    const-string v1, "THREE"

    const v2, 0x7f02006b

    const v3, 0x7f0e004a

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/vrem/wifianalyzer/c/c/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/f;->d:Lcom/vrem/wifianalyzer/c/c/f;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/f;

    const-string v1, "FOUR"

    const v2, 0x7f02006c

    const v3, 0x7f0e004a

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/vrem/wifianalyzer/c/c/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/f;->e:Lcom/vrem/wifianalyzer/c/c/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vrem/wifianalyzer/c/c/f;

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/f;->a:Lcom/vrem/wifianalyzer/c/c/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/f;->b:Lcom/vrem/wifianalyzer/c/c/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/f;->c:Lcom/vrem/wifianalyzer/c/c/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/f;->d:Lcom/vrem/wifianalyzer/c/c/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/f;->e:Lcom/vrem/wifianalyzer/c/c/f;

    aput-object v1, v0, v8

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/f;->h:[Lcom/vrem/wifianalyzer/c/c/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vrem/wifianalyzer/c/c/f;->f:I

    iput p4, p0, Lcom/vrem/wifianalyzer/c/c/f;->g:I

    return-void
.end method

.method public static a(I)Lcom/vrem/wifianalyzer/c/c/f;
    .locals 2

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/f;->values()[Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v0

    array-length v0, v0

    invoke-static {p0, v0}, Lcom/vrem/wifianalyzer/c/c/l;->b(II)I

    move-result v0

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/f;->values()[Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static a(Lcom/vrem/wifianalyzer/c/c/f;)Lcom/vrem/wifianalyzer/c/c/f;
    .locals 2

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/f;->values()[Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/c/f;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/f;->values()[Lcom/vrem/wifianalyzer/c/c/f;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/c/f;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/c/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/f;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/c/c/f;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/f;->h:[Lcom/vrem/wifianalyzer/c/c/f;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/c/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/c/c/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c/f;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c/f;->f:I

    return v0
.end method
