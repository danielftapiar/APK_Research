.class public Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;
.super Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;-><init>()V

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;)V
    .locals 0

    invoke-virtual {p0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->onDirectionsNotAvailable()V

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->onDirectionsAvailable(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;)V

    return-void
.end method


# virtual methods
.method protected startDrivingTo(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;ILcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DrivingDirectionsGoogleJSON startDrivingTo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->b:Landroid/content/Context;

    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;

    invoke-direct {v0, p0, p2, p3}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;-><init>(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
