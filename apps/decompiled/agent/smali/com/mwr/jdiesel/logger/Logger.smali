.class public Lcom/mwr/jdiesel/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private log_messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/logger/LogMessage;",
            ">;"
        }
    .end annotation
.end field

.field private on_log_message_listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mwr/jdiesel/logger/OnLogMessageListener",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private owner:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/mwr/jdiesel/logger/Logger;, "Lcom/mwr/jdiesel/logger/Logger<TT;>;"
    .local p1, "owner":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/logger/Logger;->log_messages:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mwr/jdiesel/logger/Logger;->on_log_message_listeners:Ljava/util/Set;

    .line 15
    iput-object p1, p0, Lcom/mwr/jdiesel/logger/Logger;->owner:Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public addOnLogMessageListener(Lcom/mwr/jdiesel/logger/OnLogMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mwr/jdiesel/logger/OnLogMessageListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/mwr/jdiesel/logger/Logger;, "Lcom/mwr/jdiesel/logger/Logger<TT;>;"
    .local p1, "listener":Lcom/mwr/jdiesel/logger/OnLogMessageListener;, "Lcom/mwr/jdiesel/logger/OnLogMessageListener<TT;>;"
    iget-object v0, p0, Lcom/mwr/jdiesel/logger/Logger;->on_log_message_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public getLogMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/logger/LogMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/mwr/jdiesel/logger/Logger;, "Lcom/mwr/jdiesel/logger/Logger<TT;>;"
    iget-object v0, p0, Lcom/mwr/jdiesel/logger/Logger;->log_messages:Ljava/util/List;

    return-object v0
.end method

.method public getOwner()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/mwr/jdiesel/logger/Logger;, "Lcom/mwr/jdiesel/logger/Logger<TT;>;"
    iget-object v0, p0, Lcom/mwr/jdiesel/logger/Logger;->owner:Ljava/lang/Object;

    return-object v0
.end method

.method public log(ILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    .local p0, "this":Lcom/mwr/jdiesel/logger/Logger;, "Lcom/mwr/jdiesel/logger/Logger<TT;>;"
    new-instance v0, Lcom/mwr/jdiesel/logger/LogMessage;

    invoke-direct {v0, p1, p2}, Lcom/mwr/jdiesel/logger/LogMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/logger/Logger;->log(Lcom/mwr/jdiesel/logger/LogMessage;)V

    .line 32
    return-void
.end method

.method public log(Lcom/mwr/jdiesel/logger/LogMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/mwr/jdiesel/logger/LogMessage;

    .prologue
    .line 35
    .local p0, "this":Lcom/mwr/jdiesel/logger/Logger;, "Lcom/mwr/jdiesel/logger/Logger<TT;>;"
    iget-object v1, p0, Lcom/mwr/jdiesel/logger/Logger;->log_messages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lcom/mwr/jdiesel/logger/Logger;->on_log_message_listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    return-void

    .line 37
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/logger/OnLogMessageListener;

    .line 38
    .local v0, "listener":Lcom/mwr/jdiesel/logger/OnLogMessageListener;, "Lcom/mwr/jdiesel/logger/OnLogMessageListener<TT;>;"
    invoke-interface {v0, p0, p1}, Lcom/mwr/jdiesel/logger/OnLogMessageListener;->onLogMessage(Lcom/mwr/jdiesel/logger/Logger;Lcom/mwr/jdiesel/logger/LogMessage;)V

    goto :goto_0
.end method

.method public removeOnLogMessageListener(Lcom/mwr/jdiesel/logger/OnLogMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mwr/jdiesel/logger/OnLogMessageListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/mwr/jdiesel/logger/Logger;, "Lcom/mwr/jdiesel/logger/Logger<TT;>;"
    .local p1, "listener":Lcom/mwr/jdiesel/logger/OnLogMessageListener;, "Lcom/mwr/jdiesel/logger/OnLogMessageListener<TT;>;"
    iget-object v0, p0, Lcom/mwr/jdiesel/logger/Logger;->on_log_message_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method
