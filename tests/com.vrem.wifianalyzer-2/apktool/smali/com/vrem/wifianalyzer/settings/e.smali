.class public final enum Lcom/vrem/wifianalyzer/settings/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/settings/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/settings/e;

.field public static final enum b:Lcom/vrem/wifianalyzer/settings/e;

.field private static final synthetic e:[Lcom/vrem/wifianalyzer/settings/e;


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/settings/e;

    const-string v1, "DARK"

    const v2, 0x7f0b0124

    const v3, 0x7f0b0126

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/vrem/wifianalyzer/settings/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vrem/wifianalyzer/settings/e;->a:Lcom/vrem/wifianalyzer/settings/e;

    new-instance v0, Lcom/vrem/wifianalyzer/settings/e;

    const-string v1, "LIGHT"

    const v2, 0x7f0b0125

    const v3, 0x7f0b0127

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/vrem/wifianalyzer/settings/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vrem/wifianalyzer/settings/e;->b:Lcom/vrem/wifianalyzer/settings/e;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vrem/wifianalyzer/settings/e;

    sget-object v1, Lcom/vrem/wifianalyzer/settings/e;->a:Lcom/vrem/wifianalyzer/settings/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/settings/e;->b:Lcom/vrem/wifianalyzer/settings/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vrem/wifianalyzer/settings/e;->e:[Lcom/vrem/wifianalyzer/settings/e;

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

    iput p3, p0, Lcom/vrem/wifianalyzer/settings/e;->c:I

    iput p4, p0, Lcom/vrem/wifianalyzer/settings/e;->d:I

    return-void
.end method

.method public static a(I)Lcom/vrem/wifianalyzer/settings/e;
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/vrem/wifianalyzer/settings/e;->values()[Lcom/vrem/wifianalyzer/settings/e;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/settings/e;->a:Lcom/vrem/wifianalyzer/settings/e;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/vrem/wifianalyzer/settings/e;->values()[Lcom/vrem/wifianalyzer/settings/e;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/settings/e;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/settings/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/settings/e;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/settings/e;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/settings/e;->e:[Lcom/vrem/wifianalyzer/settings/e;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/settings/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/settings/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/settings/e;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/settings/e;->d:I

    return v0
.end method
