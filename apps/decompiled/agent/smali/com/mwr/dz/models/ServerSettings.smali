.class public Lcom/mwr/dz/models/ServerSettings;
.super Ljava/lang/Object;
.source "ServerSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private server:Lcom/mwr/jdiesel/api/connectors/Server;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKeyPassword()[C
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server:key:password"

    const-string v2, "drozer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method private getKeyStorePassword()[C
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server:ks:password"

    const-string v2, "drozer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method private getKeyStorePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server:ks:path"

    const-string v2, "/data/data/com.mwr.dz/files/drozer.bks"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server:password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPort()I
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server:port"

    const-string v2, "31415"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getSettings()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private isSSL()Z
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server:ssl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public load(Lcom/mwr/jdiesel/api/connectors/Server;)V
    .locals 1
    .param p1, "server"    # Lcom/mwr/jdiesel/api/connectors/Server;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 44
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mwr/jdiesel/api/connectors/Server;->setPort(I)V

    .line 45
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mwr/jdiesel/api/connectors/Server;->setPassword(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->isSSL()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mwr/jdiesel/api/connectors/Server;->setSSL(Z)V

    .line 48
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->isSSL()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mwr/jdiesel/api/connectors/Server;->setSSL(Z)V

    .line 50
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyStorePath(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyStorePassword()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyStorePassword([C)V

    .line 52
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyPassword()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyPassword([C)V

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Server;->resetKeyManagerFactory()V

    .line 57
    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 58
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "server:port"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setPort(I)V

    .line 64
    :cond_0
    const-string v0, "server:password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setPassword(Ljava/lang/String;)V

    .line 67
    :cond_1
    const-string v0, "server:ssl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->isSSL()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setSSL(Z)V

    .line 69
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyStorePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyStorePath(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyStorePassword()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyStorePassword([C)V

    .line 71
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyPassword()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyPassword([C)V

    .line 74
    :cond_2
    const-string v0, "server:ks:path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyStorePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyStorePath(Ljava/lang/String;)V

    .line 76
    :cond_3
    const-string v0, "server:ks:password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyStorePassword()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyStorePassword([C)V

    .line 78
    :cond_4
    const-string v0, "server:key:password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    iget-object v0, p0, Lcom/mwr/dz/models/ServerSettings;->server:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getKeyPassword()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setKeyPassword([C)V

    .line 80
    :cond_5
    return-void
.end method

.method public save(Lcom/mwr/jdiesel/api/connectors/Server;)Z
    .locals 3
    .param p1, "server"    # Lcom/mwr/jdiesel/api/connectors/Server;

    .prologue
    .line 83
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "server:port"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v1, "server:port"

    invoke-direct {p0}, Lcom/mwr/dz/models/ServerSettings;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
