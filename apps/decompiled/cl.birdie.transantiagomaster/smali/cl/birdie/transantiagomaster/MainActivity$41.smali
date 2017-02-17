.class final Lcl/birdie/transantiagomaster/MainActivity$41;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->setCenterLatLng(Lcl/birdie/toolkit/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$myLocation:Lcl/birdie/toolkit/LatLng;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/toolkit/LatLng;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$41;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$41;->val$myLocation:Lcl/birdie/toolkit/LatLng;

    .line 3259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 3263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCenterLatLng: ui thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$41;->val$myLocation:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3264
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$41;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$41;->val$myLocation:Lcl/birdie/toolkit/LatLng;

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/ITSMMapView;->centrarEn(Lcl/birdie/toolkit/LatLng;)V

    .line 3265
    return-void
.end method
