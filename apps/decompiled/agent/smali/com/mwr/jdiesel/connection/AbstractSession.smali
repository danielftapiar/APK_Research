.class public abstract Lcom/mwr/jdiesel/connection/AbstractSession;
.super Ljava/lang/Thread;
.source "AbstractSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;
    }
.end annotation


# instance fields
.field private messages:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message;",
            ">;"
        }
    .end annotation
.end field

.field private on_session_status_listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public volatile running:Z

.field private session_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->messages:Ljava/util/concurrent/BlockingQueue;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->session_id:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->running:Z

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->on_session_status_listeners:Ljava/util/Set;

    .line 30
    invoke-direct {p0}, Lcom/mwr/jdiesel/connection/AbstractSession;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->session_id:Ljava/lang/String;

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->messages:Ljava/util/concurrent/BlockingQueue;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->session_id:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->running:Z

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->on_session_status_listeners:Ljava/util/Set;

    .line 34
    iput-object p1, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->session_id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private generateSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x82

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnSessionStatusListener(Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->on_session_status_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public deliverMessage(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 1
    .param p1, "message"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->messages:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->session_id:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handleMessage(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mwr/jdiesel/api/InvalidMessageException;
        }
    .end annotation
.end method

.method public removeOnSessionStatusListener(Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->on_session_status_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 61
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->running:Z

    .line 63
    iget-object v4, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->on_session_status_listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->running:Z

    if-nez v4, :cond_2

    .line 85
    iget-object v4, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->on_session_status_listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 87
    return-void

    .line 63
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;

    .line 64
    .local v1, "l":Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;
    invoke-interface {v1, p0}, Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;->onSessionStarted(Lcom/mwr/jdiesel/connection/AbstractSession;)V

    goto :goto_0

    .line 67
    .end local v1    # "l":Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;
    :cond_2
    const/4 v2, 0x0

    .line 70
    .local v2, "message":Lcom/mwr/jdiesel/api/Protobuf$Message;
    :try_start_0
    iget-object v4, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->messages:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :goto_3
    if-eqz v2, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/connection/AbstractSession;->handleMessage(Lcom/mwr/jdiesel/api/Protobuf$Message;)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v3

    .line 78
    .local v3, "response":Lcom/mwr/jdiesel/api/Protobuf$Message;
    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {p0, v3}, Lcom/mwr/jdiesel/connection/AbstractSession;->send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    :try_end_1
    .catch Lcom/mwr/jdiesel/api/InvalidMessageException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 81
    .end local v3    # "response":Lcom/mwr/jdiesel/api/Protobuf$Message;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 85
    .end local v2    # "message":Lcom/mwr/jdiesel/api/Protobuf$Message;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;

    .line 86
    .restart local v1    # "l":Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;
    invoke-interface {v1, p0}, Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;->onSessionStopped(Lcom/mwr/jdiesel/connection/AbstractSession;)V

    goto :goto_2

    .line 72
    .end local v1    # "l":Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;
    .restart local v2    # "message":Lcom/mwr/jdiesel/api/Protobuf$Message;
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public abstract send(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
.end method

.method public stopSession()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/connection/AbstractSession;->running:Z

    .line 94
    invoke-virtual {p0}, Lcom/mwr/jdiesel/connection/AbstractSession;->interrupt()V

    .line 95
    return-void
.end method
