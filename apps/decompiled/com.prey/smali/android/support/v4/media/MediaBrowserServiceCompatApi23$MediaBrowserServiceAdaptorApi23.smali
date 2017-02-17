.class Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptorApi23"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;-><init>()V

    return-void
.end method


# virtual methods
.method protected createServiceBinder(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)Landroid/os/Binder;
    .locals 1
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .prologue
    .line 38
    new-instance v0, Landroid/support/v4/media/ServiceBinderAdapterApi23;

    check-cast p1, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .end local p1    # "serviceImpl":Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;
    invoke-direct {v0, p1}, Landroid/support/v4/media/ServiceBinderAdapterApi23;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V

    return-object v0
.end method
