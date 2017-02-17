.class Landroid/support/v4/media/ServiceBinderAdapterApi24;
.super Landroid/support/v4/media/ServiceBinderAdapterApi23;
.source "ServiceBinderAdapterApi24.java"


# static fields
.field private static final TRANSACTION_addSubscriptionWithOptions:I = 0x6

.field private static final TRANSACTION_removeSubscriptionWithOptions:I = 0x7


# instance fields
.field final mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;)V
    .locals 0
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v4/media/ServiceBinderAdapterApi23;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V

    .line 45
    iput-object p1, p0, Landroid/support/v4/media/ServiceBinderAdapterApi24;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;

    .line 46
    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/media/ServiceBinderAdapterApi24;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;

    invoke-direct {v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;->addSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;)V

    .line 90
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method connect(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v4/media/ServiceBinderAdapterApi24;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;

    invoke-direct {v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;)V

    .line 85
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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/media/ServiceBinderAdapterApi23;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 58
    :pswitch_0
    const-string v3, "android.service.media.IMediaBrowserService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    .line 63
    .local v1, "arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 62
    invoke-static {v3}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "arg2":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/ServiceBinderAdapterApi24;->addSubscription(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    move v3, v4

    .line 65
    goto :goto_0

    .line 60
    .end local v1    # "arg1":Landroid/os/Bundle;
    .end local v2    # "arg2":Ljava/lang/Object;
    :cond_0
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    move-object v1, v3

    goto :goto_1

    .line 68
    .end local v0    # "arg0":Ljava/lang/String;
    :pswitch_1
    const-string v3, "android.service.media.IMediaBrowserService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_1

    .line 73
    .restart local v1    # "arg1":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 72
    invoke-static {v3}, Landroid/support/v4/media/ServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    .restart local v2    # "arg2":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/ServiceBinderAdapterApi24;->removeSubscription(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    move v3, v4

    .line 75
    goto :goto_0

    .line 70
    .end local v1    # "arg1":Landroid/os/Bundle;
    .end local v2    # "arg2":Ljava/lang/Object;
    :cond_1
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    move-object v1, v3

    goto :goto_2

    .line 56
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method removeSubscription(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/media/ServiceBinderAdapterApi24;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;

    invoke-direct {v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;->removeSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;)V

    .line 95
    return-void
.end method
