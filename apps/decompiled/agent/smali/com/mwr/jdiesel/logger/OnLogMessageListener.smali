.class public interface abstract Lcom/mwr/jdiesel/logger/OnLogMessageListener;
.super Ljava/lang/Object;
.source "OnLogMessageListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLogMessage(Lcom/mwr/jdiesel/logger/Logger;Lcom/mwr/jdiesel/logger/LogMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mwr/jdiesel/logger/Logger",
            "<TT;>;",
            "Lcom/mwr/jdiesel/logger/LogMessage;",
            ")V"
        }
    .end annotation
.end method
