.class public abstract Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;
.super Ljava/lang/Object;


# static fields
.field public static final DRIVING:I = 0x0

.field public static final WALKING:I = 0x1


# instance fields
.field private a:I

.field private b:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public driveTo(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;ILcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startPoint, endPoint or mode arguments can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p4, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->a:I

    iput-object p5, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->b:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;

    invoke-virtual/range {p0 .. p5}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->startDrivingTo(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;ILcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;)V

    return-void
.end method

.method protected onDirectionsAvailable(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;)V
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->b:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "A\u00f1adimos el listener"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->b:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;

    iget v1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->a:I

    invoke-interface {v0, p1, v1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;->onDirectionsAvailable(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;I)V

    :cond_0
    return-void
.end method

.method protected onDirectionsNotAvailable()V
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->b:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;->b:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;

    invoke-interface {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;->onDirectionsNotAvailable()V

    :cond_0
    return-void
.end method

.method protected abstract startDrivingTo(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;ILcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;)V
.end method
