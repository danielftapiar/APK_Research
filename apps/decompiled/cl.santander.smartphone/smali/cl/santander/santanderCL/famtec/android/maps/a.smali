.class final Lcl/santander/santanderCL/famtec/android/maps/a;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/app/Dialog;

.field private synthetic b:Lcl/santander/santanderCL/famtec/android/maps/Maps;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/maps/Maps;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->b:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->b:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->a(Lcl/santander/santanderCL/famtec/android/maps/Maps;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->b:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->b(Lcl/santander/santanderCL/famtec/android/maps/Maps;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->b:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/Maps;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->b:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->a(Lcl/santander/santanderCL/famtec/android/maps/Maps;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->b:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->a(Lcl/santander/santanderCL/famtec/android/maps/Maps;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcl/santander/santanderCL/famtec/android/maps/a;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->b:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onPreExecute!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->b:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Searching..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/a;->a:Landroid/app/Dialog;

    return-void
.end method
