.class public Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirectionsFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDrivingDirections()Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;
    .locals 1

    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;

    invoke-direct {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;-><init>()V

    return-object v0
.end method
