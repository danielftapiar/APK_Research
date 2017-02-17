.class public Lcom/mwr/jdiesel/api/connectors/Server;
.super Lcom/mwr/jdiesel/api/connectors/Connector;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;,
        Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;
    }
.end annotation


# static fields
.field public static final SERVER_KEYSTORE_PASSWORD:Ljava/lang/String; = "server:ks:password"

.field public static final SERVER_KEYSTORE_PATH:Ljava/lang/String; = "server:ks:path"

.field public static final SERVER_KEY_PASSWORD:Ljava/lang/String; = "server:key:password"

.field public static final SERVER_PASSWORD:Ljava/lang/String; = "server:password"

.field public static final SERVER_PORT:Ljava/lang/String; = "server:port"

.field public static final SERVER_SSL:Ljava/lang/String; = "server:ssl"


# instance fields
.field private key_managers:[Ljavax/net/ssl/KeyManager;

.field private key_password:[C

.field private keystore_password:[C

.field private keystore_path:Ljava/lang/String;

.field private on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

.field private on_detailed_status_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;

.field private password:Ljava/lang/String;

.field private port:I

.field private ssl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/connectors/Connector;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->key_managers:[Ljavax/net/ssl/KeyManager;

    .line 39
    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->key_password:[C

    .line 40
    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->keystore_path:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->keystore_password:[C

    .line 42
    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    .line 43
    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->password:Ljava/lang/String;

    .line 44
    const/16 v0, 0x7ab7

    iput v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->port:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->ssl:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v2, p0, Lcom/mwr/jdiesel/api/connectors/Server;->key_managers:[Ljavax/net/ssl/KeyManager;

    if-nez v2, :cond_0

    .line 57
    const-string v2, "BKS"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 58
    .local v1, "key_store":Ljava/security/KeyStore;
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/mwr/jdiesel/api/connectors/Server;->keystore_path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mwr/jdiesel/api/connectors/Server;->keystore_password:[C

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 60
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 61
    .local v0, "key_manager_factory":Ljavax/net/ssl/KeyManagerFactory;
    iget-object v2, p0, Lcom/mwr/jdiesel/api/connectors/Server;->key_password:[C

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 63
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/connectors/Server;->key_managers:[Ljavax/net/ssl/KeyManager;

    .line 66
    .end local v0    # "key_manager_factory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v1    # "key_store":Ljava/security/KeyStore;
    :cond_0
    iget-object v2, p0, Lcom/mwr/jdiesel/api/connectors/Server;->key_managers:[Ljavax/net/ssl/KeyManager;

    return-object v2
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->port:I

    return v0
.end method

.method public hasPassword()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->password:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSSL()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->ssl:Z

    return v0
.end method

.method public resetKeyManagerFactory()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->key_managers:[Ljavax/net/ssl/KeyManager;

    .line 87
    return-void
.end method

.method public setDetailedStatus(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "status"    # Landroid/os/Bundle;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_detailed_status_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_detailed_status_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;

    invoke-interface {v0, p1}, Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;->onDetailedStatus(Landroid/os/Bundle;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setKeyPassword([C)V
    .locals 0
    .param p1, "password"    # [C

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mwr/jdiesel/api/connectors/Server;->key_password:[C

    .line 96
    return-void
.end method

.method public setKeyStorePassword([C)V
    .locals 0
    .param p1, "password"    # [C

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mwr/jdiesel/api/connectors/Server;->keystore_password:[C

    .line 100
    return-void
.end method

.method public setKeyStorePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mwr/jdiesel/api/connectors/Server;->keystore_path:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setOnChangeListener(Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    .line 108
    return-void
.end method

.method public setOnDetailedStatusListener(Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_detailed_status_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;

    .line 112
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mwr/jdiesel/api/connectors/Server;->password:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    invoke-interface {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;->onChange(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/mwr/jdiesel/api/connectors/Server;->port:I

    .line 124
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    invoke-interface {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;->onChange(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setSSL(Z)V
    .locals 1
    .param p1, "ssl"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/mwr/jdiesel/api/connectors/Server;->ssl:Z

    .line 131
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Server;->on_change_listener:Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;

    invoke-interface {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;->onChange(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 133
    :cond_0
    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Server;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Server;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
