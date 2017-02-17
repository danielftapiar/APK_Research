.class public Lcl/santander/santanderCL/famtec/android/maps/Maps;
.super Ljava/lang/Object;

# interfaces
.implements Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;


# instance fields
.field a:Landroid/widget/ArrayAdapter;

.field b:Landroid/content/Context;

.field c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

.field d:[Lcom/google/android/maps/GeoPoint;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;

.field private m:Landroid/os/Handler;

.field private n:I

.field public overlay:Lcom/google/android/maps/MyLocationOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->f:Ljava/util/List;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->a:Landroid/widget/ArrayAdapter;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->g:[Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->h:[Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->i:[Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->d:[Lcom/google/android/maps/GeoPoint;

    const/4 v0, -0x1

    iput v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->n:I

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->f:Ljava/util/List;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->a:Landroid/widget/ArrayAdapter;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->g:[Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->h:[Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->i:[Ljava/lang/String;

    iput-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->d:[Lcom/google/android/maps/GeoPoint;

    const/4 v0, -0x1

    iput v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->n:I

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->b:Landroid/content/Context;

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/maps/Maps;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/maps/Maps;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcl/santander/santanderCL/famtec/android/maps/Maps;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcl/santander/santanderCL/famtec/android/maps/Maps;)I
    .locals 1

    iget v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->n:I

    return v0
.end method


# virtual methods
.method public addOverlayMapRoute(Lcom/google/android/maps/MapView;)V
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->l:Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->removeOverlayMapRoute(Lcom/google/android/maps/MapView;)V

    :cond_0
    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;

    invoke-direct {v0, p0}, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;-><init>(Lcl/santander/santanderCL/famtec/android/maps/Maps;)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->l:Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->l:Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    return-void
.end method

.method public cancelShowIndicationPoint()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->n:I

    return-void
.end method

.method public centerPoint(Lcom/google/android/maps/MapView;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;IZ)V
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance v0, Lcom/google/android/maps/GeoPoint;

    iget-wide v1, p2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-wide v2, p2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    if-eqz p4, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->invalidate()V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->invalidate()V

    goto :goto_1
.end method

.method public getDistanciasRoute()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getDuracionesRoute()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public getGeoPosition(Ljava/lang/String;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/a;

    invoke-direct {v0, p0}, Lcl/santander/santanderCL/famtec/android/maps/a;-><init>(Lcl/santander/santanderCL/famtec/android/maps/Maps;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/famtec/android/maps/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v1}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public getGeoPositionsRoute()[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    return-object v0
.end method

.method public getIdicacionesPosRoute()[Lcom/google/android/maps/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->d:[Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method public getIndicacionesRoute()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public getListadoDirecciones(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/a;

    invoke-direct {v0, p0}, Lcl/santander/santanderCL/famtec/android/maps/a;-><init>(Lcl/santander/santanderCL/famtec/android/maps/Maps;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/famtec/android/maps/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->f:Ljava/util/List;

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, ""

    move v3, v2

    move-object v4, v0

    :goto_2
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v0

    if-le v3, v0, :cond_2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ADDRESS: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method

.method public getTopLeftBottomRightCorner(Lcom/google/android/maps/MapView;)[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .locals 9

    const/4 v4, 0x2

    const-wide v7, 0x412e848000000000L    # 1000000.0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v4, [Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    invoke-interface {v1, v5, v5}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v4, [Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    new-instance v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v2}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v2}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>()V

    aput-object v2, v1, v6

    aget-object v2, v1, v5

    aget-object v3, v0, v5

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v7

    iput-wide v3, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    aget-object v2, v1, v5

    aget-object v3, v0, v5

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v7

    iput-wide v3, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    aget-object v2, v1, v6

    aget-object v3, v0, v6

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v7

    iput-wide v3, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    aget-object v2, v1, v6

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v3, v7

    iput-wide v3, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    return-object v1
.end method

.method public getTotalDistance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->k:Ljava/lang/String;

    return-object v0
.end method

.method public onDirectionsAvailable(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;I)V
    .locals 12

    const-wide v10, 0x412e848000000000L    # 1000000.0

    const/4 v2, 0x0

    invoke-interface {p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;->getPlacemarks()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;->getGeoPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;->getTotalDistance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->j:Ljava/lang/String;

    invoke-interface {p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;->getDuration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->k:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->g:[Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->h:[Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->i:[Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/GeoPoint;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->d:[Lcom/google/android/maps/GeoPoint;

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    array-length v0, v0

    if-lt v1, v0, :cond_6

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;->getInstructions()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->g:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v1

    :goto_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;->getDistance()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->h:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v1

    :goto_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;->getDuration()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->i:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v1

    :goto_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;->getLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->d:[Lcom/google/android/maps/GeoPoint;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;->getLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    aput-object v0, v5, v1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->g:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;->getInstructions()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->h:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;->getDistance()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v1

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->i:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;->getDuration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v1

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    new-instance v5, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v6, v10

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>(DD)V

    aput-object v5, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public onDirectionsNotAvailable()V
    .locals 0

    return-void
.end method

.method public removeOverlayMapRoute(Lcom/google/android/maps/MapView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->l:Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->l:Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setMapRoute(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;I)V
    .locals 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Creacion de MAPROUTE, Driving directions;"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirectionsFactory;->createDrivingDirections()Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "LLAMADA A DRIVETO de DIRECTIONS"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->b:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->driveTo(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;ILcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;)V

    return-void
.end method

.method public setMapRoute(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;I)V
    .locals 9

    const-wide v7, 0x412e848000000000L    # 1000000.0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Creacion de MAPROUTE, Driving directions;"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirectionsFactory;->createDrivingDirections()Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "LLAMADA A DRIVETO de DIRECTIONS"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->b:Landroid/content/Context;

    new-instance v2, Lcom/google/android/maps/GeoPoint;

    iget-wide v3, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    mul-double/2addr v3, v7

    double-to-int v3, v3

    iget-wide v4, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    mul-double/2addr v4, v7

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    new-instance v3, Lcom/google/android/maps/GeoPoint;

    iget-wide v4, p2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    mul-double/2addr v4, v7

    double-to-int v4, v4

    iget-wide v5, p2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move v4, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->driveTo(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;ILcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;)V

    return-void
.end method

.method public showIndicationPoint(I)V
    .locals 0

    iput p1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->n:I

    return-void
.end method
