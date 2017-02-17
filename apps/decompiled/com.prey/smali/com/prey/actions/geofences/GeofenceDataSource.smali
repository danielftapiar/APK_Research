.class public Lcom/prey/actions/geofences/GeofenceDataSource;
.super Ljava/lang/Object;
.source "GeofenceDataSource.java"


# instance fields
.field private dbHelper:Lcom/prey/actions/geofences/GeofenceOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/prey/actions/geofences/GeofenceOpenHelper;

    invoke-direct {v0, p1}, Lcom/prey/actions/geofences/GeofenceOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceDataSource;->dbHelper:Lcom/prey/actions/geofences/GeofenceOpenHelper;

    .line 22
    return-void
.end method


# virtual methods
.method public createGeofence(Lcom/prey/actions/geofences/GeofenceDto;)V
    .locals 4
    .param p1, "geofence"    # Lcom/prey/actions/geofences/GeofenceDto;

    .prologue
    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceDataSource;->dbHelper:Lcom/prey/actions/geofences/GeofenceOpenHelper;

    invoke-virtual {v2, p1}, Lcom/prey/actions/geofences/GeofenceOpenHelper;->insertGeofence(Lcom/prey/actions/geofences/GeofenceDto;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceDataSource;->dbHelper:Lcom/prey/actions/geofences/GeofenceOpenHelper;

    invoke-virtual {v2, p1}, Lcom/prey/actions/geofences/GeofenceOpenHelper;->updateGeofence(Lcom/prey/actions/geofences/GeofenceDto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 30
    :catch_1
    move-exception v1

    .line 31
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error db update:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteAllGeofence()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceDataSource;->dbHelper:Lcom/prey/actions/geofences/GeofenceOpenHelper;

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceOpenHelper;->deleteAllGeofence()V

    .line 50
    return-void
.end method

.method public deleteGeofence(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceDataSource;->dbHelper:Lcom/prey/actions/geofences/GeofenceOpenHelper;

    invoke-virtual {v0, p1}, Lcom/prey/actions/geofences/GeofenceOpenHelper;->deleteGeofence(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public getAllGeofences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/geofences/GeofenceDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceDataSource;->dbHelper:Lcom/prey/actions/geofences/GeofenceOpenHelper;

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceOpenHelper;->getAllGeofences()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGeofences(Ljava/lang/String;)Lcom/prey/actions/geofences/GeofenceDto;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceDataSource;->dbHelper:Lcom/prey/actions/geofences/GeofenceOpenHelper;

    invoke-virtual {v0, p1}, Lcom/prey/actions/geofences/GeofenceOpenHelper;->getGeofence(Ljava/lang/String;)Lcom/prey/actions/geofences/GeofenceDto;

    move-result-object v0

    return-object v0
.end method
