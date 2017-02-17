.class final Lcl/santander/santanderCL/famtec/android/gps/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;I)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->k(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Z

    move-result v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v1, v2}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Z)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->e(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0, v2}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;I)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->f(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v2}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->g(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->set_callback(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/c;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method
