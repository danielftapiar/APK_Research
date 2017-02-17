.class final Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->notifyReleaseJob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$4;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$4;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->a(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$4;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-static {v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->a(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->closeMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$4;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->a(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
