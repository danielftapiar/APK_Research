.class final Lorg/mapsforge/android/maps/MapZoomControls$ZoomControlsHideHandler;
.super Landroid/os/Handler;
.source "MapZoomControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/android/maps/MapZoomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomControlsHideHandler"
.end annotation


# instance fields
.field private final zoomControls:Landroid/widget/ZoomControls;


# direct methods
.method constructor <init>(Landroid/widget/ZoomControls;)V
    .locals 0
    .param p1, "zoomControls"    # Landroid/widget/ZoomControls;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/mapsforge/android/maps/MapZoomControls$ZoomControlsHideHandler;->zoomControls:Landroid/widget/ZoomControls;

    .line 39
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapZoomControls$ZoomControlsHideHandler;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hide()V

    .line 44
    return-void
.end method
