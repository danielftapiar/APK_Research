.class public Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Placemark;


# instance fields
.field private a:Lcom/google/android/maps/GeoPoint;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressDestiny()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/maps/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->a:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method public setAddressDestiny(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->e:Ljava/lang/String;

    return-void
.end method

.method public setAddressOrigin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->d:Ljava/lang/String;

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->c:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->b:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/google/android/maps/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->a:Lcom/google/android/maps/GeoPoint;

    return-void
.end method
