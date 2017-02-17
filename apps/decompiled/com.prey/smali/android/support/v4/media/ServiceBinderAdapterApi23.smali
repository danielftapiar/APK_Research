.class Landroid/support/v4/media/ServiceBinderAdapterApi23;
.super Landroid/support/v4/media/ServiceBinderAdapterApi21;
.source "ServiceBinderAdapterApi23.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IMediaBrowserServiceAdapterApi23"

.field private static final TRANSACTION_getMediaItem:I = 0x5


# instance fields
.field final mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V
    .locals 0
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/support/v4/media/ServiceBinderAdapterApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V

    .line 48
    iput-object p1, p0, Landroid/support/v4/media/ServiceBinderAdapterApi23;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .line 49
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 53
    return-object p0
.end method

.method getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 79
    :try_start_0
    const-class v2, Landroid/service/media/MediaBrowserService;

    const-string v3, "KEY_MEDIA_ITEM"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v0, "KEY_MEDIA_ITEM":Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v4/media/ServiceBinderAdapterApi23;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    new-instance v3, Landroid/support/v4/media/ServiceBinderAdapterApi23$1;

    invoke-direct {v3, p0, v0, p2}, Landroid/support/v4/media/ServiceBinderAdapterApi23$1;-><init>(Landroid/support/v4/media/ServiceBinderAdapterApi23;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-interface {v2, p1, v3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;->getMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;)V

    .line 99
    .end local v0    # "KEY_MEDIA_ITEM":Ljava/lang/String;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "IMediaBrowserServiceAdapterApi23"

    const-string v3, "Failed to get KEY_MEDIA_ITEM via reflection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/media/ServiceBinderAdapterApi21;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 61
    :pswitch_0
    const-string v2, "android.service.media.IMediaBrowserService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 69
    .local v1, "arg1":Landroid/os/ResultReceiver;
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/ServiceBinderAdapterApi23;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 70
    const/4 v2, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "arg1":Landroid/os/ResultReceiver;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "arg1":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
