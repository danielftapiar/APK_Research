.class Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptorApi24;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;
.source "MediaBrowserServiceCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptorApi24"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;-><init>()V

    return-void
.end method


# virtual methods
.method protected createServiceBinder(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)Landroid/os/Binder;
    .locals 1
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .prologue
    .line 63
    new-instance v0, Landroid/support/v4/media/ServiceBinderAdapterApi24;

    check-cast p1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;

    .end local p1    # "serviceImpl":Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;
    invoke-direct {v0, p1}, Landroid/support/v4/media/ServiceBinderAdapterApi24;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;)V

    return-object v0
.end method
