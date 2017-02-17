.class final Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->notifyViewUpdate(I)V
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

    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$1;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v0

    const-string v1, ""

    const-string v3, "appPleaseWait"

    invoke-interface {v0, v1, v3}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v0

    const-string v1, ""

    const-string v2, "appGettingLocation"

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$1;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->a(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$1;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-static {v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->a(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;)Ljava/lang/String;

    move-result-object v1

    move v5, v4

    move v6, v4

    invoke-interface/range {v0 .. v6}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
