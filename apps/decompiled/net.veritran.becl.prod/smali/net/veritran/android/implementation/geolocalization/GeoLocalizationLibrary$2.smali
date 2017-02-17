.class Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$2;
.super Ljava/lang/Object;
.source "GeoLocalizationLibrary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->showSettingsAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    .prologue
    .line 231
    iput-object p1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$2;->this$0:Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$2;->this$0:Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    # getter for: Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->context:Landroid/content/Context;
    invoke-static {v1}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->access$100(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method
