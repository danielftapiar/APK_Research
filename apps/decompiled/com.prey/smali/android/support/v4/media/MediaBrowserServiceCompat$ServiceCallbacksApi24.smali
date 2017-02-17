.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi24;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallbacksApi24"
.end annotation


# instance fields
.field final mCallbacks:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;)V
    .locals 0
    .param p2, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;

    .prologue
    .line 623
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi24;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    .line 624
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;)V

    .line 625
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi24;->mCallbacks:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;

    .line 626
    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
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
    .line 630
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v2, 0x0

    .line 631
    .local v2, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    if-eqz p2, :cond_0

    .line 632
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .restart local v2    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 634
    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 635
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 636
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    .end local v0    # "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .end local v1    # "parcel":Landroid/os/Parcel;
    :cond_0
    if-nez p3, :cond_1

    .line 640
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi24;->mCallbacks:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;

    invoke-interface {v3, p1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;->onLoadChildren(Ljava/lang/String;Ljava/util/List;)V

    .line 644
    :goto_1
    return-void

    .line 642
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi24;->mCallbacks:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;

    invoke-interface {v3, p1, v2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;->onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_1
.end method
