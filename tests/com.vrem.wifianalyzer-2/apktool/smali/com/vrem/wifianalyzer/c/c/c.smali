.class public final enum Lcom/vrem/wifianalyzer/c/c/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/c/c$a;,
        Lcom/vrem/wifianalyzer/c/c/c$b;,
        Lcom/vrem/wifianalyzer/c/c/c$d;,
        Lcom/vrem/wifianalyzer/c/c/c$e;,
        Lcom/vrem/wifianalyzer/c/c/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/c/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/c/c/c;

.field public static final enum b:Lcom/vrem/wifianalyzer/c/c/c;

.field public static final enum c:Lcom/vrem/wifianalyzer/c/c/c;

.field private static final synthetic f:[Lcom/vrem/wifianalyzer/c/c/c;


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

.field private final e:Ljava/util/Comparator;
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
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/c;

    const-string v1, "NONE"

    new-instance v2, Lcom/vrem/wifianalyzer/c/c/c$c;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/c/c$c;-><init>()V

    new-instance v3, Lcom/vrem/wifianalyzer/c/c/c$c;

    invoke-direct {v3}, Lcom/vrem/wifianalyzer/c/c/c$c;-><init>()V

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/vrem/wifianalyzer/c/c/c;-><init>(Ljava/lang/String;ILjava/util/Comparator;Ljava/util/Comparator;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/c;->a:Lcom/vrem/wifianalyzer/c/c/c;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/c;

    const-string v1, "SSID"

    new-instance v2, Lcom/vrem/wifianalyzer/c/c/c$e;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/c/c$e;-><init>()V

    new-instance v3, Lcom/vrem/wifianalyzer/c/c/c$d;

    invoke-direct {v3}, Lcom/vrem/wifianalyzer/c/c/c$d;-><init>()V

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/vrem/wifianalyzer/c/c/c;-><init>(Ljava/lang/String;ILjava/util/Comparator;Ljava/util/Comparator;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/c;->b:Lcom/vrem/wifianalyzer/c/c/c;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/c;

    const-string v1, "CHANNEL"

    new-instance v2, Lcom/vrem/wifianalyzer/c/c/c$b;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/c/c$b;-><init>()V

    new-instance v3, Lcom/vrem/wifianalyzer/c/c/c$a;

    invoke-direct {v3}, Lcom/vrem/wifianalyzer/c/c/c$a;-><init>()V

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/vrem/wifianalyzer/c/c/c;-><init>(Ljava/lang/String;ILjava/util/Comparator;Ljava/util/Comparator;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/c;->c:Lcom/vrem/wifianalyzer/c/c/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vrem/wifianalyzer/c/c/c;

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/c;->a:Lcom/vrem/wifianalyzer/c/c/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/c;->b:Lcom/vrem/wifianalyzer/c/c/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vrem/wifianalyzer/c/c/c;->c:Lcom/vrem/wifianalyzer/c/c/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/c;->f:[Lcom/vrem/wifianalyzer/c/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/c/c;->d:Ljava/util/Comparator;

    iput-object p4, p0, Lcom/vrem/wifianalyzer/c/c/c;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static a(I)Lcom/vrem/wifianalyzer/c/c/c;
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/c;->values()[Lcom/vrem/wifianalyzer/c/c/c;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/c/c;->a:Lcom/vrem/wifianalyzer/c/c/c;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/vrem/wifianalyzer/c/c/c;->values()[Lcom/vrem/wifianalyzer/c/c/c;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/c/c;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/c/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/c;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/c/c/c;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/c;->f:[Lcom/vrem/wifianalyzer/c/c/c;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/c/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/c/c/c;

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

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/c;->d:Ljava/util/Comparator;

    return-object v0
.end method

.method b()Ljava/util/Comparator;
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

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/c;->e:Ljava/util/Comparator;

    return-object v0
.end method
