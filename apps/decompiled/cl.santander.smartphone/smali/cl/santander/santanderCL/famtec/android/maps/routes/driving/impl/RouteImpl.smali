.class public Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAddressDestiny(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->e:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAddressOrigin(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGeoPoint(Lcom/google/android/maps/GeoPoint;)V
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPlacemark(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;)V
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAddressDestiny()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->e:Ljava/util/List;

    return-object v0
.end method

.method public getAddressOrigin()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->d:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoPoints()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->b:Ljava/util/List;

    return-object v0
.end method

.method public getPlacemarks()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->c:Ljava/util/List;

    return-object v0
.end method

.method public getTotalDistance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public setGeoPoints(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->b:Ljava/util/List;

    return-void
.end method

.method public setPlacemarks(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->c:Ljava/util/List;

    return-void
.end method

.method public setTotalDistance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->a:Ljava/lang/String;

    return-void
.end method
