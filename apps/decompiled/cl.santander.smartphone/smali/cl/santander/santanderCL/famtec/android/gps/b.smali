.class final Lcl/santander/santanderCL/famtec/android/gps/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/gps/b;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/b;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->j(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/b;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->a(Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;Z)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/gps/b;->a:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
