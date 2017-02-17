.class public interface abstract Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;
.super Ljava/lang/Object;
.source "EndpointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/dz/models/EndpointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEndpointStatusChangeListener"
.end annotation


# virtual methods
.method public abstract onEndpointStarted(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
.end method

.method public abstract onEndpointStatusChanged(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
.end method

.method public abstract onEndpointStopped(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
.end method
