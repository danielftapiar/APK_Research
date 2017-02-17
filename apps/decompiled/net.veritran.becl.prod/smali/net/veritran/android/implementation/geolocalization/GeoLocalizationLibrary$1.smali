.class Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;
.super Ljava/lang/Object;
.source "GeoLocalizationLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/model/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->singleQuery(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

.field final synthetic val$accuracyFinal:I

.field final synthetic val$timeoutFinal:I


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;II)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    .prologue
    .line 104
    iput-object p1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;->this$0:Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    iput p2, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;->val$timeoutFinal:I

    iput p3, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;->val$accuracyFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V
    .locals 3
    .param p1, "result"    # Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    .prologue
    .line 107
    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v0, :cond_1

    .line 108
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;->this$0:Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    iget v1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;->val$timeoutFinal:I

    iget v2, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;->val$accuracyFinal:I

    invoke-virtual {v0, v1, v2}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->singleQueryImplement(II)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    if-ne p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;->this$0:Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    # getter for: Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;
    invoke-static {v0}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->access$000(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;)Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    move-result-object v0

    const-string v1, "001"

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyJobCancelled(Ljava/lang/String;)V

    goto :goto_0
.end method
