.class final Lcl/santander/santanderCL/famtec/android/gps/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/d;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/d;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->l(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
