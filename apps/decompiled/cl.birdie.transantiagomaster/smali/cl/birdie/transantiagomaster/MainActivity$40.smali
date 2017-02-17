.class final Lcl/birdie/transantiagomaster/MainActivity$40;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->setCenter(Lcom/google/android/maps/GeoPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$myLocation:Lcom/google/android/maps/GeoPoint;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcom/google/android/maps/GeoPoint;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$40;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$40;->val$myLocation:Lcom/google/android/maps/GeoPoint;

    .line 3233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 3237
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$40;->val$myLocation:Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, v1}, Lcl/birdie/toolkit/LatLng;-><init>(Lcom/google/android/maps/GeoPoint;)V

    .line 3238
    .local v0, "loc":Lcl/birdie/toolkit/LatLng;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCenter: ui thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3239
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$40;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v1

    iget-object v1, v1, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->centrarEn(Lcl/birdie/toolkit/LatLng;)V

    .line 3240
    return-void
.end method
