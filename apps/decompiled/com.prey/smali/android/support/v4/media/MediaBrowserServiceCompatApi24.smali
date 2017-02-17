.class Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi23;
.source "MediaBrowserServiceCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptorApi24;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksImplApi24;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCallbacksApi24;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceImplApi24;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23;-><init>()V

    .line 61
    return-void
.end method

.method public static createService()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptorApi24;

    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptorApi24;-><init>()V

    return-object v0
.end method
