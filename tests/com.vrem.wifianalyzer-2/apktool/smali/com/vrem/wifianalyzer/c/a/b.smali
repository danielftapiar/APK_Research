.class public final enum Lcom/vrem/wifianalyzer/c/a/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/c/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/c/a/b;

.field public static final enum b:Lcom/vrem/wifianalyzer/c/a/b;

.field private static final synthetic e:[Lcom/vrem/wifianalyzer/c/a/b;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/vrem/wifianalyzer/c/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/b;

    const-string v1, "GHZ2"

    const-string v2, "2.4 GHz"

    new-instance v3, Lcom/vrem/wifianalyzer/c/a/h;

    invoke-direct {v3}, Lcom/vrem/wifianalyzer/c/a/h;-><init>()V

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/vrem/wifianalyzer/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vrem/wifianalyzer/c/a/g;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/b;

    const-string v1, "GHZ5"

    const-string v2, "5 GHz"

    new-instance v3, Lcom/vrem/wifianalyzer/c/a/i;

    invoke-direct {v3}, Lcom/vrem/wifianalyzer/c/a/i;-><init>()V

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/vrem/wifianalyzer/c/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vrem/wifianalyzer/c/a/g;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vrem/wifianalyzer/c/a/b;

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/b;->e:[Lcom/vrem/wifianalyzer/c/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/vrem/wifianalyzer/c/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vrem/wifianalyzer/c/a/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/a/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vrem/wifianalyzer/c/a/b;->d:Lcom/vrem/wifianalyzer/c/a/g;

    return-void
.end method

.method public static a(I)Lcom/vrem/wifianalyzer/c/a/b;
    .locals 5

    invoke-static {}, Lcom/vrem/wifianalyzer/c/a/b;->values()[Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/b;->d()Lcom/vrem/wifianalyzer/c/a/g;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/vrem/wifianalyzer/c/a/g;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    goto :goto_1
.end method

.method public static b(I)Lcom/vrem/wifianalyzer/c/a/b;
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/vrem/wifianalyzer/c/a/b;->values()[Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/vrem/wifianalyzer/c/a/b;->values()[Lcom/vrem/wifianalyzer/c/a/b;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/a/b;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/c/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/a/b;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/c/a/b;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->e:[Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/c/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/c/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/vrem/wifianalyzer/c/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->a:Lcom/vrem/wifianalyzer/c/a/b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/b;->b:Lcom/vrem/wifianalyzer/c/a/b;

    invoke-virtual {v0, p0}, Lcom/vrem/wifianalyzer/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/vrem/wifianalyzer/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/a/b;->d:Lcom/vrem/wifianalyzer/c/a/g;

    return-object v0
.end method
