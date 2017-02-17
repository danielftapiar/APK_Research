.class final Lorg/osmdroid/views/MapView$MapViewZoomListener;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapViewZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapView;


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 0

    .prologue
    .line 1578
    iput-object p1, p0, Lorg/osmdroid/views/MapView$MapViewZoomListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/MapView;B)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 1578
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView$MapViewZoomListener;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public final onZoom(Z)V
    .locals 1
    .param p1, "zoomIn"    # Z

    .prologue
    .line 1581
    if-eqz p1, :cond_0

    .line 1582
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewZoomListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/views/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->zoomIn()Z

    .line 1586
    :goto_0
    return-void

    .line 1584
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewZoomListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/views/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->zoomOut()Z

    goto :goto_0
.end method
