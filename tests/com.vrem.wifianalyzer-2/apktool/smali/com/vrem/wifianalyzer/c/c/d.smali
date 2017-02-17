.class public final enum Lcom/vrem/wifianalyzer/c/c/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/c/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/c/c/d;

.field public static final enum b:Lcom/vrem/wifianalyzer/c/c/d;

.field public static final enum c:Lcom/vrem/wifianalyzer/c/c/d;

.field public static final enum d:Lcom/vrem/wifianalyzer/c/c/d;

.field public static final enum e:Lcom/vrem/wifianalyzer/c/c/d;

.field private static final synthetic g:[Lcom/vrem/wifianalyzer/c/c/d;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/d;

    const-string v1, "NONE"

    const v2, 0x7f020063

    invoke-direct {v0, v1, v3, v2}, Lcom/vrem/wifianalyzer/c/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/d;->a:Lcom/vrem/wifianalyzer/c/c/d;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/d;

    const-string v1, "WPS"

    const v2, 0x7f020064

    invoke-direct {v0, v1, v4, v2}, Lcom/vrem/wifianalyzer/c/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/d;->b:Lcom/vrem/wifianalyzer/c/c/d;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/d;

    const-string v1, "WEP"

    const v2, 0x7f020064

    invoke-direct {v0, v1, v5, v2}, Lcom/vrem/wifianalyzer/c/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/d;->c:Lcom/vrem/wifianalyzer/c/c/d;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/d;

    const-string v1, "WPA"

    const v2, 0x7f020062

    invoke-direct {v0, v1, v6, v2}, Lcom/vrem/wifianalyzer/c/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/d;->d:Lcom/vrem/wifianalyzer/c/c/d;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/d;

    const-string v1, "WPA2"

    const v2, 0x7f020062

    invoke-direct {v0, v1, v7, v2}, Lcom/vrem/wifianalyzer/c/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/d;->e:Lcom/vrem/wifianalyzer/c/c/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vrem/wifianalyzer/c/c/d;

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/d;->a:Lcom/vrem/wifianalyzer/c/c/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/d;->b:Lcom/vrem/wifianalyzer/c/c/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/d;->c:Lcom/vrem/wifianalyzer/c/c/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/d;->d:Lcom/vrem/wifianalyzer/c/c/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/d;->e:Lcom/vrem/wifianalyzer/c/c/d;

    aput-object v1, v0, v7

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/d;->g:[Lcom/vrem/wifianalyzer/c/c/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vrem/wifianalyzer/c/c/d;->f:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/d;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "]["

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    :try_start_0
    invoke-static {v4}, Lcom/vrem/wifianalyzer/c/c/d;->valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/c/d;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/c/d;
    .locals 6

    invoke-static {p0}, Lcom/vrem/wifianalyzer/c/c/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/d;->values()[Lcom/vrem/wifianalyzer/c/c/d;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vrem/wifianalyzer/c/c/d;->a:Lcom/vrem/wifianalyzer/c/c/d;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/c/d;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/c/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/d;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/c/c/d;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/d;->g:[Lcom/vrem/wifianalyzer/c/c/d;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/c/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/c/c/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c/d;->f:I

    return v0
.end method
