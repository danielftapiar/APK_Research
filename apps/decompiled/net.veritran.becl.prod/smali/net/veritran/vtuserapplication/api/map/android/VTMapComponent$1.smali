.class Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent$1;
.super Ljava/lang/Object;
.source "VTMapComponent.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    .prologue
    .line 93
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent$1;->this$0:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 2
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 98
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent$1;->this$0:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->autoZoom()V

    .line 101
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent$1;->this$0:Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    # getter for: Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->access$000(Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 102
    return-void
.end method
