.class public final enum Lcom/vrem/wifianalyzer/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/b;

.field private static final synthetic h:[Lcom/vrem/wifianalyzer/b;


# instance fields
.field private b:Lcom/vrem/wifianalyzer/settings/d;

.field private c:Lcom/vrem/wifianalyzer/MainActivity;

.field private d:Lcom/vrem/wifianalyzer/c/d/d;

.field private e:Lcom/vrem/wifianalyzer/b/a/g;

.field private f:Lcom/vrem/wifianalyzer/b/a/a;

.field private g:Lcom/vrem/wifianalyzer/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/vrem/wifianalyzer/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vrem/wifianalyzer/b;

    sget-object v1, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/vrem/wifianalyzer/b;->h:[Lcom/vrem/wifianalyzer/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/b;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/b;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/b;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/b;->h:[Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/vrem/wifianalyzer/settings/d;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b;->b:Lcom/vrem/wifianalyzer/settings/d;

    return-object v0
.end method

.method a(Lcom/vrem/wifianalyzer/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/b;->c:Lcom/vrem/wifianalyzer/MainActivity;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/MainActivity;Z)V
    .locals 4

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Lcom/vrem/wifianalyzer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/vrem/wifianalyzer/settings/d;

    invoke-direct {v2, p1}, Lcom/vrem/wifianalyzer/settings/d;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/vrem/wifianalyzer/a;

    invoke-direct {v3, p2}, Lcom/vrem/wifianalyzer/a;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/b;->a(Lcom/vrem/wifianalyzer/MainActivity;)V

    invoke-virtual {p0, v3}, Lcom/vrem/wifianalyzer/b;->a(Lcom/vrem/wifianalyzer/a;)V

    new-instance v3, Lcom/vrem/wifianalyzer/b/a/a;

    invoke-direct {v3, p1}, Lcom/vrem/wifianalyzer/b/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/vrem/wifianalyzer/b;->a(Lcom/vrem/wifianalyzer/b/a/a;)V

    invoke-virtual {p0, v2}, Lcom/vrem/wifianalyzer/b;->a(Lcom/vrem/wifianalyzer/settings/d;)V

    new-instance v3, Lcom/vrem/wifianalyzer/b/a/g;

    invoke-direct {v3}, Lcom/vrem/wifianalyzer/b/a/g;-><init>()V

    invoke-virtual {p0, v3}, Lcom/vrem/wifianalyzer/b;->a(Lcom/vrem/wifianalyzer/b/a/g;)V

    new-instance v3, Lcom/vrem/wifianalyzer/c/d/d;

    invoke-direct {v3, v0, v1, v2}, Lcom/vrem/wifianalyzer/c/d/d;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Handler;Lcom/vrem/wifianalyzer/settings/d;)V

    invoke-virtual {p0, v3}, Lcom/vrem/wifianalyzer/b;->a(Lcom/vrem/wifianalyzer/c/d/d;)V

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/b;->g:Lcom/vrem/wifianalyzer/a;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/b;->f:Lcom/vrem/wifianalyzer/b/a/a;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/b/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/b;->e:Lcom/vrem/wifianalyzer/b/a/g;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/c/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/b;->d:Lcom/vrem/wifianalyzer/c/d/d;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/settings/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/b;->b:Lcom/vrem/wifianalyzer/settings/d;

    return-void
.end method

.method public b()Lcom/vrem/wifianalyzer/b/a/g;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b;->e:Lcom/vrem/wifianalyzer/b/a/g;

    return-object v0
.end method

.method public c()Lcom/vrem/wifianalyzer/c/d/d;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b;->d:Lcom/vrem/wifianalyzer/c/d/d;

    return-object v0
.end method

.method public d()Lcom/vrem/wifianalyzer/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b;->f:Lcom/vrem/wifianalyzer/b/a/a;

    return-object v0
.end method

.method public e()Lcom/vrem/wifianalyzer/MainActivity;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b;->c:Lcom/vrem/wifianalyzer/MainActivity;

    return-object v0
.end method

.method public f()Lcom/vrem/wifianalyzer/a;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b;->g:Lcom/vrem/wifianalyzer/a;

    return-object v0
.end method
