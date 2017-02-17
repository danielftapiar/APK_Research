.class public Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;
.super Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;


# instance fields
.field a:Z

.field b:Landroid/app/ProgressDialog;

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->a:Z

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;)V
    .locals 0

    invoke-virtual {p0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->onDirectionsNotAvailable()V

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->onDirectionsAvailable(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;)V

    return-void
.end method


# virtual methods
.method protected startDrivingTo(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;ILcl/santander/santanderCL/famtec/android/maps/routes/driving/DrivingDirections$IDirectionsListener;)V
    .locals 4

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->c:Landroid/content/Context;

    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;

    invoke-direct {v0, p0, p2, p3}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;-><init>(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
