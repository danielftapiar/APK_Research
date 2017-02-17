.class final Lcl/santander/santanderCL/famtec/android/gps/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/g;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/g;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->e(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/g;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/g;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->i(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
