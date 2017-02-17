.class public Lcom/mwr/jdiesel/api/connectors/ServerSocketFactory;
.super Ljava/lang/Object;
.source "ServerSocketFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSSLSocket(Lcom/mwr/jdiesel/api/connectors/Server;)Ljavax/net/ssl/SSLServerSocket;
    .locals 5
    .param p1, "server"    # Lcom/mwr/jdiesel/api/connectors/Server;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 27
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Server;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 29
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Server;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 31
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "no such algorithm TLS"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSocket(Lcom/mwr/jdiesel/api/connectors/Server;)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "server"    # Lcom/mwr/jdiesel/api/connectors/Server;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Server;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/connectors/ServerSocketFactory;->createSSLSocket(Lcom/mwr/jdiesel/api/connectors/Server;)Ljavax/net/ssl/SSLServerSocket;

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Server;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    goto :goto_0
.end method
