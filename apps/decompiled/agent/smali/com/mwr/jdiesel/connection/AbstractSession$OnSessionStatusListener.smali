.class public interface abstract Lcom/mwr/jdiesel/connection/AbstractSession$OnSessionStatusListener;
.super Ljava/lang/Object;
.source "AbstractSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/connection/AbstractSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSessionStatusListener"
.end annotation


# virtual methods
.method public abstract onSessionStarted(Lcom/mwr/jdiesel/connection/AbstractSession;)V
.end method

.method public abstract onSessionStopped(Lcom/mwr/jdiesel/connection/AbstractSession;)V
.end method
