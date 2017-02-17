.class Landroid/support/v4/media/ServiceBinderAdapterApi23$1;
.super Ljava/lang/Object;
.source "ServiceBinderAdapterApi23.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/ServiceBinderAdapterApi23;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/ServiceBinderAdapterApi23;

.field final synthetic val$KEY_MEDIA_ITEM:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/ServiceBinderAdapterApi23;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/ServiceBinderAdapterApi23;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/v4/media/ServiceBinderAdapterApi23$1;->this$0:Landroid/support/v4/media/ServiceBinderAdapterApi23;

    iput-object p2, p0, Landroid/support/v4/media/ServiceBinderAdapterApi23$1;->val$KEY_MEDIA_ITEM:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/ServiceBinderAdapterApi23$1;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(ILandroid/os/Bundle;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .param p3, "itemParcel"    # Landroid/os/Parcel;

    .prologue
    .line 89
    if-eqz p3, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    sget-object v1, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 92
    invoke-interface {v1, p3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    .line 93
    .local v0, "item":Landroid/media/browse/MediaBrowser$MediaItem;
    iget-object v1, p0, Landroid/support/v4/media/ServiceBinderAdapterApi23$1;->val$KEY_MEDIA_ITEM:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    .line 96
    .end local v0    # "item":Landroid/media/browse/MediaBrowser$MediaItem;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/ServiceBinderAdapterApi23$1;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 97
    return-void
.end method
