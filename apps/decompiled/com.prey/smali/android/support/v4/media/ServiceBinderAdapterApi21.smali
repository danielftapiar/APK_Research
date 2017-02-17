.class Landroid/support/v4/media/ServiceBinderAdapterApi21;
.super Landroid/os/Binder;
.source "ServiceBinderAdapterApi21.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field static final DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserService"

.field private static final TRANSACTION_addSubscription:I = 0x3

.field private static final TRANSACTION_connect:I = 0x1

.field private static final TRANSACTION_disconnect:I = 0x2

.field private static final TRANSACTION_removeSubscription:I = 0x4


# instance fields
.field final mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V
    .locals 1
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/v4/media/ServiceBinderAdapterApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .line 49
    const-string v0, "android.service.media.IMediaBrowserService"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/ServiceBinderAdapterApi21;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v4/media/ServiceBinderAdapterApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;)V

    .line 119
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method

.method connect(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v4/media/ServiceBinderAdapterApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;

    invoke-direct {v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;)V

    .line 109
    return-void
.end method

.method disconnect(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v4/media/ServiceBinderAdapterApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;

    invoke-direct {v1, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->disconnect(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;)V

    .line 114
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 60
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 62
    :sswitch_0
    const-string v4, "android.service.media.IMediaBrowserService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :sswitch_1
    const-string v4, "android.service.media.IMediaBrowserService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 75
    .local v1, "arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 74
    invoke-static {v4}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, "arg2":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/ServiceBinderAdapterApi21;->connect(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v1    # "arg1":Landroid/os/Bundle;
    .end local v2    # "arg2":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 80
    .end local v0    # "arg0":Ljava/lang/String;
    .end local v1    # "arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string v4, "android.service.media.IMediaBrowserService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 81
    invoke-static {v4}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "arg0":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/ServiceBinderAdapterApi21;->disconnect(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    .end local v0    # "arg0":Ljava/lang/Object;
    :sswitch_3
    const-string v4, "android.service.media.IMediaBrowserService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 89
    invoke-static {v4}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "arg1":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/ServiceBinderAdapterApi21;->addSubscription(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v0    # "arg0":Ljava/lang/String;
    .end local v1    # "arg1":Ljava/lang/Object;
    :sswitch_4
    const-string v4, "android.service.media.IMediaBrowserService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0    # "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 97
    invoke-static {v4}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .restart local v1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/ServiceBinderAdapterApi21;->removeSubscription(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.method removeSubscription(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v4/media/ServiceBinderAdapterApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksImplApi21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;)V

    .line 124
    return-void
.end method
