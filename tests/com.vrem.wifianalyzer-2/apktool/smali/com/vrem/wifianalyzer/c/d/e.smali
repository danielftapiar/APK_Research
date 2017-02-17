.class Lcom/vrem/wifianalyzer/c/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/c/d/e$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/net/wifi/ScanResult;Lcom/vrem/wifianalyzer/c/a/j;)I
    .locals 2

    :try_start_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/d/e$a;->a:Lcom/vrem/wifianalyzer/c/d/e$a;

    invoke-virtual {p0, p1, v0}, Lcom/vrem/wifianalyzer/c/d/e;->a(Landroid/net/wifi/ScanResult;Lcom/vrem/wifianalyzer/c/d/e$a;)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/vrem/wifianalyzer/c/d/e;->a(Landroid/net/wifi/ScanResult;Lcom/vrem/wifianalyzer/c/a/j;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    goto :goto_0
.end method

.method a(Landroid/net/wifi/ScanResult;Lcom/vrem/wifianalyzer/c/d/e$a;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vrem/wifianalyzer/c/d/e$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method a(Landroid/net/wifi/ScanResult;)Lcom/vrem/wifianalyzer/c/a/j;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/d/e$a;->b:Lcom/vrem/wifianalyzer/c/d/e$a;

    invoke-virtual {p0, p1, v0}, Lcom/vrem/wifianalyzer/c/d/e;->a(Landroid/net/wifi/ScanResult;Lcom/vrem/wifianalyzer/c/d/e$a;)I

    move-result v0

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/a/j;->a(I)Lcom/vrem/wifianalyzer/c/a/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/j;->a:Lcom/vrem/wifianalyzer/c/a/j;

    goto :goto_0
.end method

.method a(Landroid/net/wifi/WifiInfo;)Lcom/vrem/wifianalyzer/c/c/h;
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/c/h;->a:Lcom/vrem/wifianalyzer/c/c/h;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/vrem/wifianalyzer/c/c/h;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vrem/wifianalyzer/c/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/vrem/wifianalyzer/c/c/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vrem/wifianalyzer/c/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method a(Ljava/util/List;Landroid/net/wifi/WifiInfo;Ljava/util/List;)Lcom/vrem/wifianalyzer/c/c/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/d/b;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Lcom/vrem/wifianalyzer/c/c/i;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/d/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/vrem/wifianalyzer/c/d/e;->a(Landroid/net/wifi/WifiInfo;)Lcom/vrem/wifianalyzer/c/c/h;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/vrem/wifianalyzer/c/d/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/vrem/wifianalyzer/c/c/i;

    invoke-direct {v3, v0, v1, v2}, Lcom/vrem/wifianalyzer/c/c/i;-><init>(Ljava/util/List;Lcom/vrem/wifianalyzer/c/c/h;Ljava/util/List;)V

    return-object v3
.end method

.method a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/vrem/wifianalyzer/c/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/net/wifi/ScanResult;Lcom/vrem/wifianalyzer/c/a/j;I)Z
    .locals 2

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/j;->b:Lcom/vrem/wifianalyzer/c/a/j;

    invoke-virtual {v0, p2}, Lcom/vrem/wifianalyzer/c/a/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/j;->b:Lcom/vrem/wifianalyzer/c/a/j;

    invoke-virtual {v1}, Lcom/vrem/wifianalyzer/c/a/j;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/d/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/c/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/d/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/b;->a()Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vrem/wifianalyzer/c/d/e;->a(Landroid/net/wifi/ScanResult;)Lcom/vrem/wifianalyzer/c/a/j;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vrem/wifianalyzer/c/d/e;->a(Landroid/net/wifi/ScanResult;Lcom/vrem/wifianalyzer/c/a/j;)I

    move-result v5

    new-instance v6, Lcom/vrem/wifianalyzer/c/c/k;

    iget v7, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/d/b;->b()I

    move-result v0

    invoke-direct {v6, v7, v5, v4, v0}, Lcom/vrem/wifianalyzer/c/c/k;-><init>(IILcom/vrem/wifianalyzer/c/a/j;I)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/j;

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/vrem/wifianalyzer/c/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/k;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
