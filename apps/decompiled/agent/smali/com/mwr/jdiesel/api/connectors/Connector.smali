.class public abstract Lcom/mwr/jdiesel/api/connectors/Connector;
.super Ljava/util/Observable;
.source "Connector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/connectors/Connector$Status;
    }
.end annotation


# static fields
.field public static final CONNECTOR_CONNECTED:Ljava/lang/String; = "connector:connected"

.field public static final CONNECTOR_ENABLED:Ljava/lang/String; = "connector:enabled"

.field public static final CONNECTOR_LOG_MESSAGE:Ljava/lang/String; = "connector:logmessage"

.field public static final CONNECTOR_OPEN_SESSIONS:Ljava/lang/String; = "connector:opensessions"

.field public static final CONNECTOR_SSL_FINGERPRINT:Ljava/lang/String; = "certificate:fingerprint"


# instance fields
.field public volatile enabled:Z

.field private logger:Lcom/mwr/jdiesel/logger/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mwr/jdiesel/logger/Logger",
            "<",
            "Lcom/mwr/jdiesel/api/connectors/Connector;",
            ">;"
        }
    .end annotation
.end field

.field public volatile status:Lcom/mwr/jdiesel/api/connectors/Connector$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Connector;->enabled:Z

    .line 18
    sget-object v0, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UNKNOWN:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Connector;->status:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    .line 20
    new-instance v0, Lcom/mwr/jdiesel/logger/Logger;

    invoke-direct {v0, p0}, Lcom/mwr/jdiesel/logger/Logger;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Connector;->logger:Lcom/mwr/jdiesel/logger/Logger;

    .line 7
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/mwr/jdiesel/logger/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mwr/jdiesel/logger/Logger",
            "<",
            "Lcom/mwr/jdiesel/api/connectors/Connector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Connector;->logger:Lcom/mwr/jdiesel/logger/Logger;

    return-object v0
.end method

.method public declared-synchronized getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;
    .locals 1

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Connector;->status:Lcom/mwr/jdiesel/api/connectors/Connector$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled()Z
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Connector;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V
    .locals 1
    .param p1, "status"    # Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Connector;->status:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-eq v0, p1, :cond_0

    .line 36
    iput-object p1, p0, Lcom/mwr/jdiesel/api/connectors/Connector;->status:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    .line 38
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connector;->setChanged()V

    .line 39
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Connector;->notifyObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Z
.end method
