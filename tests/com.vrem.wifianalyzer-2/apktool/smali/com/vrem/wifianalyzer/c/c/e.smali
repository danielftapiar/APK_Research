.class public final enum Lcom/vrem/wifianalyzer/c/c/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/c/e$a;,
        Lcom/vrem/wifianalyzer/c/c/e$b;,
        Lcom/vrem/wifianalyzer/c/c/e$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/c/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/c/c/e;

.field public static final enum b:Lcom/vrem/wifianalyzer/c/c/e;

.field public static final enum c:Lcom/vrem/wifianalyzer/c/c/e;

.field private static final synthetic e:[Lcom/vrem/wifianalyzer/c/c/e;


# instance fields
.field private final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/e;

    const-string v1, "STRENGTH"

    new-instance v2, Lcom/vrem/wifianalyzer/c/c/e$c;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/c/e$c;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/vrem/wifianalyzer/c/c/e;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/e;->a:Lcom/vrem/wifianalyzer/c/c/e;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/e;

    const-string v1, "SSID"

    new-instance v2, Lcom/vrem/wifianalyzer/c/c/e$b;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/c/e$b;-><init>()V

    invoke-direct {v0, v1, v4, v2}, Lcom/vrem/wifianalyzer/c/c/e;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/e;->b:Lcom/vrem/wifianalyzer/c/c/e;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/e;

    const-string v1, "CHANNEL"

    new-instance v2, Lcom/vrem/wifianalyzer/c/c/e$a;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/c/e$a;-><init>()V

    invoke-direct {v0, v1, v5, v2}, Lcom/vrem/wifianalyzer/c/c/e;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/e;->c:Lcom/vrem/wifianalyzer/c/c/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vrem/wifianalyzer/c/c/e;

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/e;->a:Lcom/vrem/wifianalyzer/c/c/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/e;->b:Lcom/vrem/wifianalyzer/c/c/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/e;->c:Lcom/vrem/wifianalyzer/c/c/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/e;->e:[Lcom/vrem/wifianalyzer/c/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/c/e;->d:Ljava/util/Comparator;

    return-void
.end method

.method public static a(I)Lcom/vrem/wifianalyzer/c/c/e;
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/e;->values()[Lcom/vrem/wifianalyzer/c/c/e;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/c/e;->a:Lcom/vrem/wifianalyzer/c/c/e;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/e;->values()[Lcom/vrem/wifianalyzer/c/c/e;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/c/e;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/c/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/e;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/c/c/e;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/e;->e:[Lcom/vrem/wifianalyzer/c/c/e;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/c/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/c/c/e;

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/e;->d:Ljava/util/Comparator;

    return-object v0
.end method
