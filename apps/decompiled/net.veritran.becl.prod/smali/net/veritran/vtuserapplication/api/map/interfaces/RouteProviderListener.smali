.class public interface abstract Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;
.super Ljava/lang/Object;
.source "RouteProviderListener.java"


# virtual methods
.method public abstract onEmptyRoute()V
.end method

.method public abstract onRouteDownloaded(Ljava/util/List;Lnet/veritran/vtuserapplication/api/map/VTRoute;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/GoogleRoute;",
            ">;",
            "Lnet/veritran/vtuserapplication/api/map/VTRoute;",
            ")V"
        }
    .end annotation
.end method
