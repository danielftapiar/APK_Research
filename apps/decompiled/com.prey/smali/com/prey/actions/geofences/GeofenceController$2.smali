.class Lcom/prey/actions/geofences/GeofenceController$2;
.super Ljava/lang/Object;
.source "GeofenceController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/actions/geofences/GeofenceController;->addZones(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/actions/geofences/GeofenceController;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$infoExtra:Ljava/lang/String;

.field final synthetic val$listToBdAdd:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/prey/actions/geofences/GeofenceController;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/actions/geofences/GeofenceController;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/prey/actions/geofences/GeofenceController$2;->this$0:Lcom/prey/actions/geofences/GeofenceController;

    iput-object p2, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$infoExtra:Ljava/lang/String;

    iput-object p4, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$listToBdAdd:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 178
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/prey/actions/geofences/GeofenceController$2;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 9
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 181
    const-string v2, "*********************connectionAddListener  status"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "********saveGeofence"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceController$2;->this$0:Lcom/prey/actions/geofences/GeofenceController;

    iget-object v3, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$ctx:Landroid/content/Context;

    const-string v4, "start"

    const-string v5, "geofencing"

    const-string v6, "started"

    iget-object v7, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$infoExtra:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prey/actions/geofences/GeofenceController;->sendNotify(Landroid/content/Context;Ljava/util/Map;)V

    .line 185
    new-instance v0, Lcom/prey/actions/geofences/GeofenceDataSource;

    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/prey/actions/geofences/GeofenceDataSource;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$listToBdAdd:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$listToBdAdd:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$listToBdAdd:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prey/actions/geofences/GeofenceDto;

    invoke-virtual {v0, v2}, Lcom/prey/actions/geofences/GeofenceDataSource;->createGeofence(Lcom/prey/actions/geofences/GeofenceDto;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*********************Registering geofence failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceController$2;->this$0:Lcom/prey/actions/geofences/GeofenceController;

    iget-object v3, p0, Lcom/prey/actions/geofences/GeofenceController$2;->val$ctx:Landroid/content/Context;

    const-string v4, "start"

    const-string v5, "geofencing"

    const-string v6, "failed"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prey/actions/geofences/GeofenceController;->sendNotify(Landroid/content/Context;Ljava/util/Map;)V

    .line 193
    :cond_1
    return-void
.end method
