.class final Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->notifyUpdateValidResult(DDDJI)V
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

    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$2;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl$2;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-static {v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->b(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->processAction(Ljava/lang/String;)V

    return-void
.end method
