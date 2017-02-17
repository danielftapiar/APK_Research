.class public final enum Lcom/vrem/wifianalyzer/a/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/a/d;

.field public static final enum b:Lcom/vrem/wifianalyzer/a/d;

.field public static final enum c:Lcom/vrem/wifianalyzer/a/d;

.field private static final synthetic e:[Lcom/vrem/wifianalyzer/a/d;


# instance fields
.field private final d:[Lcom/vrem/wifianalyzer/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/a/d;

    const-string v1, "GROUP_FEATURE"

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/vrem/wifianalyzer/a/e;

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->a:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v4

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->b:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v5

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->c:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v6

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->d:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v4, v2}, Lcom/vrem/wifianalyzer/a/d;-><init>(Ljava/lang/String;I[Lcom/vrem/wifianalyzer/a/e;)V

    sput-object v0, Lcom/vrem/wifianalyzer/a/d;->a:Lcom/vrem/wifianalyzer/a/d;

    new-instance v0, Lcom/vrem/wifianalyzer/a/d;

    const-string v1, "GROUP_OTHER"

    new-array v2, v7, [Lcom/vrem/wifianalyzer/a/e;

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->e:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v4

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->f:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v5

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->g:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v5, v2}, Lcom/vrem/wifianalyzer/a/d;-><init>(Ljava/lang/String;I[Lcom/vrem/wifianalyzer/a/e;)V

    sput-object v0, Lcom/vrem/wifianalyzer/a/d;->b:Lcom/vrem/wifianalyzer/a/d;

    new-instance v0, Lcom/vrem/wifianalyzer/a/d;

    const-string v1, "GROUP_SETTINGS"

    new-array v2, v6, [Lcom/vrem/wifianalyzer/a/e;

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->h:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v4

    sget-object v3, Lcom/vrem/wifianalyzer/a/e;->i:Lcom/vrem/wifianalyzer/a/e;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v6, v2}, Lcom/vrem/wifianalyzer/a/d;-><init>(Ljava/lang/String;I[Lcom/vrem/wifianalyzer/a/e;)V

    sput-object v0, Lcom/vrem/wifianalyzer/a/d;->c:Lcom/vrem/wifianalyzer/a/d;

    new-array v0, v7, [Lcom/vrem/wifianalyzer/a/d;

    sget-object v1, Lcom/vrem/wifianalyzer/a/d;->a:Lcom/vrem/wifianalyzer/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/a/d;->b:Lcom/vrem/wifianalyzer/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vrem/wifianalyzer/a/d;->c:Lcom/vrem/wifianalyzer/a/d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vrem/wifianalyzer/a/d;->e:[Lcom/vrem/wifianalyzer/a/d;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/vrem/wifianalyzer/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/vrem/wifianalyzer/a/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vrem/wifianalyzer/a/d;->d:[Lcom/vrem/wifianalyzer/a/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/a/d;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/a/d;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/a/d;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/a/d;->e:[Lcom/vrem/wifianalyzer/a/d;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/a/d;

    return-object v0
.end method


# virtual methods
.method public a()[Lcom/vrem/wifianalyzer/a/e;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/a/d;->d:[Lcom/vrem/wifianalyzer/a/e;

    return-object v0
.end method
