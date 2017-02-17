.class public Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCallbacksImplApi21"
.end annotation


# instance fields
.field final mCallbacks:Landroid/support/v4/media/ServiceCallbacksAdapterApi21;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "callbacksObj"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;->createCallbacks(Ljava/lang/Object;)Landroid/support/v4/media/ServiceCallbacksAdapterApi21;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;->mCallbacks:Landroid/support/v4/media/ServiceCallbacksAdapterApi21;

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;->mCallbacks:Landroid/support/v4/media/ServiceCallbacksAdapterApi21;

    invoke-virtual {v0}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method createCallbacks(Ljava/lang/Object;)Landroid/support/v4/media/ServiceCallbacksAdapterApi21;
    .locals 1
    .param p1, "callbacksObj"    # Ljava/lang/Object;

    .prologue
    .line 110
    new-instance v0, Landroid/support/v4/media/ServiceCallbacksAdapterApi21;

    invoke-direct {v0, p1}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;->mCallbacks:Landroid/support/v4/media/ServiceCallbacksAdapterApi21;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21;->onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public onConnectFailed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;->mCallbacks:Landroid/support/v4/media/ServiceCallbacksAdapterApi21;

    invoke-virtual {v0}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21;->onConnectFailed()V

    .line 103
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;->mCallbacks:Landroid/support/v4/media/ServiceCallbacksAdapterApi21;

    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->parcelListToParceledListSliceObject(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21;->onLoadChildren(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-void
.end method
