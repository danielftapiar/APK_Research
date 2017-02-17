.class Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$3;
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
    .line 239
    iput-object p1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$3;->this$0:Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 243
    return-void
.end method
