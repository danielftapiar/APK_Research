.class final Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Lcom/google/android/maps/GeoPoint;

.field private final b:Lcom/google/android/maps/GeoPoint;

.field private synthetic c:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;


# direct methods
.method public constructor <init>(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->c:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->a:Lcom/google/android/maps/GeoPoint;

    iput-object p3, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->b:Lcom/google/android/maps/GeoPoint;

    return-void
.end method

.method private varargs a([Ljava/lang/Integer;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;
    .locals 9

    const/4 v1, 0x0

    const/4 v7, 0x1

    const-wide v5, 0x412e848000000000L    # 1000000.0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DrivingDirectionsGoogleJSON......"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.googleapis.com/maps/api/directions/json?origin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->a:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->a:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&destination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->b:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->b:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&region=es&language=es&sensor=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_0

    const-string v2, "&mode=walking"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "URL:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "CONECTANDO......"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcl/santander/santanderCL/famtec/android/parserJSON/Route;->parseResponse(Ljava/io/InputStream;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->a([Ljava/lang/Integer;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->c:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->c:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->a(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->c:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;

    invoke-static {v0, p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->a(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->c:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->c:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "Calculando..."

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/a;->c:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleJSON;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method
