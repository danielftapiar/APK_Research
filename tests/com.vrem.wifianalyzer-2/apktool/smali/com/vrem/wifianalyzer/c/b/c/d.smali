.class public final enum Lcom/vrem/wifianalyzer/c/b/c/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/b/c/d$d;,
        Lcom/vrem/wifianalyzer/c/b/c/d$b;,
        Lcom/vrem/wifianalyzer/c/b/c/d$c;,
        Lcom/vrem/wifianalyzer/c/b/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/c/b/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/c/b/c/d;

.field public static final enum b:Lcom/vrem/wifianalyzer/c/b/c/d;

.field public static final enum c:Lcom/vrem/wifianalyzer/c/b/c/d;

.field private static final synthetic e:[Lcom/vrem/wifianalyzer/c/b/c/d;


# instance fields
.field private final d:Lcom/vrem/wifianalyzer/c/b/c/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/c/d;

    const-string v1, "LEFT"

    new-instance v2, Lcom/vrem/wifianalyzer/c/b/c/d$b;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/b/c/d$b;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/vrem/wifianalyzer/c/b/c/d;-><init>(Ljava/lang/String;ILcom/vrem/wifianalyzer/c/b/c/d$a;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/b/c/d;->a:Lcom/vrem/wifianalyzer/c/b/c/d;

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/c/d;

    const-string v1, "RIGHT"

    new-instance v2, Lcom/vrem/wifianalyzer/c/b/c/d$d;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/b/c/d$d;-><init>()V

    invoke-direct {v0, v1, v4, v2}, Lcom/vrem/wifianalyzer/c/b/c/d;-><init>(Ljava/lang/String;ILcom/vrem/wifianalyzer/c/b/c/d$a;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/b/c/d;->b:Lcom/vrem/wifianalyzer/c/b/c/d;

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/c/d;

    const-string v1, "HIDE"

    new-instance v2, Lcom/vrem/wifianalyzer/c/b/c/d$c;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/c/b/c/d$c;-><init>()V

    invoke-direct {v0, v1, v5, v2}, Lcom/vrem/wifianalyzer/c/b/c/d;-><init>(Ljava/lang/String;ILcom/vrem/wifianalyzer/c/b/c/d$a;)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/b/c/d;->c:Lcom/vrem/wifianalyzer/c/b/c/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vrem/wifianalyzer/c/b/c/d;

    sget-object v1, Lcom/vrem/wifianalyzer/c/b/c/d;->a:Lcom/vrem/wifianalyzer/c/b/c/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vrem/wifianalyzer/c/b/c/d;->b:Lcom/vrem/wifianalyzer/c/b/c/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vrem/wifianalyzer/c/b/c/d;->c:Lcom/vrem/wifianalyzer/c/b/c/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vrem/wifianalyzer/c/b/c/d;->e:[Lcom/vrem/wifianalyzer/c/b/c/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/vrem/wifianalyzer/c/b/c/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vrem/wifianalyzer/c/b/c/d$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vrem/wifianalyzer/c/b/c/d;->d:Lcom/vrem/wifianalyzer/c/b/c/d$a;

    return-void
.end method

.method public static a(ILcom/vrem/wifianalyzer/c/b/c/d;)Lcom/vrem/wifianalyzer/c/b/c/d;
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/vrem/wifianalyzer/c/b/c/d;->values()[Lcom/vrem/wifianalyzer/c/b/c/d;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/vrem/wifianalyzer/c/b/c/d;->values()[Lcom/vrem/wifianalyzer/c/b/c/d;

    move-result-object v0

    aget-object p1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/b/c/d;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/c/b/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/b/c/d;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/c/b/c/d;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/b/c/d;->e:[Lcom/vrem/wifianalyzer/c/b/c/d;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/c/b/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/c/b/c/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/b/c/d;->d:Lcom/vrem/wifianalyzer/c/b/c/d$a;

    invoke-interface {v0, p1}, Lcom/vrem/wifianalyzer/c/b/c/d$a;->a(Lcom/a/a/e;)V

    return-void
.end method
