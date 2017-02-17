.class public final Lorg/osmdroid/events/ZoomEvent;
.super Ljava/lang/Object;
.source "ZoomEvent.java"


# instance fields
.field protected source:Lorg/osmdroid/views/MapView;

.field protected zoomLevel:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;I)V
    .locals 0
    .param p1, "source"    # Lorg/osmdroid/views/MapView;
    .param p2, "zoomLevel"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/osmdroid/events/ZoomEvent;->source:Lorg/osmdroid/views/MapView;

    .line 16
    iput p2, p0, Lorg/osmdroid/events/ZoomEvent;->zoomLevel:I

    .line 17
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoomEvent [source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/osmdroid/events/ZoomEvent;->source:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/events/ZoomEvent;->zoomLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
