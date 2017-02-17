.class public Lcom/vrem/wifianalyzer/c/d/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/net/wifi/WifiManager;

.field private c:Lcom/vrem/wifianalyzer/c/d/e;

.field private d:Lcom/vrem/wifianalyzer/c/c/i;

.field private e:Lcom/vrem/wifianalyzer/c/d/a;

.field private f:Lcom/vrem/wifianalyzer/c/d/c;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Handler;Lcom/vrem/wifianalyzer/settings/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d/d;->b:Landroid/net/wifi/WifiManager;

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/i;->a:Lcom/vrem/wifianalyzer/c/c/i;

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->d:Lcom/vrem/wifianalyzer/c/c/i;

    new-instance v0, Lcom/vrem/wifianalyzer/c/d/e;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/d/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/d/d;->a(Lcom/vrem/wifianalyzer/c/d/e;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/d/a;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/d/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/d/d;->a(Lcom/vrem/wifianalyzer/c/d/a;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/d/c;

    invoke-direct {v0, p0, p2, p3}, Lcom/vrem/wifianalyzer/c/d/c;-><init>(Lcom/vrem/wifianalyzer/c/d/d;Landroid/os/Handler;Lcom/vrem/wifianalyzer/settings/d;)V

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->f:Lcom/vrem/wifianalyzer/c/d/c;

    return-void
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d/d;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d/d;->b:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d/d;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d/d;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    :cond_1
    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d/d;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/d/d;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/d/d;->e:Lcom/vrem/wifianalyzer/c/d/a;

    invoke-virtual {v3, v2}, Lcom/vrem/wifianalyzer/c/d/a;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/d/d;->c:Lcom/vrem/wifianalyzer/c/d/e;

    iget-object v3, p0, Lcom/vrem/wifianalyzer/c/d/d;->e:Lcom/vrem/wifianalyzer/c/d/a;

    invoke-virtual {v3}, Lcom/vrem/wifianalyzer/c/d/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/vrem/wifianalyzer/c/d/e;->a(Ljava/util/List;Landroid/net/wifi/WifiInfo;Ljava/util/List;)Lcom/vrem/wifianalyzer/c/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->d:Lcom/vrem/wifianalyzer/c/c/i;

    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/c/d/d;->e()V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/d/f;

    iget-object v2, p0, Lcom/vrem/wifianalyzer/c/d/d;->d:Lcom/vrem/wifianalyzer/c/c/i;

    invoke-interface {v0, v2}, Lcom/vrem/wifianalyzer/c/d/f;->a(Lcom/vrem/wifianalyzer/c/c/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/c/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d/d;->e:Lcom/vrem/wifianalyzer/c/d/a;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/c/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d/d;->c:Lcom/vrem/wifianalyzer/c/d/e;

    return-void
.end method

.method public a(Lcom/vrem/wifianalyzer/c/d/f;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/vrem/wifianalyzer/c/c/i;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->d:Lcom/vrem/wifianalyzer/c/c/i;

    return-object v0
.end method

.method public b(Lcom/vrem/wifianalyzer/c/d/f;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->f:Lcom/vrem/wifianalyzer/c/d/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/c;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/d;->f:Lcom/vrem/wifianalyzer/c/d/c;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/c;->b()V

    return-void
.end method
