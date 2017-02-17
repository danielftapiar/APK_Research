.class public Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;
.source "MediaBrowserServiceCompatApi24.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCallbacksImplApi24"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callbacksObj"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;-><init>(Ljava/lang/Object;)V

    .line 46
    return-void
.end method


# virtual methods
.method bridge synthetic createCallbacks(Ljava/lang/Object;)Landroid/support/v4/media/ServiceCallbacksAdapterApi21;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;->createCallbacks(Ljava/lang/Object;)Landroid/support/v4/media/ServiceCallbacksAdapterApi24;

    move-result-object v0

    return-object v0
.end method

.method createCallbacks(Ljava/lang/Object;)Landroid/support/v4/media/ServiceCallbacksAdapterApi24;
    .locals 1
    .param p1, "callbacksObj"    # Ljava/lang/Object;

    .prologue
    .line 57
    new-instance v0, Landroid/support/v4/media/ServiceCallbacksAdapterApi24;

    invoke-direct {v0, p1}, Landroid/support/v4/media/ServiceCallbacksAdapterApi24;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;->mCallbacks:Landroid/support/v4/media/ServiceCallbacksAdapterApi21;

    check-cast v0, Landroid/support/v4/media/ServiceCallbacksAdapterApi24;

    .line 52
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->parcelListToParceledListSliceObject(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    invoke-virtual {v0, p1, v1, p3}, Landroid/support/v4/media/ServiceCallbacksAdapterApi24;->onLoadChildrenWithOptions(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method
