.class public abstract Lcom/mwr/jdiesel/connection/AbstractSessionCollection;
.super Ljava/lang/Object;
.source "AbstractSessionCollection.java"

# interfaces
.implements Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;


# instance fields
.field private sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mwr/jdiesel/connection/AbstractSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->sessions:Ljava/util/HashMap;

    .line 8
    return-void
.end method


# virtual methods
.method public all()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/mwr/jdiesel/connection/AbstractSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public any()Z
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract create()Lcom/mwr/jdiesel/connection/AbstractSession;
.end method

.method public get(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 1
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/connection/AbstractSession;

    return-object v0
.end method

.method public stop(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 3
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/connection/AbstractSession;

    .line 38
    .local v1, "session":Lcom/mwr/jdiesel/connection/AbstractSession;
    if-eqz v1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :try_start_0
    invoke-virtual {v1}, Lcom/mwr/jdiesel/connection/AbstractSession;->stopSession()V

    .line 43
    invoke-virtual {v1}, Lcom/mwr/jdiesel/connection/AbstractSession;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAll()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v3, p0, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->sessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 56
    .local v0, "keys":[Ljava/lang/String;
    array-length v3, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    aget-object v1, v0, v2

    .line 57
    .local v1, "session_id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->stop(Ljava/lang/String;)Lcom/mwr/jdiesel/connection/AbstractSession;

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected storeSession(Lcom/mwr/jdiesel/connection/AbstractSession;)Lcom/mwr/jdiesel/connection/AbstractSession;
    .locals 2
    .param p1, "session"    # Lcom/mwr/jdiesel/connection/AbstractSession;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mwr/jdiesel/connection/AbstractSessionCollection;->sessions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/connection/AbstractSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p1, p0}, Lcom/mwr/jdiesel/connection/AbstractSession;->addOnSessionStatusListener(Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;)V

    .line 26
    invoke-virtual {p1}, Lcom/mwr/jdiesel/connection/AbstractSession;->start()V

    .line 28
    return-object p1
.end method
